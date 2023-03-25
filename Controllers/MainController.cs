using InventarioAPI.Data;
using Microsoft.AspNetCore.Mvc;
using System.Globalization;
using System.Text;
using System.Text.Json;

namespace InventarioAPI.Controllers
{
    [ApiController]
    [Route("api")]
    public class MainController : Controller
    {
        InventarioAlemanaContext db = new InventarioAlemanaContext(); 

        [HttpGet("count")]
        public List<int> MainCount()
        {
            List<int> result = new List<int>(); 
            try
            {
                
                    result.Add(db.Entrada.ToList().Count());
                    result.Add(db.Salida.ToList().Count());
                    result.Add(db.Productos.ToList().Count());
                    result.Add(db.Usuarios.ToList().Count());
                     
                    return result;
 
            }
            catch (Exception)
            {
                return result;
            }
        }

        [HttpGet("getGraficoEntradas")]
        public List<SalesData> getGraficoEntradas()
        { 
            List<DateTime> resultFecha = db.Entrada.OrderByDescending((t) => t.FechaRegistro).Select((t)=>t.FechaRegistro).Distinct().ToList();

            List<SalesData> datos = new List<SalesData>();

            foreach (var item in resultFecha)
            {
                int cant = db.Entrada.Where((t) => t.FechaRegistro == item).ToList().Count();

                datos.Add(new SalesData()
                {
                    year = item.ToString(),
                    sales = cant
                });
            }

            return datos;
        }

        [HttpGet("getGraficoSalidas")]
        public List<SalesData> getGraficoSalidas()
        {
            List<DateTime> resultFecha = db.Salida.OrderByDescending((t) => t.FechaRegistro).Select((t) => t.FechaRegistro).Distinct().ToList();

            List<SalesData> datos = new List<SalesData>();

            foreach (var item in resultFecha)
            {
                int cant = db.Salida.Where((t) => t.FechaRegistro == item).ToList().Count();

                datos.Add(new SalesData()
                {
                    year = item.ToString(),
                    sales = cant
                });
            }

            return datos;
        }


        [HttpGet("getProductosStock")]
        public List<Producto> getProductosStock(int max)
        {
            return db.Productos.Where((t)=> t.Stock > 0 && t.Stock < max).ToList();
        }


        [HttpGet("getPermisos")]
        public Permiso getPermisos(int id)
        {
            try
            {
                Permiso permiso = db.Permisos.Where((t) => t.IdPermisos == id).First();
                return permiso;
            }
            catch (Exception)
            {

                return new Permiso(){ IdPermisos = 0 };
            }
        }
    }


    public partial class SalesData
    {
        public string year { get; set; }
        public double sales { get; set; }
    }
}

