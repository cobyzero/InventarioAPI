using InventarioAPI.Entitys;
using Microsoft.AspNetCore.Mvc;
using System.Text.Json;
using System.Text;

namespace InventarioAPI.Controllers
{
    [ApiController]
    [Route("api")]
    public class SalidaController : Controller
    {

        InventarioAlemanaContext db = new InventarioAlemanaContext();

        [HttpGet("getStock")]
        public int getStock(int id)
        {
            try
            {
                return db.Productos.Where((t) => t.IdProducto == id).First().Stock;
            }
            catch (Exception)
            {
                return 0;
            }
             
        }


        [HttpPost("addSalida")]
        public async void addSalida()
        {
            try
            {
                using (StreamReader reader = new StreamReader(Request.Body, Encoding.UTF8))
                {

                    List<Salidum>? producto = JsonSerializer.Deserialize<List<Salidum>>(await reader.ReadToEndAsync());


                    foreach (var item in producto!)
                    {
                        item.FechaRegistro = DateTime.Now;
                        db.Salida.Add(item);

                        Producto producto1 = db.Productos.Where((t) => t.IdProducto == item.IdProducto).First();
                        producto1.Stock -= item.CantidadProductos;
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

        [HttpGet("getSalida")]
        public List<Salidum> getSalida()
        {
            return db.Salida.ToList();
        }

        [HttpGet("getSalidaForDocumento")]
        public List<Salidum> getSalidaForDocumento(string documento)
        {
            List<Salidum> oList = new List<Salidum>();
            try
            {
                oList = db.Salida.Where((t) => t.NumeroDocumento == documento).ToList();
                return oList;
            }
            catch (Exception)
            {
                return oList;
            }
        }

        [HttpGet("getSalidaForProducto")]
        public List<Salidum> getSalidaForProducto(int id)
        {
            try
            {
                return db.Salida.Where((t) => t.IdProducto == id).ToList();
            }
            catch (Exception)
            { 
                throw;
            }
        }
    }
}
