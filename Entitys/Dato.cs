using System;
using System.Collections.Generic;

namespace InventarioAPI.Entitys;

public partial class Dato
{
    public int IdDato { get; set; }

    public string RazonSocial { get; set; } = null!;

    public string Ruc { get; set; } = null!;

    public string Direccion { get; set; } = null!;
}
