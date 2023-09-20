using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.ViewComponents;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using Project_BloodDonation.Data;

namespace Project_BloodDonation.ViewComponents
{
   public class DoctorinfoViewComponent : ViewComponent
   {
      private readonly ApplicationDbContext _context;
      public DoctorinfoViewComponent(ApplicationDbContext context)
      {
         this._context = context;

      }
      public async Task<IViewComponentResult> InvokeAsync(int memberId)
      {
         
         var record = _context.Doctors.Include(d => d.DoctorType).Where(d => d.MemberId.Equals(memberId)).FirstOrDefault();


         return await Task.FromResult((IViewComponentResult)View(record));
      }

   }
}
