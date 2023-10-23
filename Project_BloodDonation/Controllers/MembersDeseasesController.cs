using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Hosting;
using Project_BloodDonation.Data;
using Project_BloodDonation.Models;

namespace Project_BloodDonation.Controllers
{
    public class MembersDeseasesController : Controller
    {
      private readonly ApplicationDbContext _context;
      private readonly IWebHostEnvironment _hostEnvironment;

      public MembersDeseasesController(ApplicationDbContext context, IWebHostEnvironment hostEnvironment)
        {
            _context = context;
         this._hostEnvironment = hostEnvironment;
      }
      [Authorize]
      public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.MembersDeseases.Include(m => m.Disease).Include(m => m.Member);
            return View(await applicationDbContext.ToListAsync());
        }
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.MembersDeseases == null)
            {
                return NotFound();
            }
            var membersDesease = await _context.MembersDeseases
                .Include(m => m.Disease)
                .Include(m => m.Member)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (membersDesease == null)
            {
                return NotFound();
            }

            return View(membersDesease);
        }
      // GET: MembersDeseases/Create
      [Authorize]
      public IActionResult Create()
        {
            ViewData["DeseaseId"] = new SelectList(_context.Diseases, "Id", "Name");
            ViewData["MemberId"] = new SelectList(_context.Members, "Id", "Name");
            return View();
        }
        [HttpPost]
      [Authorize]
      [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(MembersDesease membersDesease,List< IFormFile> img, List<int> did)
        {
         if (ModelState.IsValid)
         {
            membersDesease.MemberId = _context.Members.Where(C => C.Email.ToLower().Equals(User.Identity.Name.ToLower())).Select(C => C.Id).FirstOrDefault();
            for (int i = 0; i < did.Count; i++)
            {
               membersDesease.DeseaseId = did[i];
               _context.Add(membersDesease);
             
            }
            await _context.SaveChangesAsync();
            foreach (var item in img)
            {
               string wwwRootPath = _hostEnvironment.WebRootPath;
               string fileName = Path.GetFileNameWithoutExtension(item.FileName);
               string extension = Path.GetExtension(item.FileName);
               string reportPath = fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
               string path = Path.Combine(wwwRootPath + "/Diseases Reports files/", fileName);
               //if (extension.ToLower() == ".docx" || extension.ToLower() == ".pdf" || extension.ToLower() == ".xls" || extension.ToLower() == ".jpg" || extension.ToLower() == ".jpeg")
               //{
               using (var fileStream = new FileStream(path, FileMode.Create))
               {
                  await item.CopyToAsync(fileStream);
               }
               //}

               for (int i = 0; i < did.Count; i++)
               {
                  MemberDeseaseReports reports = new MemberDeseaseReports
                  {
                     ReportsPath = reportPath,
                     //ReportsName = membersDesease.Disease.Name,
                     MemberDeseaseId = did[i],
                     StartingDate = DateTime.Now
                  };
                  _context.MemberDeseaseReports.Add(reports);
               }
            }                    
            if (await _context.SaveChangesAsync() > 0)
            {
               return RedirectToAction(nameof(Index));
            }

            }
            ViewData["DeseaseId"] = new SelectList(_context.Diseases, "Id", "Name", membersDesease.DeseaseId); 
            ViewData["MemberId"] = new SelectList(_context.Members, "Id", "Name", membersDesease.MemberId);
            return View(membersDesease);
        }
      // GET: MembersDeseases/Edit/5
      [Authorize]
      public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.MembersDeseases == null)
            {
                return NotFound();
            }

            var membersDesease = await _context.MembersDeseases.FindAsync(id);
            if (membersDesease == null)
            {
                return NotFound();
            }
            ViewData["DeseaseId"] = new SelectList(_context.Diseases, "Id", "Id", membersDesease.DeseaseId);
            ViewData["MemberId"] = new SelectList(_context.Members, "Id", "Id", membersDesease.MemberId);
            return View(membersDesease);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
      [Authorize]
      public async Task<IActionResult> Edit(int id,MembersDesease membersDesease)
        {
            if (id != membersDesease.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(membersDesease);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!MembersDeseaseExists(membersDesease.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["DeseaseId"] = new SelectList(_context.Diseases, "Id", "Id", membersDesease.DeseaseId);
            ViewData["MemberId"] = new SelectList(_context.Members, "Id", "Id", membersDesease.MemberId);
            return View(membersDesease);
        }

      // GET: MembersDeseases/Delete/5
      [Authorize]
      public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.MembersDeseases == null)
            {
                return NotFound();
            }

            var membersDesease = await _context.MembersDeseases
                .Include(m => m.Disease)
                .Include(m => m.Member)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (membersDesease == null)
            {
                return NotFound();
            }

            return View(membersDesease);
        }

      // POST: MembersDeseases/Delete/5
      [Authorize]

      [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.MembersDeseases == null)
            {
                return Problem("Entity set 'ApplicationDbContext.MembersDeseases'  is null.");
            }
            var membersDesease = await _context.MembersDeseases.FindAsync(id);
            if (membersDesease != null)
            {
                _context.MembersDeseases.Remove(membersDesease);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool MembersDeseaseExists(int id)
        {
          return (_context.MembersDeseases?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
