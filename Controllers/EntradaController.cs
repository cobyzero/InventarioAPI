 using Microsoft.AspNetCore.Mvc;
using System.Text.Json;
using System.Text;
using InventarioAPI.Entitys;

namespace InventarioAPI.Controllers
{
    [ApiController]
    [Route("api")]
    public class EntradaController : Controller
    {
        InventarioAlemanaContext db = new InventarioAlemanaContext();

        [HttpPost("addEntrada")]
        public async void addEntrada()
        {
            try
            {
                using (StreamReader reader = new StreamReader(Request.Body, Encoding.UTF8))
                {
                    List<Entradum>? producto = JsonSerializer.Deserialize<List<Entradum>>(await reader.ReadToEndAsync());
                    foreach (var item in producto)
                    {
                        item.FechaRegistro = DateTime.Now;
                        db.Entrada.Add(item);

                        Producto producto1 = db.Productos.Where((t) => t.IdProducto == item.IdProducto).First();
                        producto1.Stock += item.CantidadProductos;
                        db.Productos.Update(producto1);
                    } 

                    await db.SaveChangesAsync();
                     
                }


            }
            catch (Exception)
            {
                throw;
            }
        }


        [HttpGet("getEntrada")]
        public List<Entradum> getEntrada()
        {
            try
            {
                return db.Entrada.ToList();
            }
            catch (Exception)
            {

                throw;
            }
        }

        [HttpGet("getEntradaForDocumento")]
        public List<Entradum> getEntradaForDocumento(string documento)
        { 
            try
            {
                return db.Entrada.Where((t) => t.NumeroDocumento == documento).ToList();
            }
            catch (Exception)
            {

                throw;
            }
        }

        [HttpGet("getEntradaForProducto")]
        public List<Entradum> getEntradaForProducto(int id)
        {
            try
            {
                return db.Entrada.Where((t) => t.IdProducto == id).ToList();
            }
            catch (Exception)
            {

                throw;
            }
        }
         
    
    }
}
