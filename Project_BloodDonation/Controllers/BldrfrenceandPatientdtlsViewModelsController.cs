using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Project_BloodDonation.Data;
using Project_BloodDonation.Models;
using Project_BloodDonation.ViewModels;

namespace Project_BloodDonation.Controllers
{
    public class BldrfrenceandPatientdtlsViewModelsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public BldrfrenceandPatientdtlsViewModelsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: BldrfrenceandPatientdtlsViewModels
        public async Task<IActionResult> Index()
        {
         return View();
        }

        // GET: BldrfrenceandPatientdtlsViewModels/Details/5
        public async Task<IActionResult> Details(int? id)
        {
           

            return View();
        }

        // GET: BldrfrenceandPatientdtlsViewModels/Create
        public IActionResult Create(string returnUrl = null)
        {

            return View();
        }

        // POST: BldrfrenceandPatientdtlsViewModels/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create( BldrfrenceandPatientdtlsViewModels bvm,string returnUrl=null)
        {
            //if (ModelState.IsValid)
            //{
               // _context.Add(bvm);

            var member = new Member
            {
                FirstName= bvm.FirstName,
               LastName = bvm.LastName,
               Address = bvm.Address,
               Contact = bvm.Contact,
               Email = bvm.Email,
               Role = bvm.Role,
            };
            _context.Members.Add(member);
            await _context.SaveChangesAsync();

         var breference = new BldReference
         {
          
                PatientName= bvm.BldReference.PatientName,
                ReferenceId= member.Id,
                PatientPhoneNo = bvm.BldReference.PatientPhoneNo,
                Address = bvm.BldReference.Address,
                PatientDeases = bvm.BldReference.PatientDeases,
                DonateDate = bvm.BldReference.DonateDate,
                DonatePlace = bvm.BldReference.DonatePlace,
                DonateTime = bvm.BldReference.DonateTime,
                BloodGroupId = bvm.BldReference.BloodGroupId,                
            };

         
            _context.BldReferences.Add(breference);
            if(    await _context.SaveChangesAsync()>0)
            {
               //return RedirectToAction("Profile","Myprofile");
               return Redirect(returnUrl);
            }
             
            //}
            return View(bvm); 
        }
        // GET: BldrfrenceandPatientdtlsViewModels/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            
            return View();
        }

        // POST: BldrfrenceandPatientdtlsViewModels/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,FirstName,LastName,Address,Contact,Email,Role")] BldrfrenceandPatientdtlsViewModels bldrfrenceandPatientdtlsViewModels)
        {
            if (id != bldrfrenceandPatientdtlsViewModels.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(bldrfrenceandPatientdtlsViewModels);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!BldrfrenceandPatientdtlsViewModelsExists(bldrfrenceandPatientdtlsViewModels.Id))
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
            return View(bldrfrenceandPatientdtlsViewModels);
        }

        // GET: BldrfrenceandPatientdtlsViewModels/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
           

            return View();
        }

        // POST: BldrfrenceandPatientdtlsViewModels/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            
            return RedirectToAction( );
        }

        private bool BldrfrenceandPatientdtlsViewModelsExists(int id)
        {
          return (_context.BldReferences?.Any(e => e.BldReferenceId == id)).GetValueOrDefault();
        }
    }
}
