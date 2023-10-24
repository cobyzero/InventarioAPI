using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace InventarioAPI.Entitys;

public partial class InventarioAlemanaContext : DbContext
{
    public InventarioAlemanaContext()
    {
    }

    public InventarioAlemanaContext(DbContextOptions<InventarioAlemanaContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Dato> Datos { get; set; }

    public virtual DbSet<Entradum> Entrada { get; set; }

    public virtual DbSet<Pedido> Pedidos { get; set; }

    public virtual DbSet<Permiso> Permisos { get; set; }

    public virtual DbSet<Producto> Productos { get; set; }

    public virtual DbSet<Proveedor> Proveedors { get; set; }

    public virtual DbSet<Salidum> Salida { get; set; }

    public virtual DbSet<User> Users { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=(local);Database=InventarioAlemana;user id=sa;pwd=infierno;Encrypt=false");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Dato>(entity =>
        {
            entity.HasKey(e => e.IdDato).HasName("PK__DATOS__F298CC9F9AF84241");

            entity.ToTable("DATOS");

            entity.Property(e => e.Direccion)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.RazonSocial)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.Ruc)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Entradum>(entity =>
        {
            entity.HasKey(e => e.IdEntrada).HasName("PK__ENTRADA__BB164DEA7267F0DA");

            entity.ToTable("ENTRADA");

            entity.HasIndex(e => e.IdEntrada, "UQ__ENTRADA__BB164DEB6F0EA979").IsUnique();

            entity.Property(e => e.AlmacenProducto)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.CodigoProducto)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.DescripcionProducto)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.DocumentoProveedor)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.FechaRegistro).HasColumnType("date");
            entity.Property(e => e.LongitudProducto)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.NombreProveedor)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.NumeroDocumento)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.UsuarioRegistro)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Pedido>(entity =>
        {
            entity.HasKey(e => e.IdPedido);

            entity.ToTable("PEDIDOS");

            entity.Property(e => e.CodigoProducto)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.DescripcionProducto)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.FechaRegistro).HasColumnType("datetime");
            entity.Property(e => e.NumeroDocumento)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.Tecnico)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Permiso>(entity =>
        {
            entity.HasKey(e => e.IdPermisos).HasName("PK__PERMISOS__CE7ED38D96CF1F87");

            entity.ToTable("PERMISOS");

            entity.Property(e => e.Descripcion)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Producto>(entity =>
        {
            entity.HasKey(e => e.IdProducto).HasName("PK__PRODUCTO__09889210327D04BA");

            entity.ToTable("PRODUCTO");

            entity.HasIndex(e => e.IdProducto, "UQ__PRODUCTO__0988921114CBF0B1").IsUnique();

            entity.Property(e => e.Almacen)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasDefaultValueSql("('')");
            entity.Property(e => e.Codigo)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.Descripcion)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.Longitud)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Proveedor>(entity =>
        {
            entity.HasKey(e => e.IdProveedor).HasName("PK__PROVEEDO__E8B631AF4F5B6AEF");

            entity.ToTable("PROVEEDOR");

            entity.HasIndex(e => e.IdProveedor, "UQ__PROVEEDO__E8B631AE93CF925F").IsUnique();

            entity.Property(e => e.NombreCompleto)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.NumeroDocumento)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Salidum>(entity =>
        {
            entity.HasKey(e => e.IdSalida).HasName("PK__SALIDA__5D69EC722F1E861F");

            entity.ToTable("SALIDA");

            entity.HasIndex(e => e.IdSalida, "UQ__SALIDA__5D69EC73F7D9B1B1").IsUnique();

            entity.Property(e => e.AlmacenProducto)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.CodigoProducto)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.DescripcionProducto)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.DocumentoCliente)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.FechaRegistro).HasColumnType("date");
            entity.Property(e => e.LongitudProducto)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.NombreCliente)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.NumeroDocumento)
                .HasMaxLength(50)
                .IsUnicode(false);
            entity.Property(e => e.UsuarioRegistro)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        modelBuilder.Entity<User>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__USUARIO__5B65BF970A34F64A");

            entity.HasIndex(e => e.Id, "UQ__USUARIO__5B65BF967649AED0").IsUnique();

            entity.Property(e => e.Dni)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("DNI");
            entity.Property(e => e.FirebaseToken)
                .HasMaxLength(100)
                .IsUnicode(false);
            entity.Property(e => e.Name)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
