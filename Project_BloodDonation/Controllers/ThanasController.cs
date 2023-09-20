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
    public class ThanasController : Controller
    {
        private readonly ApplicationDbContext _context;

        public ThanasController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Thanas
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.Thanas.Include(t => t.District);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: Thanas/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Thanas == null)
            {
                return NotFound();
            }

            var thana = await _context.Thanas
                .Include(t => t.District)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (thana == null)
            {
                return NotFound();
            }

            return View(thana);
        }

        // GET: Thanas/Create
        public IActionResult Create()
        {
            ViewData["DistricId"] = new SelectList(_context.Districts, "Id", "Name");
            Thana thana = new Thana();
            thana.Areas.Add(
                new Area { Name= "", ThanaId= 0}
                );

            return View(thana);

        }

        // POST: Thanas/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Name,DistricId,Areas")] Thana thana)
        {
            if (ModelState.IsValid)
            {
                _context.Add(thana);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["DistricId"] = new SelectList(_context.Districts, "Id", "Id", thana.DistricId);
            return View(thana);
        }

        // GET: Thanas/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Thanas == null)
            {
                return NotFound();
            }

            var thana = await _context.Thanas.FindAsync(id);
            if (thana == null)
            {
                return NotFound();
            }
            ViewData["DistricId"] = new SelectList(_context.Districts, "Id", "Id", thana.DistricId);
            return View(thana);
        }

        // POST: Thanas/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Name,DistricId")] Thana thana)
        {
            if (id != thana.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(thana);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ThanaExists(thana.Id))
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
            ViewData["DistricId"] = new SelectList(_context.Districts, "Id", "Id", thana.DistricId);
            return View(thana);
        }

        // GET: Thanas/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Thanas == null)
            {
                return NotFound();
            }

            var thana = await _context.Thanas
                .Include(t => t.District)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (thana == null)
            {
                return NotFound();
            }

            return View(thana);
        }

        // POST: Thanas/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Thanas == null)
            {
                return Problem("Entity set 'ApplicationDbContext.Thanas'  is null.");
            }
            var thana = await _context.Thanas.FindAsync(id);
            if (thana != null)
            {
                _context.Thanas.Remove(thana);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ThanaExists(int id)
        {
          return (_context.Thanas?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
