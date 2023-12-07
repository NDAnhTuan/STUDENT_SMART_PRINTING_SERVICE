using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SMART_PRINTER_SERVICE.Migrations
{
    public partial class InitSetup : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Printers",
                columns: table => new
                {
                    PrinterId = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    PrinterName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    PrinterLocation = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Facility = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Status = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Printers", x => x.PrinterId);
                });
            migrationBuilder.InsertData(
                table: "Printers",
                columns: new[] { "PrinterId", "PrinterName", "PrinterLocation", "Facility", "Status" },
                values: new object[,]
                {
                    { "Printer01", "Floor 5 H2", "Floor 5 H2", "CS2", "Active" },
                    { "Printer02", "Canteen H3", "Canteen H3", "CS2", "Active" },
                    { "Printer03", "WC H6", "WC H6", "CS2", "Active" },
                    { "Printer04", "Parking lot", "Parking lot behind", "CS2", "Active" },
                    { "Printer05", "Underground H6", "Undergroung H6", "CS2", "Active" },
                    { "Printer06", "Roof H1", "Floor 6 H1", "CS2", "Inactive" },
                });

            migrationBuilder.CreateTable(
                name: "UserAccounts",
                columns: table => new
                {
                    Username = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    Password = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Fullname = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Email = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    PagePrint = table.Column<int>(type: "int", nullable: false),
                    Falcuty = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Major = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Role = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UserAccounts", x => x.Username);
                });
            migrationBuilder.InsertData(
        table: "UserAccounts",
        columns: new[] { "Username", "Password", "Fullname", "Email", "PagePrint", "Falcuty", "Major", "Role" },
        values: new object[,]
        {
                    { "tiendungk21", "babychickens", "Ta Nguyen Tien Dung", "dung@gmail.com", 100, "KH KTMT", "KHMT", "student" },
                    { "thanhhaik21", "babychickens", "Phan Thanh Hai", "hai@gmail.com", 100, "KH KTMT", "KHMT", "student" },
                    { "minhdiemk21", "babychickens", "Nguyen Minh Diem", "diem@gmail.com", 100, "KH KTMT", "KHMT", "student" },
                    { "duycuongk21", "babychickens", "Doan Nguyen Duy Cuong", "cuong@gmail.com", 100, "KH KTMT", "KHMT", "student" },
                    { "doanhoangk21", "babychickens", "Nguyen Doan Hoang", "hoang@gmail.com", 100, "KH KTMT", "KHMT", "student" },
                    { "anhtuank21", "babychickens", "Nguyen Duc Anh Tuan", "tuan@gmail.com", 100, "KH KTMT", "KHMT", "student" },
                    { "tatlinhk21", "babychickens", "Nguyen Tat Linh", "linh@gmail.com", 100, "KH KTMT", "KHMT", "student" },
                    { "manager1", "managers", "Nguyen Duc Anh", "anh@gmail.com", 100, null, null, "spso" },
                    { "manager2", "managers", "Nguyen Anh Duc", "duc@gmail.com", 100, null, null, "spso" },
                    { "manager3", "managers", "Nguyen Hai Duong", "duong@gmail.com", 100, null, null, "spso" },
        });

            migrationBuilder.CreateTable(
                name: "Orders",
                columns: table => new
                {
                    OrderId = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    Choice = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Copies = table.Column<int>(type: "int", nullable: false),
                    Filename = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Sizepage = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Colorfile = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Numside = table.Column<int>(type: "int", nullable: false),
                    Status = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Numpage = table.Column<int>(type: "int", nullable: false),
                    TimeOrder = table.Column<TimeSpan>(type: "time", nullable: false),
                    DayOrder = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UsernameOrder = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    PrinterOrder = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UsernameOrderNavigationUsername = table.Column<string>(type: "nvarchar(450)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Orders", x => x.OrderId);
                    table.ForeignKey(
                        name: "FK_Orders_UserAccounts_UsernameOrderNavigationUsername",
                        column: x => x.UsernameOrderNavigationUsername,
                        principalTable: "UserAccounts",
                        principalColumn: "Username",
                        onDelete: ReferentialAction.Cascade);
                });
            //migrationBuilder.InsertData(
            //    table: "Orders",
            //    columns: new[] { "OrderId", "Choice", "Copies", "Filename", "Sizepage", "Colorfile", "Numside", "Status", "Numpage", "TimeOrder", "DayOrder", "UsernameOrder", "PrinterOrder", "UsernameOrderNavigationUsername" },
            //    values: new object[,]
            //    {

            //    });

            migrationBuilder.CreateTable(
                name: "PrinterUserAccount",
                columns: table => new
                {
                    PrinterIdmanagedsPrinterId = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    UsernameManagersUsername = table.Column<string>(type: "nvarchar(450)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PrinterUserAccount", x => new { x.PrinterIdmanagedsPrinterId, x.UsernameManagersUsername });
                    table.ForeignKey(
                        name: "FK_PrinterUserAccount_Printers_PrinterIdmanagedsPrinterId",
                        column: x => x.PrinterIdmanagedsPrinterId,
                        principalTable: "Printers",
                        principalColumn: "PrinterId",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_PrinterUserAccount_UserAccounts_UsernameManagersUsername",
                        column: x => x.UsernameManagersUsername,
                        principalTable: "UserAccounts",
                        principalColumn: "Username",
                        onDelete: ReferentialAction.Cascade);
                });
            migrationBuilder.InsertData(
                table: "PrinterUserAccount",
                columns: new[] { "PrinterIdmanagedsPrinterId", "UsernameManagersUsername" },
                values: new object[,]
                {
                    { "Printer01", "manager1" },
                    { "Printer02", "manager3" },
                    { "Printer03", "manager2" },
                    { "Printer04", "manager2" },
                    { "Printer05", "manager3" },
                    { "Printer06", "manager1" },
                });

            migrationBuilder.CreateIndex(
                name: "IX_Orders_UsernameOrderNavigationUsername",
                table: "Orders",
                column: "UsernameOrderNavigationUsername");

            migrationBuilder.CreateIndex(
                name: "IX_PrinterUserAccount_UsernameManagersUsername",
                table: "PrinterUserAccount",
                column: "UsernameManagersUsername");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Orders");

            migrationBuilder.DropTable(
                name: "PrinterUserAccount");

            migrationBuilder.DropTable(
                name: "Printers");

            migrationBuilder.DropTable(
                name: "UserAccounts");
        }
    }
}
