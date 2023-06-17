using InventarioAPI.Data;
using Microsoft.AspNetCore.Mvc;
using System.Net;
using System.Text.Json;
using System.Text.Json.Serialization;

namespace InventarioAPI.Controllers
{
    [ApiController]
    [Route("api")]
    public class LoginController : Controller
    {
        InventarioAlemanaContext context;
        public LoginController(InventarioAlemanaContext inventarioAlemanaContext) {
            this.context = inventarioAlemanaContext;
        }


        [HttpGet("login")] 
        public Usuario login (string username, string password)
        {
            try
            {
                return context.Usuarios.Where((t) => t.NombreUsuario == username && t.Clave == password).First();
            }
            catch (Exception)
            {
                Response.StatusCode = 404;
                return new Usuario();  
            }
            
        }
    }
}
