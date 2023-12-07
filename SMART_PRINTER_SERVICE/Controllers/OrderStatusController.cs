using Microsoft.AspNetCore.Mvc;
using SMART_PRINTER_SERVICE.Models;
using SMART_PRINTER_SERVICE.Data;
using System.Linq;
using Microsoft.AspNetCore.Authorization;

namespace SMART_PRINTER_SERVICE.Controllers
{
    [Authorize]
    public class OrderStatusController : Controller
    {
        private readonly databaseSEContext _database;

        public OrderStatusController(databaseSEContext database)
        {
            _database = database;
        }

        public IActionResult OrderStatus()
        {
            var allOrders = _database.Orders.ToList();
            return View("OrderStatus", allOrders);
        }

        public IActionResult OrderStatusPending()
        {
            var pendingOrders = _database.Orders.Where(o => o.Status == "waiting").ToList();
            return View("OrderStatusPending", pendingOrders);
        }
        public IActionResult OrderPrinting()
        {
            var orders = _database.Orders.ToList();
            return View("~/Views/SPSOHome/ViewOrder.cshtml", orders);
        }
        [HttpPost]
        public IActionResult UpdateOrderStatus(string orderId, string newStatus)
        {
            var order = _database.Orders.FirstOrDefault(o => o.OrderId == orderId);

            if (order != null)
            {
                order.Status = newStatus;
                _database.SaveChanges();
            }
            return RedirectToAction("HomePage","Home");
        }

        public IActionResult OrderStatusComplete()
        {
            var completeOrders = _database.Orders
                .Where(o => o.Status == "Finished")
                .ToList();

            return View("OrderStatusComplete", completeOrders);
        }
    }
}
