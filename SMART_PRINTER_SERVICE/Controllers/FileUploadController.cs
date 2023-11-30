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
        public async Task<IActionResult> UploadFile()
        {
            _logger.LogInformation("FileUploadController - UploadFile action started.");

            var file = Request.Form.Files[0];
            if (file.Length > 0)
            {
                var filePath = Path.Combine("Uploads", file.FileName);
                using (var stream = new FileStream(filePath, FileMode.Create))
                {
                    await file.CopyToAsync(stream);
                }

                _logger.LogInformation("File uploaded successfully. Path: {FilePath}", filePath);


                return Ok(new { Message = "File uploaded successfully", FilePath = filePath });
            }

            _logger.LogWarning("File upload request received, but no file was attached.");

            return BadRequest("File not uploaded");
        }
    }
}
