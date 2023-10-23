using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Project_BloodDonation.Data;

namespace Project_BloodDonation.Controllers
{
    public class AdminController : Controller
    {
        private readonly ApplicationDbContext _context;

        public AdminController(ApplicationDbContext context) {

            _context = context;
        }
      [Authorize(Roles = "Admin")]
        public IActionResult Dashboard()
        {
         var applicationDbContext = _context.Members            
                .Include(m => m.Bloodgroup).ToList();
         //.Include(m => m.Country)
         ViewBag.Doctors = _context.Doctors.Count();
         ViewBag.Patients = _context.patients.Count();
         ViewBag.Donnars = _context.Donars.Count();
            return View(applicationDbContext);
        }
    }
}