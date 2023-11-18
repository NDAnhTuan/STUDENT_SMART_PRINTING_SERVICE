using Microsoft.AspNetCore.Mvc;

namespace SMART_PRINTER_SERVICE.Controllers
{
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
