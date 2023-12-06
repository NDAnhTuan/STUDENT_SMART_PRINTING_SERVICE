using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using SMART_PRINTER_SERVICE.Models;
using System.Diagnostics;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Authorization.Infrastructure;

namespace SMART_PRINTER_SERVICE.Controllers
{
    [Authorize]
    public class PrintController : Controller
    {
        private readonly ILogger<PrintController> _logger;

        public PrintController(ILogger<PrintController> logger)
        {
            _logger = logger;
        }

        public IActionResult PrintPreview(string uploadedFileName)
        {
            _logger.LogInformation("Entering PrintPreview action.");
            _logger.LogInformation($"Uploaded file name: {uploadedFileName}");

            ViewBag.UploadedFileName = uploadedFileName;
            return View();
        }

        public IActionResult confirmPrint(string uploadedFileName)
        {
            _logger.LogInformation("Entering confirmPrint action.");
            _logger.LogInformation($"Uploaded file name: {uploadedFileName}");

            ViewBag.UploadedFileName = uploadedFileName;
            return View();
        }
    }
}