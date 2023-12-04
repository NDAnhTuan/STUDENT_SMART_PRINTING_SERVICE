using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity.EntityFramework;
namespace SMART_PRINTER_SERVICE.Identity
{
    public class AppUser : IdentityUser
    {
        public DateTime? Birthdayb {  get; set; }
        public string Address { get; set; }
        public string City { get; set; }
    }
}
