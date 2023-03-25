using InventarioAPI.Data;
using Microsoft.AspNetCore.Mvc;
using System.Text.Json;
using System.Text;

namespace InventarioAPI.Controllers
{
    [ApiController]
    [Route("api")]
    public class TecnicoController : Controller
    {
        InventarioAlemanaContext db = new InventarioAlemanaContext();

        [HttpPut("putUser")]
        public async void putUser()
        {

            try
            {
                using (StreamReader reader = new StreamReader(Request.Body, Encoding.UTF8))
                {
                    Usuario? producto = JsonSerializer.Deserialize<Usuario>(await reader.ReadToEndAsync());

                    db.Usuarios.Update(producto!);

                    await db.SaveChangesAsync();
                }
            }
            catch (Exception)
            {

                throw;
            }
        }


        [HttpDelete("deleteUser")]
        public async void deleteUser(int id)
        {
            try
            {
                Usuario producto = db.Usuarios.Where((t) => t.IdUsuario == id).First();
                db.Usuarios.Remove(producto);

                await db.SaveChangesAsync();
            }
            catch (Exception)
            { 
                throw;
            }
        }
    }
}
