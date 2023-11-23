using Microsoft.AspNetCore.Mvc;
using SMART_PRINTER_SERVICE.Models;
using System.Diagnostics;

namespace SMART_PRINTER_SERVICE.Controllers
{
    public class LoginAsController : Controller
    {
        private readonly ILogger<LoginAsController> _logger;

        public LoginAsController(ILogger<LoginAsController> logger)
        {
            _logger = logger;
        }

        public IActionResult LoginAsPage()
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
