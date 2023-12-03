using Microsoft.AspNetCore.Mvc;
using SMART_PRINTER_SERVICE.Models;
using System.Diagnostics;

namespace SMART_PRINTER_SERVICE.Controllers
{
    public class PrintController : Controller
    {
        public IActionResult PrintPreview(string uploadedFileName)
        {
            // Pass the uploaded file name to the view
            ViewBag.UploadedFileName = uploadedFileName;

            return View();
        }

        public IActionResult confirmPrint()
        {
            return View();
        }
    }
}
