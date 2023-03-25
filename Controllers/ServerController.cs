using Microsoft.AspNetCore.Mvc;

namespace InventarioAPI.Controllers
{
    [ApiController]
    public class ServerController : Controller
    {
        [HttpGet("server")]
        public int checkServer()
        {
            return 1;
        }
    }
}
