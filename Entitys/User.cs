using System;
using System.Collections.Generic;

namespace InventarioAPI.Entitys;

public partial class User
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public string Dni { get; set; } = null!;

    public string FirebaseToken { get; set; } = null!;

    public int IdAccess { get; set; }
}
