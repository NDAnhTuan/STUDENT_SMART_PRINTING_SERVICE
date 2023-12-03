var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();
app.UseRouting();
app.UseAuthorization();

app.MapControllerRoute(
    /*name: "Login - SMART_PRINTER_SERVICE",
    pattern: "{controller=SPSOHome}/{action=ManagePrinter}/{id?}");*/
    //name: "login",
    //pattern: "LoginTo",
    //defaults: new { controller = "Login", action = "LoginTo" });
    name: "Login - SMART_PRINTER_SERVICE",
    pattern: "{controller=Login}/{action=LoginAs}/{id?}");

app.MapControllerRoute(
    name: "fileupload",
    pattern: "UploadFile",
    defaults: new { controller = "FileUpload", action = "UploadFile"});

app.Run();
