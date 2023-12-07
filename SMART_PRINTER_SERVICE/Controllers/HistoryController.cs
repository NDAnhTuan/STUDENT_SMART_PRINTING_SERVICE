using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using SMART_PRINTER_SERVICE.Models;
using SMART_PRINTER_SERVICE.Data;

namespace SMART_PRINTER_SERVICE.Controllers
{
    [Authorize]
    public class HistoryController : Controller
    {
        private readonly databaseSEContext _database;

        public HistoryController(databaseSEContext database)
        {
            _database = database;
        }
        public IActionResult HistoryPrinting()
        {
            var OrdersInHistory = _database.Orders
                .Where(o => o.Status == "Taken")
                .ToList();

            return View("~/Views/Home/HistoryOrder.cshtml", OrdersInHistory);
        }
    }
}
