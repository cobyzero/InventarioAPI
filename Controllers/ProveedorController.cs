using InventarioAPI.Entitys;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Text.Json;
using System.Text;

namespace InventarioAPI.Controllers
{
    [ApiController]
    [Route("api")]
    public class ProveedorController : Controller
    {

        InventarioAlemanaContext db = new InventarioAlemanaContext();

        [HttpGet("getProveedor")]
        public List<Proveedor> getProveedors()
        {
            List<Proveedor> lista = new List<Proveedor>();
            try
            {
                lista = db.Proveedors.ToList();
                return lista;
            }
            catch (Exception)
            {
                return lista; 
            }
        }

        [HttpPut("putProveedor")]
        public async void putProveedor()
        {
            try
            {
                using (StreamReader reader = new StreamReader(Request.Body, Encoding.UTF8))
                {
                    Proveedor? producto = JsonSerializer.Deserialize<Proveedor>(await reader.ReadToEndAsync());

                    db.Proveedors.Update(producto!);

                    await db.SaveChangesAsync();
                }
            }
            catch (Exception)
            {

                throw;
            }
        }



        [HttpDelete("deleteProveedor")]
        public async void deleteProveedor(int id)
        {
            try
            {
                Proveedor producto = db.Proveedors.Where((t) => t.IdProveedor == id).First();
                db.Proveedors.Remove(producto);

                await db.SaveChangesAsync();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
