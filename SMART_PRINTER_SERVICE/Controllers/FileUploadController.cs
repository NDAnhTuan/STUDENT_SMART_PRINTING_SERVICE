using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.IO;
using System.Threading.Tasks;

namespace SMART_PRINTER_SERVICE.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class FileUploadController : ControllerBase
    {
        private readonly ILogger<FileUploadController> _logger;

        public FileUploadController(ILogger<FileUploadController> logger)
        {
            _logger = logger;
        }

        [HttpPost]
        [Route("UploadFile")]
        public async Task<IActionResult> UploadFile()
        {
            _logger.LogInformation("FileUploadController - UploadFile action started.");

            var file = Request.Form.Files[0];
            if (file.Length > 0)
            {
                // Specify the directory path (relative to the project root)
                var directoryPath = Path.Combine("wwwroot", "Uploads");

                // Specify the full path including the directory
                var fullPath = Path.Combine(Directory.GetCurrentDirectory(), directoryPath);

                // Create the directory if it doesn't exist
                if (!Directory.Exists(fullPath))
                {
                    Directory.CreateDirectory(fullPath);
                }

                // Combine the directory path and file name to get the full file path
                var filePath = Path.Combine(fullPath, file.FileName);

                using (var stream = new FileStream(filePath, FileMode.Create))
                {
                    await file.CopyToAsync(stream);
                }

                _logger.LogInformation("File uploaded successfully. Path: {FilePath}", filePath);

                // Get the uploaded file name
                string uploadedFileName = file.FileName;

                // Redirect to PrintPreview action with the uploaded file name
                return RedirectToAction("PrintPreview", "Print", new { uploadedFileName });
            }

            _logger.LogWarning("File upload request received, but no file was attached.");

            return BadRequest("File not uploaded");
        }
    }
}
