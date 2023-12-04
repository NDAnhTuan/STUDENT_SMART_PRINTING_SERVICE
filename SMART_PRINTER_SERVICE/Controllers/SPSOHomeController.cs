using Microsoft.AspNetCore.Mvc;
using SMART_PRINTER_SERVICE.Models;
using System.Diagnostics;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authorization;
using Controller = Microsoft.AspNetCore.Mvc.Controller;
using Microsoft.AspNetCore.Authorization.Infrastructure;

namespace SMART_PRINTER_SERVICE.Controllers
{
    [Authorize(Roles = "spso")]
    public class SPSOHomeController : Controller
    {
        private readonly ILogger<SPSOHomeController> _logger;

        public SPSOHomeController(ILogger<SPSOHomeController> logger)
        {
            _logger = logger;
        }
        public async Task<IActionResult> LogOut()
        {
            // Perform sign-out
            await HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);

            // Redirect to the login page
            return RedirectToAction("LoginTo", "Login");
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