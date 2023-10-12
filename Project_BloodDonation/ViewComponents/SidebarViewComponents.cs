using Microsoft.AspNetCore.Mvc;
using Project_BloodDonation.Data;

namespace Project_BloodDonation.ViewComponents
{
   public class SidebarViewComponent: ViewComponent
   {
      private readonly ApplicationDbContext _context;
      public SidebarViewComponent(ApplicationDbContext context)
      {
         this._context = context;

      }
      public async Task<IViewComponentResult> InvokeAsync()
      {

         var record = _context.Members.Where(d => d.Email.Equals(User.Identity.Name)).FirstOrDefault();


         return await Task.FromResult((IViewComponentResult)View(record ?? new Models.Member()));
      }

   }
}

