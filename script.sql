USE [InventarioAlemana]
GO
/****** Object:  Schema [cobyzero_SQLLogin_1]    Script Date: 24/03/2023 19:32:00 ******/
CREATE SCHEMA [cobyzero_SQLLogin_1]
GO
/****** Object:  Table [dbo].[DATOS]    Script Date: 24/03/2023 19:32:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DATOS](
	[IdDato] [int] IDENTITY(1,1) NOT NULL,
	[RazonSocial] [varchar](50) NOT NULL,
	[Ruc] [varchar](50) NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
 CONSTRAINT [PK__DATOS__F298CC9F9AF84241] PRIMARY KEY CLUSTERED 
(
	[IdDato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ENTRADA]    Script Date: 24/03/2023 19:32:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENTRADA](
	[IdEntrada] [int] IDENTITY(1,1) NOT NULL,
	[NumeroDocumento] [varchar](50) NOT NULL,
	[FechaRegistro] [date] NOT NULL,
	[UsuarioRegistro] [varchar](50) NOT NULL,
	[DocumentoProveedor] [varchar](50) NOT NULL,
	[NombreProveedor] [varchar](50) NOT NULL,
	[CantidadProductos] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[CodigoProducto] [varchar](50) NOT NULL,
	[DescripcionProducto] [varchar](50) NOT NULL,
	[LongitudProducto] [varchar](50) NOT NULL,
	[AlmacenProducto] [varchar](50) NOT NULL,
 CONSTRAINT [PK__ENTRADA__BB164DEA7267F0DA] PRIMARY KEY CLUSTERED 
(
	[IdEntrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PEDIDOS]    Script Date: 24/03/2023 19:32:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PEDIDOS](
	[IdPedido] [int] IDENTITY(1,1) NOT NULL,
	[NumeroDocumento] [varchar](50) NOT NULL,
	[CodigoProducto] [varchar](50) NOT NULL,
	[DescripcionProducto] [varchar](50) NOT NULL,
	[Tecnico] [varchar](50) NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [float] NOT NULL,
	[SubTotal] [float] NOT NULL,
	[Presupuesto] [int] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
 CONSTRAINT [PK_PEDIDOS] PRIMARY KEY CLUSTERED 
(
	[IdPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERMISOS]    Script Date: 24/03/2023 19:32:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERMISOS](
	[IdPermisos] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Salidas] [int] NOT NULL,
	[Entradas] [int] NOT NULL,
	[Productos] [int] NOT NULL,
	[Usuarios] [int] NOT NULL,
	[Proveedores] [int] NOT NULL,
	[Inventario] [int] NOT NULL,
	[Configuracion] [int] NOT NULL,
 CONSTRAINT [PK__PERMISOS__CE7ED38D96CF1F87] PRIMARY KEY CLUSTERED 
(
	[IdPermisos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 24/03/2023 19:32:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTO](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](50) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Longitud] [varchar](50) NOT NULL,
	[Almacen] [varchar](50) NOT NULL,
	[Stock] [int] NOT NULL,
 CONSTRAINT [PK__PRODUCTO__09889210327D04BA] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROVEEDOR]    Script Date: 24/03/2023 19:32:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROVEEDOR](
	[IdProveedor] [int] IDENTITY(1,1) NOT NULL,
	[NumeroDocumento] [varchar](50) NOT NULL,
	[NombreCompleto] [varchar](50) NOT NULL,
 CONSTRAINT [PK__PROVEEDO__E8B631AF4F5B6AEF] PRIMARY KEY CLUSTERED 
(
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SALIDA]    Script Date: 24/03/2023 19:32:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SALIDA](
	[IdSalida] [int] IDENTITY(1,1) NOT NULL,
	[NumeroDocumento] [varchar](50) NOT NULL,
	[FechaRegistro] [date] NOT NULL,
	[UsuarioRegistro] [varchar](50) NOT NULL,
	[DocumentoCliente] [varchar](50) NOT NULL,
	[NombreCliente] [varchar](50) NOT NULL,
	[CantidadProductos] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[CodigoProducto] [varchar](50) NOT NULL,
	[DescripcionProducto] [varchar](50) NOT NULL,
	[LongitudProducto] [varchar](50) NOT NULL,
	[AlmacenProducto] [varchar](50) NOT NULL,
 CONSTRAINT [PK__SALIDA__5D69EC722F1E861F] PRIMARY KEY CLUSTERED 
(
	[IdSalida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 24/03/2023 19:32:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[NombreCompleto] [varchar](50) NOT NULL,
	[NombreUsuario] [varchar](50) NOT NULL,
	[NumeroDocumento] [varchar](50) NOT NULL,
	[Clave] [varchar](50) NOT NULL,
	[IdPermisos] [int] NOT NULL,
 CONSTRAINT [PK__USUARIO__5B65BF970A34F64A] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DATOS] ON 

INSERT [dbo].[DATOS] ([IdDato], [RazonSocial], [Ruc], [Direccion]) VALUES (1, N'Empresa Unida', N'02221', N'av. test')
INSERT [dbo].[DATOS] ([IdDato], [RazonSocial], [Ruc], [Direccion]) VALUES (2, N'IT-Solutions', N'02221', N'test')
SET IDENTITY_INSERT [dbo].[DATOS] OFF
GO
SET IDENTITY_INSERT [dbo].[ENTRADA] ON 

INSERT [dbo].[ENTRADA] ([IdEntrada], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoProveedor], [NombreProveedor], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (25, N'322', CAST(N'2023-03-14' AS Date), N'Admin', N'444777', N'Enterprise HTO', 21, 995, N'SK-3', N'Stromkabel Schuko C15 - C14', N'1,5m', N'alm01')
INSERT [dbo].[ENTRADA] ([IdEntrada], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoProveedor], [NombreProveedor], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (26, N'322', CAST(N'2023-03-15' AS Date), N'Admin', N'444777', N'Enterprise HTO', 21, 1002, N'SK-10', N'Stromkabel Schuko C15 - C14', N'20,0m', N'alm01')
INSERT [dbo].[ENTRADA] ([IdEntrada], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoProveedor], [NombreProveedor], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (27, N'322', CAST(N'2023-03-16' AS Date), N'Admin', N'555777', N'Empresa Util Rapida', 25, 1001, N'SK-9', N'Stromkabel Schuko C15 - C14', N'15,0m', N'alm01')
INSERT [dbo].[ENTRADA] ([IdEntrada], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoProveedor], [NombreProveedor], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (28, N'322', CAST(N'2023-03-16' AS Date), N'Admin', N'555777', N'Empresa Util Rapida', 25, 996, N'SK-4', N'Stromkabel Schuko C15 - C14', N'5.0m', N'alm01')
INSERT [dbo].[ENTRADA] ([IdEntrada], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoProveedor], [NombreProveedor], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (29, N'asddas', CAST(N'2023-03-18' AS Date), N'Admin', N'444777', N'Enterprise HTO', 212, 998, N'SK-6', N'Stromkabel Schuko C15 - C14', N'6,5m', N'alm01')
SET IDENTITY_INSERT [dbo].[ENTRADA] OFF
GO
SET IDENTITY_INSERT [dbo].[PEDIDOS] ON 

INSERT [dbo].[PEDIDOS] ([IdPedido], [NumeroDocumento], [CodigoProducto], [DescripcionProducto], [Tecnico], [Cantidad], [Precio], [SubTotal], [Presupuesto], [FechaRegistro]) VALUES (11, N'12312', N'SK-1', N'Stromkabel Schuko C15 - C14', N'SAC Belem', 3, 0.6, 1.8, 135000, CAST(N'2023-03-09T11:06:09.660' AS DateTime))
INSERT [dbo].[PEDIDOS] ([IdPedido], [NumeroDocumento], [CodigoProducto], [DescripcionProducto], [Tecnico], [Cantidad], [Precio], [SubTotal], [Presupuesto], [FechaRegistro]) VALUES (12, N'12312', N'SK-8', N'Stromkabel Schuko C15 - C14', N'SAC Ballester', 10, 8.4, 84, 125000, CAST(N'2023-03-09T11:06:09.670' AS DateTime))
INSERT [dbo].[PEDIDOS] ([IdPedido], [NumeroDocumento], [CodigoProducto], [DescripcionProducto], [Tecnico], [Cantidad], [Precio], [SubTotal], [Presupuesto], [FechaRegistro]) VALUES (13, N'1', N'SK-4', N'Stromkabel Schuko C15 - C14', N'SAC Belem', 10, 0.25, 2.5, 20000, CAST(N'2023-03-09T18:22:59.800' AS DateTime))
INSERT [dbo].[PEDIDOS] ([IdPedido], [NumeroDocumento], [CodigoProducto], [DescripcionProducto], [Tecnico], [Cantidad], [Precio], [SubTotal], [Presupuesto], [FechaRegistro]) VALUES (14, N'2', N'SK-3', N'Stromkabel Schuko C15 - C14', N'SAC Belem', 10, 0.3, 3, 10000, CAST(N'2023-03-09T18:26:52.607' AS DateTime))
INSERT [dbo].[PEDIDOS] ([IdPedido], [NumeroDocumento], [CodigoProducto], [DescripcionProducto], [Tecnico], [Cantidad], [Precio], [SubTotal], [Presupuesto], [FechaRegistro]) VALUES (15, N'3', N'SK-6', N'Stromkabel Schuko C15 - C14', N'SAC Belem', 1, 25, 25, 10000, CAST(N'2023-03-09T18:27:56.467' AS DateTime))
INSERT [dbo].[PEDIDOS] ([IdPedido], [NumeroDocumento], [CodigoProducto], [DescripcionProducto], [Tecnico], [Cantidad], [Precio], [SubTotal], [Presupuesto], [FechaRegistro]) VALUES (16, N'5', N'SK-4', N'Stromkabel Schuko C15 - C14', N'SAC Belem', 1001, 2.2, 2202.2, 15000, CAST(N'2023-03-09T18:29:27.457' AS DateTime))
INSERT [dbo].[PEDIDOS] ([IdPedido], [NumeroDocumento], [CodigoProducto], [DescripcionProducto], [Tecnico], [Cantidad], [Precio], [SubTotal], [Presupuesto], [FechaRegistro]) VALUES (17, N'10', N'SK-1', N'Stromkabel Schuko C15 - C14', N'SAC Ballester', 100, 0.5, 50, 10000, CAST(N'2023-03-09T18:53:12.827' AS DateTime))
INSERT [dbo].[PEDIDOS] ([IdPedido], [NumeroDocumento], [CodigoProducto], [DescripcionProducto], [Tecnico], [Cantidad], [Precio], [SubTotal], [Presupuesto], [FechaRegistro]) VALUES (18, N'10', N'SK-1', N'Stromkabel Schuko C15 - C14', N'SAC Ballester', 100, 0.5, 50, 10000, CAST(N'2023-03-09T18:53:12.883' AS DateTime))
INSERT [dbo].[PEDIDOS] ([IdPedido], [NumeroDocumento], [CodigoProducto], [DescripcionProducto], [Tecnico], [Cantidad], [Precio], [SubTotal], [Presupuesto], [FechaRegistro]) VALUES (19, N'1', N'SK-1', N'Stromkabel Schuko C15 - C14', N'SAC Belem', 101, 0.25, 25.25, 15000, CAST(N'2023-03-09T20:39:28.697' AS DateTime))
INSERT [dbo].[PEDIDOS] ([IdPedido], [NumeroDocumento], [CodigoProducto], [DescripcionProducto], [Tecnico], [Cantidad], [Precio], [SubTotal], [Presupuesto], [FechaRegistro]) VALUES (20, N'', N'SK-1', N'Stromkabel Schuko C15 - C14', N'SAC Belem', 2001, 0.25, 500.25, 15000, CAST(N'2023-03-10T08:09:42.130' AS DateTime))
INSERT [dbo].[PEDIDOS] ([IdPedido], [NumeroDocumento], [CodigoProducto], [DescripcionProducto], [Tecnico], [Cantidad], [Precio], [SubTotal], [Presupuesto], [FechaRegistro]) VALUES (21, N'30', N'SK-2', N'Stromkabel Schuko C15 - C14', N'SAC Belem', 150, 0.3, 45, 15000, CAST(N'2023-03-10T08:10:19.423' AS DateTime))
INSERT [dbo].[PEDIDOS] ([IdPedido], [NumeroDocumento], [CodigoProducto], [DescripcionProducto], [Tecnico], [Cantidad], [Precio], [SubTotal], [Presupuesto], [FechaRegistro]) VALUES (22, N'p15', N'SK-5', N'Stromkabel Schuko C15 - C14', N'SAC Belem', 100, 0.25, 25, 10000, CAST(N'2023-03-10T14:42:45.643' AS DateTime))
INSERT [dbo].[PEDIDOS] ([IdPedido], [NumeroDocumento], [CodigoProducto], [DescripcionProducto], [Tecnico], [Cantidad], [Precio], [SubTotal], [Presupuesto], [FechaRegistro]) VALUES (23, N'p15', N'SK-4', N'Stromkabel Schuko C15 - C14', N'SAC Belem', 1, 0.5, 0.5, 10000, CAST(N'2023-03-10T14:42:45.643' AS DateTime))
INSERT [dbo].[PEDIDOS] ([IdPedido], [NumeroDocumento], [CodigoProducto], [DescripcionProducto], [Tecnico], [Cantidad], [Precio], [SubTotal], [Presupuesto], [FechaRegistro]) VALUES (24, N'p15', N'SK-7', N'Stromkabel Schuko C15 - C14', N'SAC Belem', 200, 1.5, 300, 10000, CAST(N'2023-03-10T14:42:45.643' AS DateTime))
INSERT [dbo].[PEDIDOS] ([IdPedido], [NumeroDocumento], [CodigoProducto], [DescripcionProducto], [Tecnico], [Cantidad], [Precio], [SubTotal], [Presupuesto], [FechaRegistro]) VALUES (25, N'', N'SK-2', N'Stromkabel Schuko C15 - C14', N'SAC Belem', 1, 10, 10, 20000, CAST(N'2023-03-10T09:39:12.753' AS DateTime))
INSERT [dbo].[PEDIDOS] ([IdPedido], [NumeroDocumento], [CodigoProducto], [DescripcionProducto], [Tecnico], [Cantidad], [Precio], [SubTotal], [Presupuesto], [FechaRegistro]) VALUES (26, N'231', N'SK-1', N'Stromkabel Schuko C15 - C14', N'SAC Belem', 4, 200, 800, 10000, CAST(N'2023-03-10T09:40:30.123' AS DateTime))
INSERT [dbo].[PEDIDOS] ([IdPedido], [NumeroDocumento], [CodigoProducto], [DescripcionProducto], [Tecnico], [Cantidad], [Precio], [SubTotal], [Presupuesto], [FechaRegistro]) VALUES (27, N'P-0005', N'SK-7', N'Stromkabel Schuko C15 - C14', N'SAC Belem', 100, 0.25, 25, 10000, CAST(N'2023-03-10T18:31:53.790' AS DateTime))
INSERT [dbo].[PEDIDOS] ([IdPedido], [NumeroDocumento], [CodigoProducto], [DescripcionProducto], [Tecnico], [Cantidad], [Precio], [SubTotal], [Presupuesto], [FechaRegistro]) VALUES (28, N'P00001', N'SK-4', N'Stromkabel Schuko C15 - C14', N'SAC Ballester', 25, 0.25, 6.25, 10000, CAST(N'2023-03-10T19:32:07.713' AS DateTime))
INSERT [dbo].[PEDIDOS] ([IdPedido], [NumeroDocumento], [CodigoProducto], [DescripcionProducto], [Tecnico], [Cantidad], [Precio], [SubTotal], [Presupuesto], [FechaRegistro]) VALUES (29, N'P00001', N'SK-1', N'Stromkabel Schuko C15 - C14', N'SAC Ballester', 25, 0.25, 6.25, 10000, CAST(N'2023-03-10T19:32:07.713' AS DateTime))
INSERT [dbo].[PEDIDOS] ([IdPedido], [NumeroDocumento], [CodigoProducto], [DescripcionProducto], [Tecnico], [Cantidad], [Precio], [SubTotal], [Presupuesto], [FechaRegistro]) VALUES (30, N'P0001', N'SK-10', N'Stromkabel Schuko C15 - C14', N'SAC Belem', 100, 0.25, 25, 15000, CAST(N'2023-03-11T22:10:05.933' AS DateTime))
INSERT [dbo].[PEDIDOS] ([IdPedido], [NumeroDocumento], [CodigoProducto], [DescripcionProducto], [Tecnico], [Cantidad], [Precio], [SubTotal], [Presupuesto], [FechaRegistro]) VALUES (31, N'P0001', N'SK-9', N'Stromkabel Schuko C15 - C14', N'SAC Belem', 1, 5, 5, 15000, CAST(N'2023-03-11T22:10:05.933' AS DateTime))
INSERT [dbo].[PEDIDOS] ([IdPedido], [NumeroDocumento], [CodigoProducto], [DescripcionProducto], [Tecnico], [Cantidad], [Precio], [SubTotal], [Presupuesto], [FechaRegistro]) VALUES (32, N'P0001', N'SK-11', N'Stromkabel Schuko C15 - C14', N'SAC Belem', 300, 20, 6000, 15000, CAST(N'2023-03-11T22:10:05.933' AS DateTime))
INSERT [dbo].[PEDIDOS] ([IdPedido], [NumeroDocumento], [CodigoProducto], [DescripcionProducto], [Tecnico], [Cantidad], [Precio], [SubTotal], [Presupuesto], [FechaRegistro]) VALUES (33, N'P0001', N'SK-12', N'Stromkabel Schuko C15 - C14', N'SAC Belem', 250, 30, 7500, 15000, CAST(N'2023-03-11T22:10:05.933' AS DateTime))
INSERT [dbo].[PEDIDOS] ([IdPedido], [NumeroDocumento], [CodigoProducto], [DescripcionProducto], [Tecnico], [Cantidad], [Precio], [SubTotal], [Presupuesto], [FechaRegistro]) VALUES (34, N'P0001', N'SK-13', N'Stromkabel Schuko C15 - C14', N'SAC Belem', 147, 10, 1470, 15000, CAST(N'2023-03-11T22:10:05.933' AS DateTime))
SET IDENTITY_INSERT [dbo].[PEDIDOS] OFF
GO
SET IDENTITY_INSERT [dbo].[PERMISOS] ON 

INSERT [dbo].[PERMISOS] ([IdPermisos], [Descripcion], [Salidas], [Entradas], [Productos], [Usuarios], [Proveedores], [Inventario], [Configuracion]) VALUES (1, N'Administrador', 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[PERMISOS] ([IdPermisos], [Descripcion], [Salidas], [Entradas], [Productos], [Usuarios], [Proveedores], [Inventario], [Configuracion]) VALUES (2, N'Empleado', 1, 1, 1, 1, 0, 0, 0)
INSERT [dbo].[PERMISOS] ([IdPermisos], [Descripcion], [Salidas], [Entradas], [Productos], [Usuarios], [Proveedores], [Inventario], [Configuracion]) VALUES (3, N'Almacenero', 1, 1, 1, 1, 1, 1, 0)
SET IDENTITY_INSERT [dbo].[PERMISOS] OFF
GO
SET IDENTITY_INSERT [dbo].[PRODUCTO] ON 

INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (995, N'SK-3', N'Stromkabel Schuko C15 - C14', N'1,5m', N'alm01', 5)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (996, N'SK-4', N'Stromkabel Schuko C15 - C14', N'5.0m', N'alm01', 17)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (997, N'SK-5', N'Stromkabel Schuko C15 - C14', N'5,5m', N'alm01', 41)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (998, N'SK-6', N'Stromkabel Schuko C15 - C14', N'6,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (999, N'SK-7', N'Stromkabel Schuko C15 - C14', N'10,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1000, N'SK-8', N'Stromkabel Schuko C15 - C14', N'12,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1001, N'SK-9', N'Stromkabel Schuko C15 - C14', N'15,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1002, N'SK-10', N'Stromkabel Schuko C15 - C14', N'20,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1003, N'SK-11', N'Stromkabel Schuko C15 - C14', N'25,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1004, N'SK-12', N'Stromkabel Schuko C15 - C14', N'1,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1005, N'SK-13', N'Stromkabel Schuko C15 - C14', N'2,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1006, N'SK-14', N'Stromkabel Schuko C15 - C14', N'2,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1007, N'SK-15', N'Stromkabel Schuko C15 - C14', N'3,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1008, N'SK-16', N'Stromkabel Schuko C15 - C14', N'4,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1009, N'SK-17', N'Stromkabel Schuko C15 - C14', N'4,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1010, N'SK-18', N'Stromkabel Schuko C15 - C14', N'6,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1011, N'SK-19', N'Stromkabel Schuko C15 - C14', N'7,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1012, N'SK-20', N'Stromkabel Schuko C15 - C14', N'7,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1013, N'SK-21', N'Stromkabel Schuko C15 - C14', N'8,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1014, N'SK-22', N'Stromkabel Schuko C15 - C14', N'8,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1015, N'SK-23', N'Stromkabel Schuko C15 - C14', N'9,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1016, N'SK-24', N'Stromkabel Schuko C15 - C14', N'9,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1017, N'SK-25', N'Stromkabel Schuko C15 - C14', N'30,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1018, N'SK-26', N'Stromkabel Schuko C15 - C14', N'35,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1019, N'SK-27', N'Stromkabel Schuko C15 - C14', N'45,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1020, N'SK-28', N'Stromkabel Schuko C15 - C14', N'0,8m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1021, N'SK-29', N'Stromkabel Schuko C15 - C14', N'1,8m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1022, N'SK-30', N'Stromkabel Schuko C13 - C20', N'0,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1023, N'SK-31', N'Stromkabel Schuko C13 - C20', N'3,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1024, N'SK-32', N'Stromkabel Schuko C13 - C20', N'1,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1025, N'SK-33', N'Stromkabel Schuko C13 - C20', N'5.0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1026, N'SK-34', N'Stromkabel Schuko C13 - C20', N'5,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1027, N'SK-35', N'Stromkabel Schuko C13 - C20', N'6,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1028, N'SK-36', N'Stromkabel Schuko C13 - C20', N'10,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1029, N'SK-37', N'Stromkabel Schuko C13 - C20', N'12,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1030, N'SK-38', N'Stromkabel Schuko C13 - C20', N'15,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1031, N'SK-39', N'Stromkabel Schuko C13 - C20', N'20,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1032, N'SK-40', N'Stromkabel Schuko C13 - C20', N'25,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1033, N'SK-41', N'Stromkabel Schuko C13 - C20', N'1,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1034, N'SK-42', N'Stromkabel Schuko C13 - C20', N'2,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1035, N'SK-43', N'Stromkabel Schuko C13 - C20', N'2,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1036, N'SK-44', N'Stromkabel Schuko C13 - C20', N'3,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1037, N'SK-45', N'Stromkabel Schuko C13 - C20', N'4,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1038, N'SK-46', N'Stromkabel Schuko C13 - C20', N'4,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1039, N'SK-47', N'Stromkabel Schuko C13 - C20', N'6,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1040, N'SK-48', N'Stromkabel Schuko C13 - C20', N'7,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1041, N'SK-49', N'Stromkabel Schuko C13 - C20', N'7,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1042, N'SK-50', N'Stromkabel Schuko C13 - C20', N'8,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1043, N'SK-51', N'Stromkabel Schuko C13 - C20', N'8,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1044, N'SK-52', N'Stromkabel Schuko C13 - C20', N'9,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1045, N'SK-53', N'Stromkabel Schuko C13 - C20', N'9,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1046, N'SK-54', N'Stromkabel Schuko C13 - C20', N'30,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1047, N'SK-55', N'Stromkabel Schuko C13 - C20', N'35,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1048, N'SK-56', N'Stromkabel Schuko C13 - C20', N'45,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1049, N'SK-57', N'Stromkabel Schuko C13 - C20', N'0,8m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1050, N'SK-58', N'Stromkabel Schuko C13 - C20', N'1,8m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1051, N'SK-59', N'C5-C14', N'0,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1052, N'SK-60', N'C5-C14', N'3,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1053, N'SK-61', N'C5-C14', N'1,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1054, N'SK-62', N'C5-C14', N'5.0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1055, N'SK-63', N'C5-C14', N'5,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1056, N'SK-64', N'C5-C14', N'6,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1057, N'SK-65', N'C5-C14', N'10,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1058, N'SK-66', N'C5-C14', N'12,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1059, N'SK-67', N'C5-C14', N'15,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1060, N'SK-68', N'C5-C14', N'20,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1061, N'SK-69', N'C5-C14', N'25,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1062, N'SK-70', N'C5-C14', N'1,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1063, N'SK-71', N'C5-C14', N'2,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1064, N'SK-72', N'C5-C14', N'2,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1065, N'SK-73', N'C5-C14', N'3,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1066, N'SK-74', N'C5-C14', N'4,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1067, N'SK-75', N'C5-C14', N'4,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1068, N'SK-76', N'C5-C14', N'6,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1069, N'SK-77', N'C5-C14', N'7,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1070, N'SK-78', N'C5-C14', N'7,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1071, N'SK-79', N'C5-C14', N'8,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1072, N'SK-80', N'C5-C14', N'8,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1073, N'SK-81', N'C5-C14', N'9,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1074, N'SK-82', N'C5-C14', N'9,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1075, N'SK-83', N'C5-C14', N'30,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1076, N'SK-84', N'C5-C14', N'35,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1077, N'SK-85', N'C5-C14', N'45,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1078, N'SK-86', N'C5-C14', N'0,8m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1079, N'SK-87', N'C5-C14', N'1,8m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1080, N'SK-88', N'Schuko-C14', N'0,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1081, N'SK-89', N'Schuko-C14', N'3,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1082, N'SK-90', N'Schuko-C14', N'1,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1083, N'SK-91', N'Schuko-C14', N'5.0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1084, N'SK-92', N'Schuko-C14', N'5,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1085, N'SK-93', N'Schuko-C14', N'6,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1086, N'SK-94', N'Schuko-C14', N'10,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1087, N'SK-95', N'Schuko-C14', N'12,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1088, N'SK-96', N'Schuko-C14', N'15,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1089, N'SK-97', N'Schuko-C14', N'20,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1090, N'SK-98', N'Schuko-C14', N'25,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1091, N'SK-99', N'Schuko-C14', N'1,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1092, N'SK-100', N'Schuko-C14', N'2,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1093, N'SK-101', N'Schuko-C14', N'2,5m', N'alm01', 0)
GO
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1094, N'SK-102', N'Schuko-C14', N'3,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1095, N'SK-103', N'Schuko-C14', N'4,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1096, N'SK-104', N'Schuko-C14', N'4,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1097, N'SK-105', N'Schuko-C14', N'6,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1098, N'SK-106', N'Schuko-C14', N'7,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1099, N'SK-107', N'Schuko-C14', N'7,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1100, N'SK-108', N'Schuko-C14', N'8,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1101, N'SK-109', N'Schuko-C14', N'8,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1102, N'SK-110', N'Schuko-C14', N'9,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1103, N'SK-111', N'Schuko-C14', N'9,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1104, N'SK-112', N'Schuko-C14', N'30,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1105, N'SK-113', N'Schuko-C14', N'35,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1106, N'SK-114', N'Schuko-C14', N'45,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1107, N'SK-115', N'Schuko-C14', N'0,8m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1108, N'SK-116', N'Schuko-C14', N'1,8m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1109, N'SK-117', N'C13/C14  ', N'0,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1110, N'SK-118', N'C13/C14  ', N'3,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1111, N'SK-119', N'C13/C14  ', N'1,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1112, N'SK-120', N'C13/C14  ', N'5.0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1113, N'SK-121', N'C13/C14  ', N'5,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1114, N'SK-122', N'C13/C14  ', N'6,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1115, N'SK-123', N'C13/C14  ', N'10,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1116, N'SK-124', N'C13/C14  ', N'12,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1117, N'SK-125', N'C13/C14  ', N'15,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1118, N'SK-126', N'C13/C14  ', N'20,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1119, N'SK-127', N'C13/C14  ', N'25,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1120, N'SK-128', N'C13/C14  ', N'1,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1121, N'SK-129', N'C13/C14  ', N'2,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1122, N'SK-130', N'C13/C14  ', N'2,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1123, N'SK-131', N'C13/C14  ', N'3,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1124, N'SK-132', N'C13/C14  ', N'4,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1125, N'SK-133', N'C13/C14  ', N'4,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1126, N'SK-134', N'C13/C14  ', N'6,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1127, N'SK-135', N'C13/C14  ', N'7,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1128, N'SK-136', N'C13/C14  ', N'7,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1129, N'SK-137', N'C13/C14  ', N'8,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1130, N'SK-138', N'C13/C14  ', N'8,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1131, N'SK-139', N'C13/C14  ', N'9,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1132, N'SK-140', N'C13/C14  ', N'9,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1133, N'SK-141', N'C13/C14  ', N'30,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1134, N'SK-142', N'C13/C14  ', N'35,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1135, N'SK-143', N'C13/C14  ', N'45,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1136, N'SK-144', N'C13/C14  ', N'0,8m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1137, N'SK-145', N'C13/C14  ', N'1,8m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1138, N'LWL-LC-1', N'LWL? LC/LC singlemode 9µ OS2', N'0,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1139, N'LWL-LC-2', N'LWL? LC/LC singlemode 9µ OS2', N'3,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1140, N'LWL-LC-3', N'LWL? LC/LC singlemode 9µ OS2', N'1,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1141, N'LWL-LC-4', N'LWL? LC/LC singlemode 9µ OS2', N'5.0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1142, N'LWL-LC-5', N'LWL? LC/LC singlemode 9µ OS2', N'5,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1143, N'LWL-LC-6', N'LWL? LC/LC singlemode 9µ OS2', N'6,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1144, N'LWL-LC-7', N'LWL? LC/LC singlemode 9µ OS2', N'10,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1145, N'LWL-LC-8', N'LWL? LC/LC singlemode 9µ OS2', N'12,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1146, N'LWL-LC-9', N'LWL? LC/LC singlemode 9µ OS2', N'15,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1147, N'LWL-LC-10', N'LWL? LC/LC singlemode 9µ OS2', N'20,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1148, N'LWL-LC-11', N'LWL? LC/LC singlemode 9µ OS2', N'25,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1149, N'LWL-LC-12', N'LWL? LC/LC singlemode 9µ OS2', N'1,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1150, N'LWL-LC-13', N'LWL? LC/LC singlemode 9µ OS2', N'2,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1151, N'LWL-LC-14', N'LWL? LC/LC singlemode 9µ OS2', N'2,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1152, N'LWL-LC-15', N'LWL? LC/LC singlemode 9µ OS2', N'3,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1153, N'LWL-LC-16', N'LWL? LC/LC singlemode 9µ OS2', N'4,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1154, N'LWL-LC-17', N'LWL? LC/LC singlemode 9µ OS2', N'4,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1155, N'LWL-LC-18', N'LWL? LC/LC singlemode 9µ OS2', N'6,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1156, N'LWL-LC-19', N'LWL? LC/LC singlemode 9µ OS2', N'7,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1157, N'LWL-LC-20', N'LWL? LC/LC singlemode 9µ OS2', N'7,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1158, N'LWL-LC-21', N'LWL? LC/LC singlemode 9µ OS2', N'8,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1159, N'LWL-LC-22', N'LWL? LC/LC singlemode 9µ OS2', N'8,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1160, N'LWL-LC-23', N'LWL? LC/LC singlemode 9µ OS2', N'9,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1161, N'LWL-LC-24', N'LWL? LC/LC singlemode 9µ OS2', N'9,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1162, N'LWL-LC-25', N'LWL? LC/LC singlemode 9µ OS2', N'30,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1163, N'LWL-LC-26', N'LWL? LC/LC singlemode 9µ OS2', N'35,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1164, N'LWL-LC-27', N'LWL? LC/LC singlemode 9µ OS2', N'45,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1165, N'LWL-LC-28', N'LWL? LC/LC singlemode 9µ OS2', N'0,8m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1166, N'LWL-LC-29', N'LWL? LC/LC singlemode 9µ OS2', N'1,8m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1167, N'LWL-E2000-1', N'LWL? E2000/E2000 singlemode 9µ OS2', N'0,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1168, N'LWL-E2000-2', N'LWL? E2000/E2000 singlemode 9µ OS2', N'3,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1169, N'LWL-E2000-3', N'LWL? E2000/E2000 singlemode 9µ OS2', N'1,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1170, N'LWL-E2000-4', N'LWL? E2000/E2000 singlemode 9µ OS2', N'5.0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1171, N'LWL-E2000-5', N'LWL? E2000/E2000 singlemode 9µ OS2', N'5,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1172, N'LWL-E2000-6', N'LWL? E2000/E2000 singlemode 9µ OS2', N'6,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1173, N'LWL-E2000-7', N'LWL? E2000/E2000 singlemode 9µ OS2', N'10,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1174, N'LWL-E2000-8', N'LWL? E2000/E2000 singlemode 9µ OS2', N'12,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1175, N'LWL-E2000-9', N'LWL? E2000/E2000 singlemode 9µ OS2', N'15,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1176, N'LWL-E2000-10', N'LWL? E2000/E2000 singlemode 9µ OS2', N'20,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1177, N'LWL-E2000-11', N'LWL? E2000/E2000 singlemode 9µ OS2', N'25,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1178, N'LWL-E2000-12', N'LWL? E2000/E2000 singlemode 9µ OS2', N'1,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1179, N'LWL-E2000-13', N'LWL? E2000/E2000 singlemode 9µ OS2', N'2,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1180, N'LWL-E2000-14', N'LWL? E2000/E2000 singlemode 9µ OS2', N'2,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1181, N'LWL-E2000-15', N'LWL? E2000/E2000 singlemode 9µ OS2', N'3,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1182, N'LWL-E2000-16', N'LWL? E2000/E2000 singlemode 9µ OS2', N'4,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1183, N'LWL-E2000-17', N'LWL? E2000/E2000 singlemode 9µ OS2', N'4,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1184, N'LWL-E2000-18', N'LWL? E2000/E2000 singlemode 9µ OS2', N'6,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1185, N'LWL-E2000-19', N'LWL? E2000/E2000 singlemode 9µ OS2', N'7,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1186, N'LWL-E2000-20', N'LWL? E2000/E2000 singlemode 9µ OS2', N'7,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1187, N'LWL-E2000-21', N'LWL? E2000/E2000 singlemode 9µ OS2', N'8,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1188, N'LWL-E2000-22', N'LWL? E2000/E2000 singlemode 9µ OS2', N'8,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1189, N'LWL-E2000-23', N'LWL? E2000/E2000 singlemode 9µ OS2', N'9,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1190, N'LWL-E2000-24', N'LWL? E2000/E2000 singlemode 9µ OS2', N'9,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1191, N'LWL-E2000-25', N'LWL? E2000/E2000 singlemode 9µ OS2', N'30,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1192, N'LWL-E2000-26', N'LWL? E2000/E2000 singlemode 9µ OS2', N'35,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1193, N'LWL-E2000-27', N'LWL? E2000/E2000 singlemode 9µ OS2', N'45,0m', N'alm01', 0)
GO
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1194, N'LWL-E2000-28', N'LWL? E2000/E2000 singlemode 9µ OS2', N'0,8m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1195, N'LWL-E2000-29', N'LWL? E2000/E2000 singlemode 9µ OS2', N'1,8m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1196, N'LWL-E2k/LC-1', N'LWL E2000/LC singlemode 9µ OS2', N'0,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1197, N'LWL-E2k/LC-2', N'LWL E2000/LC singlemode 9µ OS2', N'3,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1198, N'LWL-E2k/LC-3', N'LWL E2000/LC singlemode 9µ OS2', N'1,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1199, N'LWL-E2k/LC-4', N'LWL E2000/LC singlemode 9µ OS2', N'5.0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1200, N'LWL-E2k/LC-5', N'LWL E2000/LC singlemode 9µ OS2', N'5,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1201, N'LWL-E2k/LC-6', N'LWL E2000/LC singlemode 9µ OS2', N'6,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1202, N'LWL-E2k/LC-7', N'LWL E2000/LC singlemode 9µ OS2', N'10,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1203, N'LWL-E2k/LC-8', N'LWL E2000/LC singlemode 9µ OS2', N'12,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1204, N'LWL-E2k/LC-9', N'LWL E2000/LC singlemode 9µ OS2', N'15,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1205, N'LWL-E2k/LC-10', N'LWL E2000/LC singlemode 9µ OS2', N'20,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1206, N'LWL-E2k/LC-11', N'LWL E2000/LC singlemode 9µ OS2', N'25,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1207, N'LWL-E2k/LC-12', N'LWL E2000/LC singlemode 9µ OS2', N'1,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1208, N'LWL-E2k/LC-13', N'LWL E2000/LC singlemode 9µ OS2', N'2,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1209, N'LWL-E2k/LC-14', N'LWL E2000/LC singlemode 9µ OS2', N'2,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1210, N'LWL-E2k/LC-15', N'LWL E2000/LC singlemode 9µ OS2', N'3,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1211, N'LWL-E2k/LC-16', N'LWL E2000/LC singlemode 9µ OS2', N'4,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1212, N'LWL-E2k/LC-17', N'LWL E2000/LC singlemode 9µ OS2', N'4,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1213, N'LWL-E2k/LC-18', N'LWL E2000/LC singlemode 9µ OS2', N'6,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1214, N'LWL-E2k/LC-19', N'LWL E2000/LC singlemode 9µ OS2', N'7,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1215, N'LWL-E2k/LC-20', N'LWL E2000/LC singlemode 9µ OS2', N'7,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1216, N'LWL-E2k/LC-21', N'LWL E2000/LC singlemode 9µ OS2', N'8,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1217, N'LWL-E2k/LC-22', N'LWL E2000/LC singlemode 9µ OS2', N'8,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1218, N'LWL-E2k/LC-23', N'LWL E2000/LC singlemode 9µ OS2', N'9,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1219, N'LWL-E2k/LC-24', N'LWL E2000/LC singlemode 9µ OS2', N'9,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1220, N'LWL-E2k/LC-25', N'LWL E2000/LC singlemode 9µ OS2', N'30,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1221, N'LWL-E2k/LC-26', N'LWL E2000/LC singlemode 9µ OS2', N'35,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1222, N'LWL-E2k/LC-27', N'LWL E2000/LC singlemode 9µ OS2', N'45,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1223, N'LWL-E2k/LC-28', N'LWL E2000/LC singlemode 9µ OS2', N'0,8m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1224, N'LWL-E2k/LC-29', N'LWL E2000/LC singlemode 9µ OS2', N'1,8m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1225, N'LWL-LCD-M-1', N'LWL LCD/LCD Multimode 50µ OM4 ', N'0,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1226, N'LWL-LCD-M-2', N'LWL LCD/LCD Multimode 50µ OM4 ', N'3,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1227, N'LWL-LCD-M-3', N'LWL LCD/LCD Multimode 50µ OM4 ', N'1,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1228, N'LWL-LCD-M-4', N'LWL LCD/LCD Multimode 50µ OM4 ', N'5.0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1229, N'LWL-LCD-M-5', N'LWL LCD/LCD Multimode 50µ OM4 ', N'5,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1230, N'LWL-LCD-M-6', N'LWL LCD/LCD Multimode 50µ OM4 ', N'6,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1231, N'LWL-LCD-M-7', N'LWL LCD/LCD Multimode 50µ OM4 ', N'10,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1232, N'LWL-LCD-M-8', N'LWL LCD/LCD Multimode 50µ OM4 ', N'12,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1233, N'LWL-LCD-M-9', N'LWL LCD/LCD Multimode 50µ OM4 ', N'15,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1234, N'LWL-LCD-M-10', N'LWL LCD/LCD Multimode 50µ OM4 ', N'20,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1235, N'LWL-LCD-M-11', N'LWL LCD/LCD Multimode 50µ OM4 ', N'25,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1236, N'LWL-LCD-M-12', N'LWL LCD/LCD Multimode 50µ OM4 ', N'1,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1237, N'LWL-LCD-M-13', N'LWL LCD/LCD Multimode 50µ OM4 ', N'2,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1238, N'LWL-LCD-M-14', N'LWL LCD/LCD Multimode 50µ OM4 ', N'2,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1239, N'LWL-LCD-M-15', N'LWL LCD/LCD Multimode 50µ OM4 ', N'3,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1240, N'LWL-LCD-M-16', N'LWL LCD/LCD Multimode 50µ OM4 ', N'4,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1241, N'LWL-LCD-M-17', N'LWL LCD/LCD Multimode 50µ OM4 ', N'4,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1242, N'LWL-LCD-M-18', N'LWL LCD/LCD Multimode 50µ OM4 ', N'6,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1243, N'LWL-LCD-M-19', N'LWL LCD/LCD Multimode 50µ OM4 ', N'7,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1244, N'LWL-LCD-M-20', N'LWL LCD/LCD Multimode 50µ OM4 ', N'7,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1245, N'LWL-LCD-M-21', N'LWL LCD/LCD Multimode 50µ OM4 ', N'8,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1246, N'LWL-LCD-M-22', N'LWL LCD/LCD Multimode 50µ OM4 ', N'8,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1247, N'LWL-LCD-M-23', N'LWL LCD/LCD Multimode 50µ OM4 ', N'9,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1248, N'LWL-LCD-M-24', N'LWL LCD/LCD Multimode 50µ OM4 ', N'9,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1249, N'LWL-LCD-M-25', N'LWL LCD/LCD Multimode 50µ OM4 ', N'30,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1250, N'LWL-LCD-M-26', N'LWL LCD/LCD Multimode 50µ OM4 ', N'35,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1251, N'LWL-LCD-M-27', N'LWL LCD/LCD Multimode 50µ OM4 ', N'45,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1252, N'LWL-LCD-M-28', N'LWL LCD/LCD Multimode 50µ OM4 ', N'0,8m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1253, N'LWL-LCD-M-29', N'LWL LCD/LCD Multimode 50µ OM4 ', N'1,8m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1254, N'KU-RJ45-1', N'Kupfer RJ45/RJ45', N'0,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1255, N'KU-RJ45-2', N'Kupfer RJ45/RJ45', N'3,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1256, N'KU-RJ45-3', N'Kupfer RJ45/RJ45', N'1,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1257, N'KU-RJ45-4', N'Kupfer RJ45/RJ45', N'5.0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1258, N'KU-RJ45-5', N'Kupfer RJ45/RJ45', N'5,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1259, N'KU-RJ45-6', N'Kupfer RJ45/RJ45', N'6,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1260, N'KU-RJ45-7', N'Kupfer RJ45/RJ45', N'10,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1261, N'KU-RJ45-8', N'Kupfer RJ45/RJ45', N'12,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1262, N'KU-RJ45-9', N'Kupfer RJ45/RJ45', N'15,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1263, N'KU-RJ45-10', N'Kupfer RJ45/RJ45', N'20,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1264, N'KU-RJ45-11', N'Kupfer RJ45/RJ45', N'25,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1265, N'KU-RJ45-12', N'Kupfer RJ45/RJ45', N'1,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1266, N'KU-RJ45-13', N'Kupfer RJ45/RJ45', N'2,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1267, N'KU-RJ45-14', N'Kupfer RJ45/RJ45', N'2,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1268, N'KU-RJ45-15', N'Kupfer RJ45/RJ45', N'3,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1269, N'KU-RJ45-16', N'Kupfer RJ45/RJ45', N'4,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1270, N'KU-RJ45-17', N'Kupfer RJ45/RJ45', N'4,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1271, N'KU-RJ45-18', N'Kupfer RJ45/RJ45', N'6,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1272, N'KU-RJ45-19', N'Kupfer RJ45/RJ45', N'7,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1273, N'KU-RJ45-20', N'Kupfer RJ45/RJ45', N'7,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1274, N'KU-RJ45-21', N'Kupfer RJ45/RJ45', N'8,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1275, N'KU-RJ45-22', N'Kupfer RJ45/RJ45', N'8,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1276, N'KU-RJ45-23', N'Kupfer RJ45/RJ45', N'9,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1277, N'KU-RJ45-24', N'Kupfer RJ45/RJ45', N'9,5m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1278, N'KU-RJ45-25', N'Kupfer RJ45/RJ45', N'30,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1279, N'KU-RJ45-26', N'Kupfer RJ45/RJ45', N'35,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1280, N'KU-RJ45-27', N'Kupfer RJ45/RJ45', N'45,0m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1281, N'KU-RJ45-28', N'Kupfer RJ45/RJ45', N'0,8m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1282, N'KU-RJ45-29', N'Kupfer RJ45/RJ45', N'1,8m', N'alm01', 0)
INSERT [dbo].[PRODUCTO] ([IdProducto], [Codigo], [Descripcion], [Longitud], [Almacen], [Stock]) VALUES (1283, N'SK-1', N'Stromkabel Schuko C15 - C14', N'0,5m', N'alm01', 0)
SET IDENTITY_INSERT [dbo].[PRODUCTO] OFF
GO
SET IDENTITY_INSERT [dbo].[PROVEEDOR] ON 

INSERT [dbo].[PROVEEDOR] ([IdProveedor], [NumeroDocumento], [NombreCompleto]) VALUES (1, N'444777', N'Enterprise HTO')
INSERT [dbo].[PROVEEDOR] ([IdProveedor], [NumeroDocumento], [NombreCompleto]) VALUES (2, N'555777', N'Empresa Util Rapida')
SET IDENTITY_INSERT [dbo].[PROVEEDOR] OFF
GO
SET IDENTITY_INSERT [dbo].[SALIDA] ON 

INSERT [dbo].[SALIDA] ([IdSalida], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoCliente], [NombreCliente], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (1, N'00001', CAST(N'2023-03-09' AS Date), N'Admin1', N'56346767', N'SAC Belem', 41, 4, N'SK-4', N'Stromkabel Schuko C15 - C14', N'5.0m', N'alm01')
INSERT [dbo].[SALIDA] ([IdSalida], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoCliente], [NombreCliente], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (2, N'00002', CAST(N'2023-03-09' AS Date), N'Admin1', N'56346767', N'SAC Belem', 1, 4, N'SK-4', N'Stromkabel Schuko C15 - C14', N'5.0m', N'alm01')
INSERT [dbo].[SALIDA] ([IdSalida], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoCliente], [NombreCliente], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (3, N'00003', CAST(N'2023-03-09' AS Date), N'Admin1', N'56346767', N'SAC Belem', 10, 4, N'SK-4', N'Stromkabel Schuko C15 - C14', N'5.0m', N'alm01')
INSERT [dbo].[SALIDA] ([IdSalida], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoCliente], [NombreCliente], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (4, N'00004', CAST(N'2023-03-09' AS Date), N'Admin1', N'56346767', N'SAC Belem', 2, 4, N'SK-4', N'Stromkabel Schuko C15 - C14', N'5.0m', N'alm01')
INSERT [dbo].[SALIDA] ([IdSalida], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoCliente], [NombreCliente], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (5, N'00005', CAST(N'2023-03-09' AS Date), N'Admin1', N'56346767', N'SAC Belem', 21, 4, N'SK-4', N'Stromkabel Schuko C15 - C14', N'5.0m', N'alm01')
INSERT [dbo].[SALIDA] ([IdSalida], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoCliente], [NombreCliente], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (6, N'00006', CAST(N'2023-03-09' AS Date), N'Admin1', N'56346767', N'SAC Belem', 1, 4, N'SK-4', N'Stromkabel Schuko C15 - C14', N'5.0m', N'alm01')
INSERT [dbo].[SALIDA] ([IdSalida], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoCliente], [NombreCliente], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (7, N'00007', CAST(N'2023-03-10' AS Date), N'Tecnico', N'56346767', N'SAC Belem', 1, 4, N'SK-4', N'Stromkabel Schuko C15 - C14', N'5.0m', N'alm01')
INSERT [dbo].[SALIDA] ([IdSalida], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoCliente], [NombreCliente], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (8, N'00008', CAST(N'2023-03-10' AS Date), N'Tecnico', N'56346767', N'SAC Belem', 10, 1, N'SK-1', N'Stromkabel Schuko C15 - C14', N'0,5m', N'alm01')
INSERT [dbo].[SALIDA] ([IdSalida], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoCliente], [NombreCliente], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (9, N'00009', CAST(N'2023-03-10' AS Date), N'Tecnico', N'56346767', N'SAC Belem', 1, 1, N'SK-1', N'Stromkabel Schuko C15 - C14', N'0,5m', N'alm01')
INSERT [dbo].[SALIDA] ([IdSalida], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoCliente], [NombreCliente], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (10, N'00010', CAST(N'2023-03-10' AS Date), N'admin', N'56346767', N'SAC Belem', 1, 1, N'SK-1', N'Stromkabel Schuko C15 - C14', N'0,5m', N'alm01')
INSERT [dbo].[SALIDA] ([IdSalida], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoCliente], [NombreCliente], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (11, N'00011', CAST(N'2023-03-10' AS Date), N'admin', N'56346767', N'SAC Belem', 1, 1, N'SK-1', N'Stromkabel Schuko C15 - C14', N'0,5m', N'alm01')
INSERT [dbo].[SALIDA] ([IdSalida], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoCliente], [NombreCliente], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (12, N'00012', CAST(N'2023-03-10' AS Date), N'admin', N'56346767', N'SAC Belem', 69, 4, N'SK-4', N'Stromkabel Schuko C15 - C14', N'5.0m', N'alm01')
INSERT [dbo].[SALIDA] ([IdSalida], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoCliente], [NombreCliente], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (13, N'00013', CAST(N'2023-03-11' AS Date), N'admin', N'56346767', N'SAC Belem', 2, 1, N'SK-1', N'Stromkabel Schuko C15 - C14', N'0,5m', N'alm01')
INSERT [dbo].[SALIDA] ([IdSalida], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoCliente], [NombreCliente], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (14, N'00013', CAST(N'2023-03-11' AS Date), N'admin', N'56346767', N'SAC Belem', 20, 3, N'SK-3', N'Stromkabel Schuko C15 - C14', N'1,5m', N'alm01')
INSERT [dbo].[SALIDA] ([IdSalida], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoCliente], [NombreCliente], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (15, N'AutoGenerado', CAST(N'2023-03-19' AS Date), N'admin', N'56346767', N'SAC Belem', 23, 995, N'SK-3', N'Stromkabel Schuko C15 - C14', N'1,5m', N'alm01')
INSERT [dbo].[SALIDA] ([IdSalida], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoCliente], [NombreCliente], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (16, N'AutoGenerado', CAST(N'2023-03-19' AS Date), N'admin', N'56346767', N'SAC Belem', 2, 995, N'SK-3', N'Stromkabel Schuko C15 - C14', N'1,5m', N'alm01')
INSERT [dbo].[SALIDA] ([IdSalida], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoCliente], [NombreCliente], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (17, N'56SAC219', CAST(N'2023-03-19' AS Date), N'admin', N'56346767', N'SAC Belem', 2, 995, N'SK-3', N'Stromkabel Schuko C15 - C14', N'1,5m', N'alm01')
INSERT [dbo].[SALIDA] ([IdSalida], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoCliente], [NombreCliente], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (18, N'56SAC419', CAST(N'2023-03-19' AS Date), N'admin', N'56346767', N'SAC Belem', 2, 996, N'SK-4', N'Stromkabel Schuko C15 - C14', N'5.0m', N'alm01')
INSERT [dbo].[SALIDA] ([IdSalida], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoCliente], [NombreCliente], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (19, N'56SAC019', CAST(N'2023-03-19' AS Date), N'admin', N'56346767', N'SAC Belem', 1, 995, N'SK-3', N'Stromkabel Schuko C15 - C14', N'1,5m', N'alm01')
INSERT [dbo].[SALIDA] ([IdSalida], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoCliente], [NombreCliente], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (20, N'56SAC019', CAST(N'2023-03-19' AS Date), N'admin', N'56346767', N'SAC Belem', 1, 996, N'SK-4', N'Stromkabel Schuko C15 - C14', N'5.0m', N'alm01')
INSERT [dbo].[SALIDA] ([IdSalida], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoCliente], [NombreCliente], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (21, N'AutoGenerado', CAST(N'2023-03-21' AS Date), N'admin', N'23HAd021', N'HAdminstrador', 1, 995, N'SK-3', N'Stromkabel Schuko C15 - C14', N'1,5m', N'alm01')
INSERT [dbo].[SALIDA] ([IdSalida], [NumeroDocumento], [FechaRegistro], [UsuarioRegistro], [DocumentoCliente], [NombreCliente], [CantidadProductos], [IdProducto], [CodigoProducto], [DescripcionProducto], [LongitudProducto], [AlmacenProducto]) VALUES (22, N'AutoGenerado', CAST(N'2023-03-21' AS Date), N'admin', N'23131313', N'HAdminstrador', 1, 996, N'SK-4', N'Stromkabel Schuko C15 - C14', N'5.0m', N'alm01')
SET IDENTITY_INSERT [dbo].[SALIDA] OFF
GO
SET IDENTITY_INSERT [dbo].[USUARIO] ON 

INSERT [dbo].[USUARIO] ([IdUsuario], [NombreCompleto], [NombreUsuario], [NumeroDocumento], [Clave], [IdPermisos]) VALUES (1, N'HAdminstrador', N'1', N'23131313', N'1', 1)
INSERT [dbo].[USUARIO] ([IdUsuario], [NombreCompleto], [NombreUsuario], [NumeroDocumento], [Clave], [IdPermisos]) VALUES (2, N'HTecnico', N'Tecnico', N'122231', N'123', 2)
INSERT [dbo].[USUARIO] ([IdUsuario], [NombreCompleto], [NombreUsuario], [NumeroDocumento], [Clave], [IdPermisos]) VALUES (3, N'HAlmacenero', N'Almacenero', N'33321323', N'123', 3)
SET IDENTITY_INSERT [dbo].[USUARIO] OFF
GO
/****** Object:  Index [UQ__ENTRADA__BB164DEB6F0EA979]    Script Date: 24/03/2023 19:32:01 ******/
ALTER TABLE [dbo].[ENTRADA] ADD  CONSTRAINT [UQ__ENTRADA__BB164DEB6F0EA979] UNIQUE NONCLUSTERED 
(
	[IdEntrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__PRODUCTO__0988921114CBF0B1]    Script Date: 24/03/2023 19:32:01 ******/
ALTER TABLE [dbo].[PRODUCTO] ADD  CONSTRAINT [UQ__PRODUCTO__0988921114CBF0B1] UNIQUE NONCLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__PROVEEDO__E8B631AE93CF925F]    Script Date: 24/03/2023 19:32:01 ******/
ALTER TABLE [dbo].[PROVEEDOR] ADD  CONSTRAINT [UQ__PROVEEDO__E8B631AE93CF925F] UNIQUE NONCLUSTERED 
(
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__SALIDA__5D69EC73F7D9B1B1]    Script Date: 24/03/2023 19:32:01 ******/
ALTER TABLE [dbo].[SALIDA] ADD  CONSTRAINT [UQ__SALIDA__5D69EC73F7D9B1B1] UNIQUE NONCLUSTERED 
(
	[IdSalida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__USUARIO__5B65BF967649AED0]    Script Date: 24/03/2023 19:32:01 ******/
ALTER TABLE [dbo].[USUARIO] ADD  CONSTRAINT [UQ__USUARIO__5B65BF967649AED0] UNIQUE NONCLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PRODUCTO] ADD  CONSTRAINT [DF__PRODUCTO__Almace__5441852A]  DEFAULT ('') FOR [Almacen]
GO
ALTER TABLE [dbo].[PRODUCTO] ADD  CONSTRAINT [DF__PRODUCTO__Stock__571DF1D5]  DEFAULT ((0)) FOR [Stock]
GO
