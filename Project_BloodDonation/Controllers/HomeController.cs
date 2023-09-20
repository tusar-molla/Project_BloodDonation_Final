using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Project_BloodDonation.Data;
using Project_BloodDonation.Models;
using System.Diagnostics;

namespace Project_BloodDonation.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _context;

        public HomeController(ILogger<HomeController> logger, ApplicationDbContext context )
        {
            _logger = logger;
            _context = context;
        }

        public IActionResult Index()
        {
            return View();
        }


        public IActionResult SearchBy(int? AreaId, int? BloodgroupId)
        {


            ViewData["AreaId"] = new SelectList(_context.Areas, "Id", "Name");
            ViewData["BloodgroupId"] = new SelectList(_context.Bloodgroups, "Id", "Name");

            var data = _context.Members.Where(m => m.MemberTypes == Models.MemberTypes.Donar).ToList();

            if (AreaId.HasValue)
                data = data.Where(m => m.AreaId == AreaId.Value).ToList();

            if (BloodgroupId.HasValue)
                data = data.Where(m => m.BloodgroupId.Equals(BloodgroupId.Value)).ToList();
            return View(data);
        }


        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}