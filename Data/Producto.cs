using System;
using System.Collections.Generic;

namespace InventarioAPI.Data;

public partial class Producto
{
    public int IdProducto { get; set; }

    public string Codigo { get; set; } = null!;

    public string Descripcion { get; set; } = null!;

    public string Longitud { get; set; } = null!;

    public string Almacen { get; set; } = null!;

    public int Stock { get; set; }
}
