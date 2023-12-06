using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using SMART_PRINTER_SERVICE.Models;
using SMART_PRINTER_SERVICE.Data;

namespace SMART_PRINTER_SERVICE.Controllers
{
    [Authorize]
    [ApiController]
    [Route("api/[controller]")]
    public class OrderConfirmController : Controller
    {
        private readonly databaseSEContext _database;

        public OrderConfirmController(databaseSEContext database)
        {
            _database = database;
        }
        [HttpPost("SubmitOrder")]
        public async Task<IActionResult> SubmitOrder([FromBody] Order orderViewModel)
        {
            //if (ModelState.IsValid)
            //{
            //    var order = new Order
            //    {
            //        OrderId = Guid.NewGuid().ToString(),
            //        Choice = orderViewModel.Paper,
            //        Copies = orderViewModel.NumOfCopies,
            //        Filename = orderViewModel.Filename,
            //        Sizepage = orderViewModel.Format,
            //        Colorfile = orderViewModel.Color,
            //        Numside = orderViewModel.Numside,
            //        Status = "Pending",
            //        Numpage = orderViewModel.Numpage,
            //        TimeOrder = DateTime.Now.TimeOfDay,
            //        DayOrder = DateTime.Now,
            //        UsernameOrder = orderViewModel.UsernameOrder,
            //        PrinterOrder = orderViewModel.PrinterOrder,
            //        UsernameOrderNavigation = new UserAccount { Username = orderViewModel.UsernameOrderNavigationUsername }
            //    };

            //    _database.Orders.Add(order);
            //    await _database.SaveChangesAsync();
            return RedirectToAction("OrderStatus", "OrderStatus");
            //}
            //return BadRequest(ModelState);
        }
    }
}
