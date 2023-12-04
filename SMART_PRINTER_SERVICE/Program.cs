using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using SMART_PRINTER_SERVICE.Data;

var builder = WebApplication.CreateBuilder(args);


builder.Services.AddControllersWithViews();
builder.Services.AddAuthentication(
    CookieAuthenticationDefaults.AuthenticationScheme)
    .AddCookie(option =>{
    option.LoginPath = "/Login/LoginTo";
    option.ExpireTimeSpan = TimeSpan.FromMinutes(20);
});
builder.Services.AddDbContext<databaseSEContext>(options => options.UseSqlServer(
    builder.Configuration.GetConnectionString("SMART_PRINTER_SERVICEContext")
    ));

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthentication();
app.UseAuthorization();

app.MapControllerRoute(
    name: "Login - SMART_PRINTER_SERVICE",
    pattern: "{controller=Login}/{action=LoginTo}/{id?}");
//name: "login",
//pattern: "LoginTo",
//defaults: new { controller = "Login", action = "LoginTo" });
app.Run();
