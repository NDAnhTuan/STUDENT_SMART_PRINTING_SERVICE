using Microsoft.AspNetCore.Mvc;
using SMART_PRINTER_SERVICE.Models;
using System.Diagnostics;

namespace SMART_PRINTER_SERVICE.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Print()
        {
            return View();
        }
        //public IActionResult Upload() 
        //{
        //    return View();
        //}
        //public IActionResult PrintPreview()
        //{
        //    return View();
        //}
        public IActionResult RechargeMoney()
        {
            return View();
        }

        public IActionResult BuyPrintingMoney()
        {
            return View();
        }
        public IActionResult History()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}