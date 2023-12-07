using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SMART_PRINTER_SERVICE.Data;
using SMART_PRINTER_SERVICE.Models;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authorization;

namespace SMART_PRINTER_SERVICE.Controllers
{
    [Authorize(Roles = "spso")]
    public class PrinterController : Controller
    {
        private readonly databaseSEContext _dbContext;

        public PrinterController(databaseSEContext dbContext)
        {
            _dbContext = dbContext;
        }

        // Action for displaying the list of printers
        public ActionResult Index()
        {
            var printers = _dbContext.Printers.ToList();
            return View(printers);
        }

        // Action for handling the search
        //public ActionResult Search(string searchTerm)
        //{
        //    var printers = _dbContext.Printers
        //        .Where(p => EF.Functions.Contains(p.PrinterName, searchTerm))
        //        .ToList();

        //    return View("ManagePrinter", printers);
        //}
        public ActionResult Search()
        {
            var printers = _dbContext.Printers.ToList();

            // Trả về view "ManagePrinter" với danh sách máy in
            return View("~/Views/SPSOHome/ManagePrinter", printers);
        }

    }
}



