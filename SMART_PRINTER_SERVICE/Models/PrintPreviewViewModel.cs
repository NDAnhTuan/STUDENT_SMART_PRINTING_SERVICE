using Microsoft.AspNetCore.Mvc;

namespace SMART_PRINTER_SERVICE.Models
{
    public class PrintPreviewViewModel
    {
        // Attribute adjusted by file upload
        public string FileName { get; set; }

        // Other fixed or user-typed properties
        public string Printer { get; set; }
        public int NumOfCopies { get; set; }
        public string PaperType { get; set; }
        public string ColorType { get; set; }
        public string FormatType { get; set; }

        // Other properties and methods as needed
    }
}
