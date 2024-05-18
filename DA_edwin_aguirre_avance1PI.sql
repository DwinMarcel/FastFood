
-------------------------------------- CREACION DE BASES DE DATOS------------------------------------

CREATE DATABASE FastFoodDB;

-- Posicionarme sobre la BD
USE FastFoodDB;

----------------------------------------- CREACION DE DATABLAS---------------------------------------

CREATE TABLE Productos(
    ProductoID INT PRIMARY KEY IDENTITY, -- Clave primaria de Productos
	Nombre VARCHAR(255) NOT NULL,
	CategoriaID INT, -- Clave Foranea de Categoria.
	Precio DECIMAL(10,2) NOT NULL);

CREATE TABLE Categorias(
    CategoriaID INT PRIMARY KEY IDENTITY, -- Clave primaria de Categorias
	Nombre VARCHAR(255) NOT NULL);

CREATE TABLE Sucursales(
	 SucursalID INT PRIMARY KEY IDENTITY, -- Clave primaria de Sucursales
	 Nombre VARCHAR(255) NOT NULL,
	 Direccion VARCHAR(55));
 
CREATE TABLE Empleados(
     EmpleadoID INT PRIMARY KEY IDENTITY, -- Clave primaria de Empleados
	 Nombre VARCHAR (255) NOT NULL,
	 Posicion VARCHAR(255),
	 Departamento VARCHAR(255),
	 SucursalID INT, -- Clave foranea de Sucursales
	 Rol VARCHAR(255));

CREATE TABLE Clientes(
     ClienteID INT PRIMARY KEY IDENTITY, -- Clave primaria de Clientes
	 Nombre VARCHAR(255) NOT NULL,
	 Direccion VARCHAR(255));

CREATE TABLE OrigenesOrden(
     OrigenID INT PRIMARY KEY IDENTITY, -- Clave primaria de OrigenesOrden
	 Descripcion VARCHAR(255) NOT NULL);

CREATE TABLE TiposPago(
     TipoPagoID INT PRIMARY KEY IDENTITY, -- Clave primaria de TiposPago
	 Descripcion VARCHAR(255) NOT NULL);

CREATE TABLE Mensajeros(
     MensajeroID INT PRIMARY KEY IDENTITY, -- Clave primaria de Mensajeros
     Nombre VARCHAR(255) NOT NULL,
	 ESExterno BIT NOT NULL); 

CREATE TABLE Ordenes(
     OrdenID INT PRIMARY KEY IDENTITY, -- Se asigna clave primaria autoincremental a OrdenID
     ClienteID INT, -- Clave foranea de Clientes
	 EmpleadoID INT, -- Clave foranea de empleados
	 SucursalID INT, -- Clave foranea de sucursales
	 MensajeroID INT, -- Clave foranea de mensajeros
	 TipoPagoID INT, -- Clave foranea de tiposPago
	 OrigenID INT, -- Clave foranea de origenes
	 HorarioVenta VARCHAR(50), -- Mañana, tarde, noche
	 TotalCompra DECIMAL(10, 2),
	 KilometrosRecorrer DECIMAL(10, 2), -- En caso de entrega a domicilio
	 FechaDespacho DATETIME2(1), -- Hora y fecha de entrega al repartidor -- Se usa DATETIME2 por que DATETIME entra en conflicto con los datos proporcionados por HENRY
	 FechaEntrega DATETIME2(1), -- Hora y fecha de la orden entregada -- Se usa DATETIME2 por que DATETIME entra en conflicto con los datos a cargar proporcionados por HENRY
	 FechaOrdenTomada DATETIME2(1), -- En caso de drive thru o presencial -- Se usa DATETIME2 por que DATETIME entra en conflicto con los datos proporcionados por HENRY
	 FechaOrdenLista DATETIME2(1));  -- Se usa DATETIME2 por que DATETIME entra en conflicto con los datos a cargar proporcionados por HENRY
	 
CREATE TABLE DetalleOrdenes(
     OrdenID INT, -- Clave primaria Y Clave foranea DetalleOrdenes-Ordenes
	 ProductoID INT, -- Clave primaria y clave foranea de Productos-DetalleOrdenes
	 Cantidad INT,
	 Precio DECIMAL(10, 2)
     PRIMARY KEY(OrdenID, ProductoID)); -- Asignacion de claves primarias a OrdenID-ProductoID

----------------------------------------GENERAR RELACIONES------------------------------------

ALTER TABLE Productos
ADD CONSTRAINT FK_Productos_Categorias -- Nombre de la relacion
FOREIGN KEY(CategoriaID) REFERENCES Categorias(CategoriaID);

ALTER TABLE DetalleOrdenes
ADD CONSTRAINT FK_DetalleOrdenes_Productos -- Nombre de la relacion
FOREIGN KEY(ProductoID) REFERENCES Productos(ProductoID);

ALTER TABLE DetalleOrdenes
ADD CONSTRAINT FK_DetalleOrdenes_Ordenes -- Nombre de la relacion
FOREIGN KEY(OrdenID) REFERENCES Ordenes(OrdenID); -------

ALTER TABLE Ordenes
ADD CONSTRAINT FK_Ordenes_Clientes -- Nombre de la relacion
FOREIGN KEY(ClienteID) REFERENCES Clientes(ClienteID);

ALTER TABLE Ordenes
ADD CONSTRAINT FK_Ordenes_TiposPago -- Nombre de la relacion
FOREIGN KEY(TipoPagoID) REFERENCES TiposPago(TipoPagoID);

ALTER TABLE Ordenes
ADD CONSTRAINT FK_Ordenes_Mensajeros -- Nombre de la relacion
FOREIGN KEY(MensajeroID) REFERENCES Mensajeros(MensajeroID); 

ALTER TABLE Ordenes
ADD CONSTRAINT FK_Ordenes_Sucursales -- Nombre de la relacion
FOREIGN KEY(SucursalID) REFERENCES Sucursales(SucursalID);

ALTER TABLE Empleados
ADD CONSTRAINT FK_Empleados_Sucursales -- Nombhre de la relacion
FOREIGN KEY(SucursalID) REFERENCES Sucursales(SucursalID);

ALTER TABLE Ordenes
ADD CONSTRAINT FK_Ordenes_OrigenesOrden -- Nombre de la relacion
FOREIGN KEY(OrigenID) REFERENCES OrigenesOrden(OrigenID);

