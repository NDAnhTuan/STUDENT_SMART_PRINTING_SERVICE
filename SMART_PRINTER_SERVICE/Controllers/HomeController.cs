using Microsoft.AspNetCore.Mvc;
using SMART_PRINTER_SERVICE.Models;
using System.Diagnostics;
using System.Web.Mvc;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authorization;
using Controller = Microsoft.AspNetCore.Mvc.Controller;

namespace SMART_PRINTER_SERVICE.Controllers
{
    [Microsoft.AspNetCore.Authorization.Authorize]
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }
        public IActionResult HomePage()
        {
            return View();
        }
        public async Task<IActionResult> Logout()
        {
            // Perform sign-out
            await HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);

            // Redirect to the login page
            return RedirectToAction("LoginTo", "Login");
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