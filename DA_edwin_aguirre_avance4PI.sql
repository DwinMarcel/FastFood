--------------------------------PREGUNTAS PARA CONSULTAS-------------------------------------------------------

USE FastFoodDB; -- Seleccionar base de datos FastFood

--�C�mo puedo obtener una lista de todos los productos junto con sus categor�as?------------------------------

SELECT p.Nombre, c.Nombre AS Categoria -- Seleccionar tabla productos renombrada como P y tabla Categorias renombrada como C y renombrar campo como Categoria
FROM Productos p -- desde la tabla Productos renombrada como P
INNER JOIN Categorias C ON p.CategoriaID = c.CategoriaID -- compara tabla Categorias renombrada como C sobre la tabla Productos y la columna CategoriaID y traer valores coincidentes
ORDER BY p.Nombre ASC; -- Agrupar la columna Productos de la tabla Nombre de mayor a menor


--�C�mo puedo saber a qu� sucursal est� asignado cada empleado?----------------------------------------------

-- A parte de la sucursales se le asigna el departamento ya que todos los empleados pertenecen a la Sucursal central
SELECT T1. EmpleadoID, T1.Nombre, T1.Departamento, T2.Nombre AS [Sucursales] -- Seleccionar la tabla Empleados las columnas de EmpleadoID, Nombre, Departamento y de la tabla Sucursales la columna de Nombre y renpombrar como Sucursales 
FROM Empleados T1 -- desde la tabla Empleados renombrada como T1
INNER JOIN Sucursales T2 ON T1.SucursalID = T2.SucursalID; -- Comparar la tabla Sucursales renombrada como T2 en la tabla Empleados columna SucursalID y traerme valores correspondientes de cada tablla


--�Existen productos que no tienen una categor�a asignada?---------------------------------------------------

-- Segun la consulta no existen productos sin categoria asignada
SELECT p.Nombre AS Productos -- Seleccionr la columna Nombre de la tabla Productos y renombrar como Productos
FROM Productos p -- Desde la tabla Productos renombrada como P
LEFT JOIN Categorias c ON p.CategoriaID = c.CategoriaID -- Comparar tabla de Categoria renombrada como C con Columna CategoriaID tabla Productos y traerme valores correspondientes priorizando la columna de la derecha
WHERE c.CategoriaID IS NULL; -- En donde Columna CategoriaID de la tabla Categorias exista ausencia de valor


--�C�mo puedo obtener un detalle completo de las �rdenes, ---------------------------------------------------
--incluyendo cliente, empleado que tom� la orden, y el mensajero que la entreg�?-----------------------------

-- Se trae detalle completo de las ordenes y en las ultimas tres columnas de la consulta se describe el nombre del cliente, empleado y mensajero 
SELECT T1.*, T2.Nombre AS [Cliente], T3.Nombre AS [Empleado], T4.Nombre AS [Mensajero] -- Seleccionar toda la ttabla Ordenes junto a columnas de Nombres de tablas Clientes, Empleados, Mensajeros con sus respectivos renombres 
FROM Ordenes T1 -- Desde la tabla Ordenes renombrada como T1
INNER JOIN Clientes T2 -- Comparar tabla Clientes renombrada como T2
ON T1.ClienteID =T2.ClienteID -- Sobre columna ClienteID de tabla Ordenes y traerme valores que coincidan con la columna clienteID de la tabla Clientes
INNER JOIN Empleados T3 -- Comparar tabla Clientes renombrada como T3
ON T1.ClienteID = T3.EmpleadoID -- Sobre columna ClienteID de tabla Ordenes y traerme valores que coincidan con la columna EmpleadoID de la tabla Empleados
INNER JOIN Mensajeros T4 -- Comparar tabla Clientes renombrada como T4
ON T1.MensajeroID =T4.MensajeroID; -- Sobre columna MensajeroID de tabla Ordenes y traerme valores que coincidan con la columna MensajeroID de la tabla Mensajeros


--�Cu�ntos productos de cada tipo se han vendido en cada sucursal?-------------------------------------------

SELECT T5.Nombre AS [Sucursal], T4.Nombre AS [Categoria], SUM(Cantidad) AS [Cantidad de Art.Vendidos] -- Seleccionar las columnas de nombre en las tablas Sucursales y Categorias y sumar cantidades renombrando cada columna 
FROM Ordenes AS T1  -- Desde la tabla Ordenes renombrandola como T1
INNER JOIN DetalleOrdenes T2 -- Comparar tabla DetalleOrdenes y renombrar como T1
ON T1.ClienteID = T2.OrdenID -- Sobre columna ClienteID de tabla Ordenes y traerme valores que coincidan con la columna OrdenID de la tabla Empleados de la tabla DetalleOrdenes
INNER JOIN Productos T3 -- Comparar tabla Productos y renombrar como T3
ON T2.ProductoID = T3.ProductoID -- Sobre columna ClienteID de tabla Ordenes y traerme valores que coincidan con la columna ProductoID de la tabla Empleados de la tabla DetalleOrdenes
INNER JOIN Categorias T4 -- Comparar tabla Categorias y renombrar como T4
ON T3.CategoriaID = T4.CategoriaID -- Sobre columna ClienteID de tabla Ordenes y traerme valores que coincidan con la columna CategoriaID de la tabla Empleados de la tabla Productos
INNER JOIN Sucursales T5  -- Comparar tabla Sucursales y renombrar como T5
ON T1.SucursalID = T5.SucursalID -- Sobre columna ClienteID de tabla Ordenes y traerme valores que coincidan con la columna SucursalID de la tabla Empleados de la tabla Ordenes
GROUP BY T5.Nombre, T4.Nombre; -- Y agrupar por la columna de nombres en las tablas de Categorias y Sucursales
