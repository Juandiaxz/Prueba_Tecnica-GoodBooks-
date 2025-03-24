


using GoodBooks.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews();
builder.Services.AddDbContext<GoodBooksContext>(options => options.UseSqlServer(builder.Configuration.GetConnectionString("BooksConnection")));

var app = builder.Build();

using (var scope = app.Services.CreateScope())
{   
    var context = scope.ServiceProvider.GetRequiredService<GoodBooksContext>();
    context.Database.Migrate(); //Migraciones automaticamente

}


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
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
