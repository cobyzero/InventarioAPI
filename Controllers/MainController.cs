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

        InventarioAlemanaContext db;

        public MainController(InventarioAlemanaContext db)
        {
            this.db = db;
        }

        [HttpGet("count")]
        public Dictionary<string, int> MainCount()
        {
            Dictionary<string, int> keyValuePairs = new Dictionary<string, int>();

            try
            {
                keyValuePairs.Add("Entradas", db.Entrada.ToList().Count());
                keyValuePairs.Add("Salidas", db.Salida.ToList().Count());
                keyValuePairs.Add("Productos", db.Productos.ToList().Count());
                keyValuePairs.Add("Usuarios", db.Usuarios.ToList().Count());

                return keyValuePairs;
 
            }
            catch (Exception)
            {
                Response.StatusCode = 404;
                return keyValuePairs;
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

