using Microsoft.AspNetCore.Mvc;
using System.Text.Json;
using System.Text;
using InventarioAPI.Entitys;
using InventarioAPI.Features.User.Domain.Entitys;
using Microsoft.EntityFrameworkCore;

namespace InventarioAPI.Features.User.Controllers
{
    [ApiController]
    [Route("api/[Controller]")]
    public class UserController : Controller
    {
        InventarioAlemanaContext context = new InventarioAlemanaContext();


        [HttpGet]
        public async Task<IActionResult> GetUser([FromBody]GetUserReponseEntity entity)
        {
            try
            {
                var user = await context.Users.Where((e) => e.FirebaseToken == entity.uid).FirstOrDefaultAsync();

                if (user == null)
                {
                    throw new Exception();
                }

                return Ok(user);
            }
            catch (Exception)
            {
                return Unauthorized();
            }
        }

        [HttpGet("Access")]
        public async Task<IActionResult> GetAccessToUser([FromBody] GetUserReponseEntity entity)
        {
            try
            {
                var user = await context.Users.Where((e) => e.FirebaseToken == entity.uid).FirstOrDefaultAsync();

                if (user == null)
                {
                    throw new Exception();
                }

                var acces = await context.Permisos.Where((e) => e.IdPermisos == user.IdAccess).FirstOrDefaultAsync();

                if (acces == null)
                {
                    throw new Exception();
                }

                return Ok(acces);
            }
            catch (Exception)
            {
                return NotFound();
            }
        }
    }
}
