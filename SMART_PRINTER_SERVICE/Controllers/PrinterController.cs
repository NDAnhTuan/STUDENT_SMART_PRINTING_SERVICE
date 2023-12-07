using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SMART_PRINTER_SERVICE.Data;
using SMART_PRINTER_SERVICE.Models;

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
    [HttpPost]
    public ActionResult Search(string searchTerm)
    {
        var printers = _dbContext.Printers
    .Where(p => EF.Functions.Like(p.PrinterName, $"%{searchTerm}%")).ToList();;

        return View("Index", printers);
    }
}



