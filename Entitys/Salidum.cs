using System;
using System.Collections.Generic;

namespace InventarioAPI.Entitys;

public partial class Salidum
{
    public int IdSalida { get; set; }

    public string NumeroDocumento { get; set; } = null!;

    public DateTime FechaRegistro { get; set; }

    public string UsuarioRegistro { get; set; } = null!;

    public string DocumentoCliente { get; set; } = null!;

    public string NombreCliente { get; set; } = null!;

    public int CantidadProductos { get; set; }

    public int IdProducto { get; set; }

    public string CodigoProducto { get; set; } = null!;

    public string DescripcionProducto { get; set; } = null!;

    public string LongitudProducto { get; set; } = null!;

    public string AlmacenProducto { get; set; } = null!;
}
