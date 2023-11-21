using Microsoft.AspNetCore.Mvc;
using SMART_PRINTER_SERVICE.Models;
using System.Diagnostics;

namespace SMART_PRINTER_SERVICE.Controllers
{
    public class SPSOHomeController : Controller
    {
        private readonly ILogger<SPSOHomeController> _logger;

        public SPSOHomeController(ILogger<SPSOHomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult ManagePrinter()
        {
            return View();
        }

        public IActionResult ManagePrinting()
        {
            return View();
        }
        public IActionResult ViewOrder()
        {
            return View();
        }
        public IActionResult ViewPrintingHistory()
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