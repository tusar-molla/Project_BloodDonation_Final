using System;
using System.Collections.Generic;
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
    public class PatientsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public PatientsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Patients
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.patients.Include(p => p.Member);
            return View(await applicationDbContext.ToListAsync());
        }

        public async Task<IActionResult> PatientView() { 
        
            return View();
        }

      // GET: Patients/Details/5
      [Authorize]
      public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.patients == null)
            {
                return NotFound();
            }

            var patient = await _context.patients
                .Include(p => p.Member)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (patient == null)
            {
                return NotFound();
            }

            return View(patient);
        }

      // GET: Patients/Create
      [Authorize]

      public IActionResult Create()
        {
            ViewData["MemberId"] = new SelectList(_context.Members, "Id", "Name");
            return View();
        }

        // POST: Patients/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
      [Authorize]

      public async Task<IActionResult> Create(Patient patient)
        {
            if (ModelState.IsValid)
         {

            patient.MemberId = _context.Members.Where(C => C.Email.ToLower().Equals(User.Identity.Name.ToLower())).Select(C => C.Id).FirstOrDefault();
            
            _context.Add(patient);
                if(await _context.SaveChangesAsync()> 0)
            {
               return Redirect("~/Profile/MyProfile");
            };
               
            }
            //ViewData["MemberId"] = new SelectList(_context.Members, "Id", "Name", patient.MemberId);
            return View(patient);
        }

      // GET: Patients/Edit/5
      [Authorize]

      public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.patients == null)
            {
                return NotFound();
            }

            var patient = await _context.patients.FindAsync(id);
            if (patient == null)
            {
                return NotFound();
            }
            ViewData["MemberId"] = new SelectList(_context.Members, "Id", "Id", patient.MemberId);
            return View(patient);
        }

        // POST: Patients/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize]
      public async Task<IActionResult> Edit(int id, [Bind("Id,ReportDeliveryDate,MemberId")] Patient patient)
        {
            if (id != patient.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(patient);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!PatientExists(patient.Id))
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
            ViewData["MemberId"] = new SelectList(_context.Members, "Id", "Id", patient.MemberId);
            return View(patient);
        }

      // GET: Patients/Delete/5
      [Authorize]
      public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.patients == null)
            {
                return NotFound();
            }

            var patient = await _context.patients
                .Include(p => p.Member)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (patient == null)
            {
                return NotFound();
            }

            return View(patient);
        }

        // POST: Patients/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
         [Authorize]

      public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.patients == null)
            {
                return Problem("Entity set 'ApplicationDbContext.patients'  is null.");
            }
            var patient = await _context.patients.FindAsync(id);
            if (patient != null)
            {
                _context.patients.Remove(patient);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool PatientExists(int id)
        {
          return (_context.patients?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
