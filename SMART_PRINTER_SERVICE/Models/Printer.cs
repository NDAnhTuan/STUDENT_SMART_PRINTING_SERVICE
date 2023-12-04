using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
namespace SMART_PRINTER_SERVICE.Models
{
    public class Printer
    {
        public Printer()
        {
            UsernameManagers = new HashSet<UserAccount>();
        }
        [Key]
        public string PrinterId { get; set; } = null!;
        [Required]
        public string PrinterName { get; set; } = null!;
        public string PrinterLocation { get; set; } = null!;
        public string Facility { get; set; } = null!;
        [Required]
        public string Status { get; set; } = null!;

        public virtual ICollection<UserAccount> UsernameManagers { get; set; }
    }
}
