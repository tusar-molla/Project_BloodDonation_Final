using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics.Metrics;
using System.Linq;
using System.Numerics;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Project_BloodDonation.Data;
using Project_BloodDonation.Models;

namespace Project_BloodDonation.Controllers
{
    public class DoctorsController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly IWebHostEnvironment _hostEnvironment;

        public DoctorsController(ApplicationDbContext context, IWebHostEnvironment hostEnvironment)
        {
            _context = context;
            this._hostEnvironment = hostEnvironment;
        }

        // GET: Doctors
      //[Authorize(Roles = "Admin,Doctor")]
        public async Task<IActionResult> Index()
        {
          var applicationDbContext = _context.Doctors.Include(d => d.Member)
                                                      .Include(d=> d.DoctorType);
            return View(await applicationDbContext.ToListAsync());
        }


        public async Task<IActionResult> DocHome() { 
        
            return View();
        }



        // GET: Doctors/Details/5
        //[Authorize(Roles = "Admin,Doctor")]
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Doctors == null)
            {
                return NotFound();
            }

            var doctor = await _context.Doctors
               // .Include(d => d.Member.Title)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (doctor == null)
            {
                return NotFound();
            }

            return View(doctor);
        }

        // GET: Doctors/Create
        //[Authorize(Roles = "Admin,Doctor")]
        public IActionResult Create()
        {
            try
            {
                ViewData["CountryId"] = new SelectList(_context.Countries, "Id", "Name");
                ViewBag.DoctorType = new SelectList(_context.DoctorTypes, "Id", "Name");
              //  ViewData["TitleId"] = new SelectList(_context.Set<Title>(), "Id", "TitleName");
            }

            catch (Exception ex) {

                ModelState.AddModelError("", ex.Message);
            }

            return View();
        
        }

        //[Authorize(Roles = "Admin,Doctor")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(Doctor doctor)
        {
            try
            {
                if (ModelState.IsValid)
                {
                   string wwwRootPath = _hostEnvironment.WebRootPath;
                   string fileName = Path.GetFileNameWithoutExtension(doctor.CVFile.FileName);
                   string extension = Path.GetExtension(doctor.CVFile.FileName);
                   doctor.CV = fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
                   string path = Path.Combine(wwwRootPath + "/Doctor Docmunets/", fileName);
               if (extension.ToLower() == ".docx" || extension.ToLower() == ".pdf" || extension.ToLower() == ".xls" || extension.ToLower() == "") {
                  using (var fileStream = new FileStream(path, FileMode.Create))
                  {
                     await doctor.CVFile.CopyToAsync(fileStream);
                  }
               }
               doctor.MemberId = _context.Members.Where(C => C.Email.ToLower().Equals(User.Identity.Name.ToLower())).Select(C => C.Id).FirstOrDefault();
               _context.Add(doctor);
                    if (await _context.SaveChangesAsync() > 0)
                    {
                        return Redirect("~/Profile/MyProfile");
                    };

                }

                else
                {
                    var errors = ModelState.SelectMany(x => x.Value.Errors.Select(z => z.ErrorMessage));

                    ModelState.AddModelError("", string.Join(",", errors));
                }
            }  

            catch (Exception ex) {

                ModelState.AddModelError("", ex.Message);
            }   
            //ViewData["TitleId"] = new SelectList(_context.Titles, "Id", "TitleName", doctor.TitleId);
            return View(doctor);
        }

        // GET: Doctors/Edit/5
        [Authorize/*(Roles = "Admin,User")*/]
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Doctors == null)
            {
                return NotFound();
            }

            var doctor = await _context.Doctors.FindAsync(id);
            if (doctor == null)
            {
                return NotFound();
            }
            //ViewData["TitleId"] = new SelectList(_context.Set<Title>(), "Id", "TitleName", doctor.TitleId);
            return View(doctor);
        }

    
      //  [Authorize(Roles = "Admin,User")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id,Doctor doctor)
        {
            if (id != doctor.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(doctor);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!DoctorExists(doctor.Id))
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
     
            //ViewData["TitleId"] = new SelectList(_context.Set<Title>(), "Id", "TitleName", doctor.TitleId);
            return View(doctor);
        }

        // GET: Doctors/Delete/5
       // [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Doctors == null)
            {
                return NotFound();
            }

            var doctor = await _context.Doctors
                //.Include(d => d.Title)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (doctor == null)
            {
                return NotFound();
            }

            return View(doctor);
        }

        // POST: Doctors/Delete/5
        //[Authorize(Roles = "Admin")]
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Doctors == null)
            {
                return Problem("Entity set 'ApplicationDbContext.Doctor'  is null.");
            }
            var doctor = await _context.Doctors.FindAsync(id);
            var imagepath = Path.Combine(_hostEnvironment.WebRootPath, "image", doctor.CV);

            if (System.IO.File.Exists(imagepath))
                System.IO.File.Delete(imagepath);

            if (doctor != null)
            {
                _context.Doctors.Remove(doctor);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool DoctorExists(int id)
        {
          return (_context.Doctors?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
