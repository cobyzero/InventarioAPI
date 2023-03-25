using System;
using System.Collections.Generic;

namespace InventarioAPI.Data;

public partial class Usuario
{
    public int IdUsuario { get; set; }

    public string NombreCompleto { get; set; } = null!;

    public string NombreUsuario { get; set; } = null!;

    public string NumeroDocumento { get; set; } = null!;

    public string Clave { get; set; } = null!;

    public int IdPermisos { get; set; }
}
