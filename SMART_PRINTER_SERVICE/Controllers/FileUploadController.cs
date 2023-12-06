using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using PdfSharp.Pdf.IO;
using PdfSharp.Pdf;
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

        private string GetFilePath(string fileName)
        {
            // Implement your logic to get the file path based on the file name
            // Make sure to replace this with your actual logic
            return Path.Combine("wwwroot", "Uploads", fileName);
        }

        public async Task<int> GetTotalPagesAsync(string filePath)
        {
            try
            {
                int pageCount = await Task.Run(() =>
                {
                    using (PdfDocument document = PdfReader.Open(filePath, PdfDocumentOpenMode.ReadOnly))
                    {
                        return document.PageCount;
                    }
                });

                return pageCount;
            }
            catch (PdfReaderException ex)
            {
                // Log and handle PdfReaderException
                _logger.LogError(ex, $"PdfReaderException: {ex.Message}");
                return -1;
            }
            catch (Exception ex)
            {
                // Log and handle other exceptions
                _logger.LogError(ex, $"Exception: {ex.Message}");
                return -1;
            }
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

        [HttpGet]
        [Route("GetTotalPages")]
        public async Task<IActionResult> GetTotalPagesAction(string fileName)
        {
            try
            {
                string filePath = GetFilePath(fileName);
                // Assuming you have a method to get the total pages based on the file name
                int totalPages = await GetTotalPagesAsync(filePath);

                return Ok(new { TotalPages = totalPages });
            }
            catch (Exception ex)
            {
                // Handle the exception, e.g., log it or return an error response
                return BadRequest(new { Message = "Error getting total pages", Error = ex.Message });
            }
        }

    }
}