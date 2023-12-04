using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SMART_PRINTER_SERVICE.Migrations
{
    public partial class initsetup : Migration
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

            migrationBuilder.CreateTable(
                name: "UserAccounts",
                columns: table => new
                {
                    Username = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    Password = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Fullname = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Email = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    PagePrint = table.Column<int>(type: "int", nullable: true),
                    Falcuty = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Major = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Role = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UserAccounts", x => x.Username);
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
