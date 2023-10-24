 using InventarioAPI.Entitys;
using InventarioAPI.Features.Auth.Domain.Entitys;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Net;
using System.Text.Json;
using System.Text.Json.Serialization;

namespace InventarioAPI.Controllers
{
    [ApiController]
    [Route("api")]
    public class AuthController : Controller
    {
        InventarioAlemanaContext context;
        public AuthController(InventarioAlemanaContext inventarioAlemanaContext) {
            this.context = inventarioAlemanaContext;
        }

 
    }
}
