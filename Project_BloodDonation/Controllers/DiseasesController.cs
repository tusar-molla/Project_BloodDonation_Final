﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Project_BloodDonation.Data;
using Project_BloodDonation.Models;

namespace Project_BloodDonation.Controllers
{
    public class DiseasesController : Controller
    {
        private readonly ApplicationDbContext _context;

        public DiseasesController(ApplicationDbContext context)
        {
            _context = context;
        }

      // GET: Diseases
      [Authorize]
      public async Task<IActionResult> Index()
        {
              return _context.Diseases != null ? 
                          View(await _context.Diseases.ToListAsync()) :
                          Problem("Entity set 'ApplicationDbContext.Diseases'  is null.");
        }

      // GET: Diseases/Details/5
      [Authorize]
      public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Diseases == null)
            {
                return NotFound();
            }

            var disease = await _context.Diseases
                .FirstOrDefaultAsync(m => m.Id == id);
            if (disease == null)
            {
                return NotFound();
            }

            return View(disease);
        }

      // GET: Diseases/Create
      [Authorize]
      public IActionResult Create()
        {
            return View();
        }

        // POST: Diseases/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
      [Authorize]
      public async Task<IActionResult> Create([Bind("Id,Name,Description,Symptoms")] Disease disease)
        {
            if (ModelState.IsValid)
            {
                _context.Add(disease);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(disease);
        }

      // GET: Diseases/Edit/5
      [Authorize]
      public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Diseases == null)
            {
                return NotFound();
            }

            var disease = await _context.Diseases.FindAsync(id);
            if (disease == null)
            {
                return NotFound();
            }
            return View(disease);
        }

        // POST: Diseases/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
      [Authorize]
      public async Task<IActionResult> Edit(int id, [Bind("Id,Name,Description,Symptoms")] Disease disease)
        {
            if (id != disease.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(disease);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!DiseaseExists(disease.Id))
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
            return View(disease);
        }

      // GET: Diseases/Delete/5
      [Authorize]
      public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Diseases == null)
            {
                return NotFound();
            }

            var disease = await _context.Diseases
                .FirstOrDefaultAsync(m => m.Id == id);
            if (disease == null)
            {
                return NotFound();
            }

            return View(disease);
        }

        // POST: Diseases/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
      [Authorize]
      public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Diseases == null)
            {
                return Problem("Entity set 'ApplicationDbContext.Diseases'  is null.");
            }
            var disease = await _context.Diseases.FindAsync(id);
            if (disease != null)
            {
                _context.Diseases.Remove(disease);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool DiseaseExists(int id)
        {
          return (_context.Diseases?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
