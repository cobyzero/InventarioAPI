using InventarioAPI.Data;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();

builder.Services.AddDbContext<InventarioAlemanaContext>((a) =>
{
    a.UseSqlServer(builder.Configuration.GetConnectionString("db"));
});

var app = builder.Build();
 

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
