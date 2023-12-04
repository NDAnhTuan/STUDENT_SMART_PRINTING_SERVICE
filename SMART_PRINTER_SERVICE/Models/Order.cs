using MessagePack;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;
namespace SMART_PRINTER_SERVICE.Models
{
    public class Order
    {
        public string OrderId { get; set; } = null!;
        [Required]
        public string Choice { get; set; } = null!;
        public int Copies { get; set; }
        public string Filename { get; set; } = null!;
        public string Sizepage { get; set; } = null!;
        public string Colorfile { get; set; } = null!;
        public int Numside { get; set; }
        public string Status { get; set; } = null!;
        public int Numpage { get; set; }
        public TimeSpan TimeOrder { get; set; }
        public DateTime DayOrder { get; set; }
        public string UsernameOrder { get; set; } = null!;
        public string? PrinterOrder { get; set; }

        public virtual UserAccount UsernameOrderNavigation { get; set; } = null!;
    }
}
