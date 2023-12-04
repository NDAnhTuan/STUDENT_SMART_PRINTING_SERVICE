using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
namespace SMART_PRINTER_SERVICE.Models
{
    public class UserAccount
    {
        public UserAccount()
        {
            Orders = new HashSet<Order>();
            PrinterIdmanageds = new HashSet<Printer>();
        }
        [Key]
        public string Username { get; set; } = null!;
        [Required]
        public string Password { get; set; } = null!;
        [Required]
        public string Fullname { get; set; } = null!;
        public string Email { get; set; } = null!;
        [Required]
        public int? PagePrint { get; set; }
        public string? Falcuty { get; set; }
        public string? Major { get; set; }
        [Required]
        public string Role { get; set; } = null!;

        public virtual ICollection<Order> Orders { get; set; }

        public virtual ICollection<Printer> PrinterIdmanageds { get; set; }
    }
}
