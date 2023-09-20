using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Project_BloodDonation.Data;

namespace Project_BloodDonation.ViewComponents
{
   public class PatientInfoViewComponent: ViewComponent
   {
      private readonly ApplicationDbContext _context;

        public PatientInfoViewComponent(ApplicationDbContext context)
        {
         this._context = context;
        }

      public async Task <IViewComponentResult> InvokeAsync(int memberId)
      {
         var record = _context.patients.Where(d=> d.MemberId.Equals(memberId)).FirstOrDefault();
         return await Task.FromResult((IViewComponentResult)View(record));

      }
    }
}
