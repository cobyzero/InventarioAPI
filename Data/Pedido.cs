using System;
using System.Collections.Generic;

namespace InventarioAPI.Data;

public partial class Pedido
{
    public int IdPedido { get; set; }

    public string NumeroDocumento { get; set; } = null!;

    public string CodigoProducto { get; set; } = null!;

    public string DescripcionProducto { get; set; } = null!;

    public string Tecnico { get; set; } = null!;

    public int Cantidad { get; set; }

    public double Precio { get; set; }

    public double SubTotal { get; set; }

    public int Presupuesto { get; set; }

    public DateTime FechaRegistro { get; set; }
}
