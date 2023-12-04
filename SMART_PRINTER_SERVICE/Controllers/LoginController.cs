using Microsoft.AspNetCore.Mvc;
using SMART_PRINTER_SERVICE.Models;
using SMART_PRINTER_SERVICE.Data;
using System.Diagnostics;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using System.Security.Claims;

namespace SMART_PRINTER_SERVICE.Controllers
{
    public class LoginController : Controller
    {
        private readonly databaseSEContext _database;

        public LoginController(databaseSEContext database)
        {
            _database = database;
        }
        public IActionResult LoginTo()
        {
            ClaimsPrincipal claimUser = HttpContext.User;
            if (claimUser.Identity.IsAuthenticated)
                return RedirectToAction("Homepage", "Home");
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> LoginTo(UserAccount model)
        {
            var user = _database.UserAccounts.FirstOrDefault(u => u.Username == model.Username && u.Password == model.Password);

            if (user != null)
            {
                var role = user.Role; // Assuming the user object has a Role property

                // Log the role for debugging
                Console.WriteLine($"User Role: {role}");

                List<Claim> claims = new List<Claim>()
                {
                    new Claim(ClaimTypes.NameIdentifier, model.Username),
                    new Claim("OtherProperties", "Example Role"),
                    new Claim(ClaimTypes.Role, role)
                };

                ClaimsIdentity claimsIdentity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);

                AuthenticationProperties properties = new AuthenticationProperties()
                {
                    AllowRefresh = true,
                    IsPersistent = true // Set to false to force reauthentication on each session
                };
                // Sign the user in with the new claims
                await HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, new ClaimsPrincipal(claimsIdentity));

                if (role == "student")
                {
                    return RedirectToAction("Homepage", "Home");
                }
                else if (role == "spso")
                {
                    return RedirectToAction("LoginAs", "Login");
                }
            }

            ViewData["ValidateMessage"] = "user not found";
            return View();
        }

        public IActionResult LoginAs()
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
