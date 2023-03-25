using InventarioAPI.Data;
using Microsoft.AspNetCore.Mvc;
using System.Text.Json;
using System.Text.Json.Serialization;

namespace InventarioAPI.Controllers
{
    [ApiController]
    [Route("api")]
    public class LoginController : Controller
    {
        [HttpGet("login")] 
        public Usuario login (string username, string password)
        {
            Usuario usuario = new Usuario();
            try
            {
                using (var db = new InventarioAlemanaContext())
                {
                  
                    return db.Usuarios.Where((t) => t.NombreUsuario == username & t.Clave == password).First();
                }
            }
            catch (Exception)
            {

                return new Usuario(){
                IdUsuario = 0
                };  
            }
            
        }
    }
}
