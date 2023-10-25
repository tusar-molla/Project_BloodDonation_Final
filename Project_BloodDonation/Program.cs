using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.CodeAnalysis.Options;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using Project_BloodDonation.Data;
using System.IO;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
var connectionString = builder.Configuration.GetConnectionString("BloodConnection");
builder.Services.AddDbContext<ApplicationDbContext>(options =>
{
   options.UseSqlServer(connectionString);
   options.UseQueryTrackingBehavior(QueryTrackingBehavior.NoTracking);
   });
builder.Services.AddDatabaseDeveloperPageExceptionFilter();

builder.Services.AddIdentity<ApplicationUser,IdentityRole>(option =>
{
    option.SignIn.RequireConfirmedEmail = false;
    option.SignIn.RequireConfirmedAccount = false;
}).AddDefaultTokenProviders()
.AddRoles<IdentityRole>()
    .AddEntityFrameworkStores<ApplicationDbContext>();
builder.Services.AddControllersWithViews();
// Add Identity path For Authorization in Controller.
builder.Services.ConfigureApplicationCookie(option => {
   option.LoginPath = "/Identity/Account/Login";
   option.LogoutPath = "/Identity/Account/Logout";
});
builder.Services.AddRazorPages();


//builder.Services.AddTransient<IEmailSender, EmailSender >();
var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseMigrationsEndPoint();
}
else
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
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");
app.MapRazorPages();

app.Run();
