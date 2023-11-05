using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics.Metrics;
using System.Linq;
using System.Numerics;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using Project_BloodDonation.Data;
using Project_BloodDonation.Models;
using Project_BloodDonation.ViewModels;

namespace Project_BloodDonation.Controllers
{
    public class DoctorsController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly IWebHostEnvironment _hostEnvironment;
        private readonly UserManager<ApplicationUser> userManager;
        //private readonly RoleManager<IdentityRole> _roleManager;

      public DoctorsController(ApplicationDbContext context, IWebHostEnvironment hostEnvironment, UserManager<ApplicationUser> userManager/*,RoleManager<IdentityRole> roleManager*/)
        {
            _context = context;
            this._hostEnvironment = hostEnvironment;
         this.userManager = userManager;
            //_roleManager = roleManager;
      }
      [Authorize]
        public async Task<IActionResult> Index()
        {
          var applicationDbContext = _context.Doctors.Include(d => d.Member)
                                                      .Include(d=> d.DoctorType);
            return View(await applicationDbContext.ToListAsync());
        }

        public async Task<IActionResult> DocHome() { 
        
            return View();
        }

        public async Task<IActionResult> DocCreateAdmin() {

            ViewBag.Role = new SelectList( _context.Roles.AsQueryable(),"Id","Name");  
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> DocCreateAdmin(DoctorViewModels dvm)
        {

            try
            {
                
              var   member = new Member
                {
                    FirstName = dvm.FirstName,
                    LastName = dvm.LastName,
                    Address = dvm.Address,
                    Contact = dvm.Contact,
                    Email = dvm.Email,
                    Role = dvm.Role,
                };

                var doctors = new Doctor
                {
                    AreaOfConsultation = dvm.AreaOfConsultation,
                    SpecialInterest = dvm.SpecialInterest,
                    Institute = dvm.Institute
                };
                userManager.CreateAsync(new ApplicationUser {  Email=dvm.Email, UserName=dvm.Email}, "");
                if (ModelState.IsValid)
                {
                    _context.Add(member);
                    if (await _context.SaveChangesAsync()>0)
                    {
                        return Redirect("Admin/Dashboard");
                    };
                }
            }

            catch (Exception ex) {

                ModelState.AddModelError("", ex.Message);
            }
           

            return View();

        }

       
        [Authorize]
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
      [Authorize]
      public IActionResult Create()
        {
            try
            {
                ViewData["CountryId"] = new SelectList(_context.Countries, "Id", "Name");
                ViewBag.DoctorType = new SelectList(_context.DoctorTypes, "Id", "Name");              
            }

            catch (Exception ex) {

                ModelState.AddModelError("", ex.Message);
            }

            return View();
        
        }
        [Authorize]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(Doctor doctor, DoctorViewModels dvm)
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
            return View(doctor);
        }
        [Authorize]
        public async Task<IActionResult> Edit()
        {
         //if (id == null || _context.Doctors == null)
         //{
         //return NotFound();
         //}
         // ApplicationUser user = await userManager.FindByEmailAsync(User.Identity.Name);
          if (string.IsNullOrEmpty(User.Identity.Name) || _context.Doctors == null)
         {
            return NotFound();
         }
         var member = await _context.Members.Where(u=>u.Email.Equals(User.Identity.Name)).FirstOrDefaultAsync();

         var doctor = await _context.Doctors.Where(d=>d.MemberId.Equals(member.Id)).SingleOrDefaultAsync();
            if (doctor == null)
            {
                return NotFound();
            }
            return View(doctor);
        }
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
               var existingObj = await _context.Set<Doctor>().FindAsync(id);
               if (existingObj == null)
               {
                  return NotFound();
               }
                  existingObj.RegistrationNumber = existingObj.RegistrationNumber;
                  existingObj.AreaOfConsultation = doctor.AreaOfConsultation;
                  existingObj.Institute = doctor.Institute;
                  existingObj.BMDCNO = doctor.BMDCNO;
                  existingObj.Degree = doctor.Degree;
                  existingObj.Designation = doctor.Designation;
                  existingObj.DateOfBirth = doctor.DateOfBirth;
                  existingObj.SpecialInterest = doctor.SpecialInterest;
                    existingObj.CV = doctor.CV;

               _context.Entry(existingObj).Property(d=> d.RegistrationNumber).IsModified = true;
               _context.Entry(existingObj).Property(d => d.AreaOfConsultation).IsModified = true;
               _context.Entry(existingObj).Property(d => d.Institute).IsModified = true;
               _context.Entry(existingObj).Property(d => d.BMDCNO).IsModified = true;			    
               _context.Entry(existingObj).Property(d => d.CV).IsModified = true;
               _context.Entry(existingObj).Property(d => d.Degree).IsModified = true;
               _context.Entry(existingObj).Property(d => d.Designation).IsModified = true;
               _context.Entry(existingObj).Property(d => d.DateOfBirth).IsModified = true;
               _context.Entry(existingObj).Property(d => d.SpecialInterest ).IsModified = true;

                    await _context.SaveChangesAsync();
                   // await _context.SaveChangesAsync();
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
                return Redirect("~/Profile/MyProfile");
            
         }
         else
         {
            var errors = ModelState.SelectMany(x => x.Value.Errors.Select(z => z.ErrorMessage));

            ModelState.AddModelError("", string.Join(",", errors));
         }
         return View(doctor);
        }
       [Authorize]
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
        [Authorize]
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
