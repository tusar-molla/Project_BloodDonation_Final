using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Project_BloodDonation.Areas.Identity.Pages.Account;
using Project_BloodDonation.Data;
using Project_BloodDonation.Models;

namespace Project_BloodDonation.Controllers
{

   public class MembersController : Controller
   {
      private readonly ApplicationDbContext _context;
      private readonly IWebHostEnvironment _hostEnvironment;
      private readonly UserManager<ApplicationUser> userManager;
      public MembersController(ApplicationDbContext context, IWebHostEnvironment hostEnvironment, UserManager<ApplicationUser> userManager)
      {
         _context = context;
         this._hostEnvironment = hostEnvironment;
         this.userManager = userManager;
      }

      //GET: Members
      //[Authorize/*(Roles = "Admin,User")*/]

      public async Task<IActionResult> Index()
      {
         var applicationDbContext = _context.Members
                             .Include(m => m.Area)
                             .Include(m => m.Bloodgroup)
                              .Include(m => m.Doctors)
                              .Include(m => m.Donars)
                              .Include(m => m.patients);
                              

         return View(await applicationDbContext.ToListAsync());
      }
      public async Task<IActionResult> Details(int? id)
      {
         if (id == null || _context.Members == null)
         {
            return NotFound();
         }

         var member = await _context.Members
             .Include(m => m.Area)
             .Include(m => m.Bloodgroup)
             .FirstOrDefaultAsync(m => m.Id == id);
         if (member == null)
         {
            return NotFound();
         }

         return View(member);
      }

      [Authorize]
      public async Task<IActionResult> DonorDetails(int? id)
      {
         if (id == null || _context.Members == null)
         {
            return NotFound();
         }
         var member = await _context.Members
             .Include(m => m.Area)
             .Include(m => m.Bloodgroup)
             .FirstOrDefaultAsync(m => m.Id == id);
         if (member == null)
         {
            return NotFound();
         }

         if (member.Role.Equals("General Member"))
         {
            return Redirect("~/Members/Create");
         }
         return View(member);
      }

      // GET: Members/Create
      //[Authorize/*(Roles = "Admin,User")*/]
      public async Task<IActionResult> Create(string role)
      {
         try
         {
            ViewData["BloodgroupId"] = new SelectList(_context.Bloodgroups, "Id", "Name");
            ViewData["CountryId"] = new SelectList(_context.Countries, "Id", "Name");
            ApplicationUser user = await userManager.FindByEmailAsync(User.Identity.Name);
            return View(new Member { Email = user.Email, Role = role, FirstName = user.FirstName, LastName = user.LastName });
         }
         catch (Exception ex)
         {

            ModelState.AddModelError("", ex.Message);
         }
         return View();
      }

      public JsonResult GetDivisionbyCountry(int countryid)
      {

         var data = _context.Divisions.Where(d => d.CountryId.Equals(countryid)).OrderBy(d => d.Name).ToList();
         return Json(data);
      }

      public JsonResult GetDistrictbyDivision(int divid)
      {

         var data = _context.Districts.Where(d => d.DivisionId.Equals(divid)).OrderBy(d => d.Name).ToList();
         return Json(data);
      }

      public JsonResult GetThanabyDistrict(int distid)
      {

         var data = _context.Thanas.Where(d => d.DistricId.Equals(distid)).OrderBy(d => d.Name).ToList();
         return Json(data);
      }
      public JsonResult GetAreabyThana(int thnaid)
      {

         var data = _context.Areas.Where(a => a.ThanaId.Equals(thnaid)).OrderBy(a => a.Name).ToList();
         return Json(data);
      }
      [HttpPost]
      [ValidateAntiForgeryToken]
      //[Authorize/*(Roles = "Admin,User")*/]
      public async Task<IActionResult> Create(Member member)
      {
         try
         {
            if (ModelState.IsValid)
            {
               string wwwRootPath = _hostEnvironment.WebRootPath;
               string fileName = Path.GetFileNameWithoutExtension(member.ImageFile.FileName);
               string extension = Path.GetExtension(member.ImageFile.FileName);
               member.ImageName = fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
               string path = Path.Combine(wwwRootPath + "/Image/", fileName);

               using (var fileStream = new FileStream(path, FileMode.Create))
               {

                  await member.ImageFile.CopyToAsync(fileStream);
               }
               _context.Add(member);
              
               if (await _context.SaveChangesAsync() > 0)
               {                                   
                  if (member.Role.ToLower().Trim()== "Doctor".ToLower().Trim())
                  {
                     return Redirect("~/Doctors/Create");
                  }
                  else if (member.Role.ToLower().Trim()=="Donor".ToLower().Trim())
                  {
                     return Redirect("~/Donars/Create");
                  }
                  else if (member.Role.ToLower().Trim()=="Patient".ToLower().Trim()) 
                  {
                     return Redirect("~/Patients/Create");
                  }
                  else if (member.Role.ToLower().Trim()=="Admin".ToLower().Trim())     
                  {
                     return Redirect("~/Admins/Create");
                  }
               };
            }
            else
            {
               var errors = ModelState.SelectMany(x => x.Value.Errors.Select(z => z.ErrorMessage));

               ModelState.AddModelError("", string.Join(",", errors));
            }
         }
         catch (Exception ex)
         {
            ModelState.AddModelError("", ex.Message);

         }
         ViewData["AreaId"] = new SelectList(_context.Areas, "Id", "Name", member.AreaId);
         ViewData["BloodgroupId"] = new SelectList(_context.Bloodgroups, "Id", "Name", member.BloodgroupId);
         return View(member);
      }

      // GET: Members/Edit/5
      //  [Authorize(Roles = "Admin,User")]
      public async Task<IActionResult> Edit(int? id)
      {
    
         if (id == null || _context.Members == null)
         {
            return NotFound();
         }
         ApplicationUser user = await userManager.FindByEmailAsync(User.Identity.Name);
         var member = await _context.Members.FindAsync(id);
         if (member == null)
         {
            return NotFound();
         }
         ViewData["AreaId"] = new SelectList(_context.Areas, "Id", "Name", member.AreaId);
         ViewData["BloodgroupId"] = new SelectList(_context.Bloodgroups, "Id", "Name", member.BloodgroupId);
         return View(member);
      }
      [HttpPost]
      [ValidateAntiForgeryToken]
      //[Authorize(Roles = "Admin,User")]
      public async Task<IActionResult> Edit(int id, Member member)
      {
         if (id != member.Id)
         {
            return NotFound();
         }

         if (ModelState.IsValid)
         {
            try
            {
					_context.Update(member);
               await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
               if (!MemberExists(member.Id))
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
         else
         {
            var errors = ModelState.SelectMany(x => x.Value.Errors.Select(z => z.ErrorMessage));

            ModelState.AddModelError("", string.Join(",", errors));
         }

         ViewData["AreaId"] = new SelectList(_context.Areas, "Id", "Name", member.AreaId);
         ViewData["BloodgroupId"] = new SelectList(_context.Bloodgroups, "Id", "Name", member.BloodgroupId);
         return View(member);
      }
      // GET: Members/Delete/5
      // [Authorize(Roles = "Admin")]
      public async Task<IActionResult> Delete(int? id)
      {
         if (id == null || _context.Members == null)
         {
            return NotFound();
         }

         var member = await _context.Members
             .Include(m => m.Area)
             .Include(m => m.Bloodgroup)
             .FirstOrDefaultAsync(m => m.Id == id);
         if (member == null)
         {
            return NotFound();
         }

         return View(member);
      }

      // POST: Members/Delete/5
      [HttpPost, ActionName("Delete")]
      [ValidateAntiForgeryToken]
      [Authorize(Roles = "Admin")]
      public async Task<IActionResult> DeleteConfirmed(int id)
      {
         if (_context.Members == null)
         {
            return Problem("Entity set 'ApplicationDbContext.Members'  is null.");
         }
         var member = await _context.Members.FindAsync(id);
         var imagepath = Path.Combine(_hostEnvironment.WebRootPath, "image", member.ImageName);

         if (System.IO.File.Exists(imagepath))
            System.IO.File.Delete(imagepath);


         if (member != null)
         {
            _context.Members.Remove(member);
         }

         await _context.SaveChangesAsync();
         return RedirectToAction(nameof(Index));
      }

      private bool MemberExists(int id)
      {
         return (_context.Members?.Any(e => e.Id == id)).GetValueOrDefault();
      }
   }
}
