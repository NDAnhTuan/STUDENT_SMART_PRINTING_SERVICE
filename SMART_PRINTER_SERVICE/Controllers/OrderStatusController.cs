using Microsoft.AspNetCore.Mvc;
using SMART_PRINTER_SERVICE.Models;
using System.Diagnostics;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authorization;

namespace SMART_PRINTER_SERVICE.Controllers
{
    [Authorize]
    public class OrderStatusController : Controller
    {
        public IActionResult OrderStatus()
        {
            return View();
        }

        public IActionResult OrderStatusPending()
        {
            return View();
        }

        public IActionResult OrderStatusComplete()
        {
            return View();
        }
    }
}
