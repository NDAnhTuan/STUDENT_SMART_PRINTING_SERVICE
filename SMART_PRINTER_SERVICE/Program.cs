using SMART_PRINTER_SERVICE;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews();

var app = builder.Build();

// Use the startup configuration
var env = app.Environment;
var startup = new Startup(app.Configuration);
startup.Configure(app, env);

app.Run();
