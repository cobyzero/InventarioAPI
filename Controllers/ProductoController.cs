using InventarioAPI.Entitys;
using Microsoft.AspNetCore.Mvc;
using System.Text.Json;
using System.Text;

namespace InventarioAPI.Controllers
{
    [ApiController]
    [Route("api")]
    public class ProductoController : Controller
    {

        InventarioAlemanaContext db = new InventarioAlemanaContext();

        [HttpPost("cargarProductos")]
        public async void agregarProductos()
        {
            try
            {
                using (StreamReader reader = new StreamReader(Request.Body, Encoding.UTF8))
                {
                    List<Producto>? producto = JsonSerializer.Deserialize<List<Producto>>(await reader.ReadToEndAsync());
                    foreach (var item in producto)
                    {
                        if (db.Productos.Where((t) => t.Codigo == item.Codigo).ToList().Count() != 0)
                        {
                            return;
                        }

                        db.Productos.Add(item);
                    }


                    await db.SaveChangesAsync();


                }


            }
            catch (Exception)
            {
                throw;
            }
        }


        [HttpGet("checkProducto")]
        public int checkProductoId(string codigo)
        {
            try
            {
                return db.Productos.Where((t) => t.Codigo == codigo).ToList().Count();

            }
            catch (Exception)
            {
                return 0;
            }
        }


        [HttpGet("getProductos")]
        public List<Producto> getProductos()
        {
            try
            {
                return db.Productos.ToList();
            }
            catch (Exception)
            {

                throw;
            }
        }

        [HttpPut("putProducto")]
        public async void putProducto() {
            try
            {
                using (StreamReader reader = new StreamReader(Request.Body, Encoding.UTF8))
                {
                    Producto? producto = JsonSerializer.Deserialize<Producto>(await reader.ReadToEndAsync());
                     
                    db.Productos.Update(producto!);
                     
                    await db.SaveChangesAsync(); 
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

         

        [HttpDelete("deleteProducto")]
        public async void deleteProducto(int id)
        {
            try
            {
                Producto producto = db.Productos.Where((t)=> t.IdProducto == id).First();
                db.Productos.Remove(producto);

                await db.SaveChangesAsync();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
