using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Project_BloodDonation.Data;
using Project_BloodDonation.Models;

namespace Project_BloodDonation.Controllers
{
    public class DonarsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public DonarsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Donars
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.Donars.Include(d => d.Member);
            return View(await applicationDbContext.ToListAsync());

        }

            public async Task<IActionResult> Donarview()
            {
                
                return View();
            }

            // GET: Donars/Details/5
            public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Donars == null)
            {
                return NotFound();
            }

            var donar = await _context.Donars
                .Include(d => d.Member)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (donar == null)
            {
                return NotFound();
            }

            return View(donar);
        }

        // GET: Donars/Create
        public IActionResult Create()
        {
         ViewBag.MemberId = new SelectList(_context.Members, "Id", "Name");
            return View();
        }

        // POST: Donars/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(Donar donar)
        {
            if (ModelState.IsValid)
            {

            donar.MemberId = _context.Members.Where(c => c.Email.ToLower().Equals
            (User.Identity.Name.ToLower())).Select(c => c.Id).FirstOrDefault();

                _context.Add(donar);
            if (await _context.SaveChangesAsync() > 0) {

               return Redirect("~/Profile/MyProfile");
            }
            }
            return View(donar);
        }

        // GET: Donars/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Donars == null)
            {
                return NotFound();
            }

            var donar = await _context.Donars.FindAsync(id);
            if (donar == null)
            {
                return NotFound();
            }
            ViewData["MemberId"] = new SelectList(_context.Members, "Id", "Id", donar.MemberId);
            return View(donar);
        }

        // POST: Donars/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,DonarName,Weight,MemberId")] Donar donar)
        {
            if (id != donar.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(donar);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!DonarExists(donar.Id))
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
            ViewData["MemberId"] = new SelectList(_context.Members, "Id", "Id", donar.MemberId);
            return View(donar);
        }

        // GET: Donars/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Donars == null)
            {
                return NotFound();
            }

            var donar = await _context.Donars
                .Include(d => d.Member)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (donar == null)
            {
                return NotFound();
            }

            return View(donar);
        }

        // POST: Donars/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Donars == null)
            {
                return Problem("Entity set 'ApplicationDbContext.Donars'  is null.");
            }
            var donar = await _context.Donars.FindAsync(id);
            if (donar != null)
            {
                _context.Donars.Remove(donar);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool DonarExists(int id)
        {
          return (_context.Donars?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
