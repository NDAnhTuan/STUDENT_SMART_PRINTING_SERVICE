using Microsoft.EntityFrameworkCore;
using SMART_PRINTER_SERVICE.Models;

namespace SMART_PRINTER_SERVICE.Data
{
    public class databaseSEContext : DbContext
    {
        public databaseSEContext(DbContextOptions<databaseSEContext> options) : base(options)
        {

        }
        public DbSet<Order> Orders { get; set; } = null!;
        public DbSet<Printer> Printers { get; set; } = null!;
        public DbSet<UserAccount> UserAccounts { get; set; } = null!;
    }
}
