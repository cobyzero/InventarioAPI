using System;
using System.Collections.Generic;

namespace InventarioAPI.Entitys;

public partial class Proveedor
{
    public int IdProveedor { get; set; }

    public string NumeroDocumento { get; set; } = null!;

    public string NombreCompleto { get; set; } = null!;
}
