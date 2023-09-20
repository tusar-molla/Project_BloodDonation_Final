using Microsoft.AspNetCore.Mvc;
using Project_BloodDonation.Data;

namespace Project_BloodDonation.ViewComponents
{
   public class DonorInfoViewComponent : ViewComponent
   {
      private readonly ApplicationDbContext _context;
      public DonorInfoViewComponent(ApplicationDbContext context) { 
      
         this._context = context;
      }

      public async Task<IViewComponentResult> InvokeAsync(int memberId)
      { 
      
         var record = _context.Donars.Where(d=> d.MemberId.Equals(memberId)).FirstOrDefault();
         return await Task.FromResult((IViewComponentResult)View(record));
      }
   }

}
