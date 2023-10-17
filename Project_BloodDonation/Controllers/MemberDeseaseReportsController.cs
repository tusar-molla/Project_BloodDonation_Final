using System;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Project_BloodDonation.Data;
using Project_BloodDonation.Models;

namespace Project_BloodDonation.Controllers
{
    public class MemberDeseaseReportsController : Controller
    {
        private readonly ApplicationDbContext _context;
      private readonly IWebHostEnvironment _hostEnvironment;

        public MemberDeseaseReportsController(ApplicationDbContext context, IWebHostEnvironment hostEnvironment)
        {
            _context = context;
           this._hostEnvironment = hostEnvironment;
        }

        // GET: MemberDeseaseReports
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.MemberDeseaseReports.Include(m => m.MembersDesease);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: MemberDeseaseReports/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.MemberDeseaseReports == null)
            {
                return NotFound();
            }

            var memberDeseaseReports = await _context.MemberDeseaseReports
                .Include(m => m.MembersDesease)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (memberDeseaseReports == null)
            {
                return NotFound();
            }

            return View(memberDeseaseReports);
        }

        // GET: MemberDeseaseReports/Create
        public IActionResult Create()
        {
            //ViewData["MemberDeseaseId"] = new SelectList(_context.MembersDeseases, "Id", "Name");
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(MemberDeseaseReports memberDeseaseReports)
        {
         try
         {
            if (ModelState.IsValid)
            {
               string wwwRootPath = _hostEnvironment.WebRootPath;
               string fileName = Path.GetFileNameWithoutExtension(memberDeseaseReports.ReportsFile.FileName);
               string extension = Path.GetExtension(memberDeseaseReports.ReportsFile.FileName);
               memberDeseaseReports.ReportsPath = fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
               string path = Path.Combine(wwwRootPath + "/Diseases Reports files/", fileName);
               if (extension.ToLower() == ".docx" || extension.ToLower() == ".pdf" || extension.ToLower() == ".xls" || extension.ToLower() == ".jpg" || extension.ToLower() == ".jpeg")
               {
                  using (var fileStream = new FileStream(path, FileMode.Create))
                  {
                     await memberDeseaseReports.ReportsFile.CopyToAsync(fileStream);
                  }
               }

               memberDeseaseReports.MemberDeseaseId = _context.MembersDeseases.Where(C => C.Id.Equals(memberDeseaseReports.Id)).Select(C => C.Id).FirstOrDefault();

               _context.Add(memberDeseaseReports);
               await _context.SaveChangesAsync();
               return RedirectToAction(nameof(Index));
            }

            else
            {
               var errors = ModelState.SelectMany(x => x.Value.Errors.Select(z => z.ErrorMessage));

               ModelState.AddModelError("", string.Join(",", errors));
            }
            //ViewData["MemberDeseaseId"] = new SelectList(_context.MembersDeseases, "Id", "Name", memberDeseaseReports.MemberDeseaseId);
         }

         catch (Exception ex)
         {
            ModelState.AddModelError("", ex.Message);
         }
            return View(memberDeseaseReports);
        }

        // GET: MemberDeseaseReports/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.MemberDeseaseReports == null)
            {
                return NotFound();
            }

            var memberDeseaseReports = await _context.MemberDeseaseReports.FindAsync(id);
            if (memberDeseaseReports == null)
            {
                return NotFound();
            }
            ViewData["MemberDeseaseId"] = new SelectList(_context.MembersDeseases, "Id", "Id", memberDeseaseReports.MemberDeseaseId);
            return View(memberDeseaseReports);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, MemberDeseaseReports memberDeseaseReports)
        {
            if (id != memberDeseaseReports.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(memberDeseaseReports);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!MemberDeseaseReportsExists(memberDeseaseReports.Id))
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
            ViewData["MemberDeseaseId"] = new SelectList(_context.MembersDeseases, "Id", "Id", memberDeseaseReports.MemberDeseaseId);
            return View(memberDeseaseReports);
        }

        // GET: MemberDeseaseReports/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.MemberDeseaseReports == null)
            {
                return NotFound();
            }

            var memberDeseaseReports = await _context.MemberDeseaseReports
                .Include(m => m.MembersDesease)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (memberDeseaseReports == null)
            {
                return NotFound();
            }

            return View(memberDeseaseReports);
        }

        // POST: MemberDeseaseReports/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.MemberDeseaseReports == null)
            {
                return Problem("Entity set 'ApplicationDbContext.MemberDeseaseReports'  is null.");
            }
            var memberDeseaseReports = await _context.MemberDeseaseReports.FindAsync(id);
            if (memberDeseaseReports != null)
            {
                _context.MemberDeseaseReports.Remove(memberDeseaseReports);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool MemberDeseaseReportsExists(int id)
        {
          return (_context.MemberDeseaseReports?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
