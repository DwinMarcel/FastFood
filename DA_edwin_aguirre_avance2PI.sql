---------------------------------------POBLAR TABLAS-------------------------------------------

USE FastFoodDB;

-- Insertar datos en Categorias
INSERT INTO Categorias (Nombre) VALUES -- Insertar dentro de la tabla Categorias en la columna Nombre los valores de..........
('Comida R�pida'), ('Postres'), ('Bebidas'), ('Ensaladas'), ('Desayunos'),
('Cafeter�a'), ('Helados'), ('Comida Vegana'), ('Carnes'), ('Pizzas');

Select * from Categorias; -- Seleccionar toda la tabla de Categorias

-- Insertar datos en Productos
INSERT INTO Productos (Nombre, CategoriaID, Precio) VALUES -- Insertar dentro de la tabla Productos en las columnas Nombre, CategoriaID, Precio los valores de.........
('Hamburguesa Deluxe', 1, 9.99), ('Cheeseburger', 1, 7.99), ('Pizza Margarita', 10, 11.99), ('Pizza Pepperoni', 10, 12.99), ('Helado de Chocolate', 7, 2.99),
('Helado de Vainilla', 7, 2.99), ('Ensalada C�sar', 4, 5.99), ('Ensalada Griega', 4, 6.99), ('Pastel de Zanahoria', 2, 3.99), ('Brownie', 2, 2.99);

Select * from Productos; -- Sellecionar toda la tabla de Productos

-- Insertar datos en Sucursales
INSERT INTO Sucursales (Nombre, Direccion) VALUES-- Insertar dentro de la tabla Sucursales en la columna Nombre, Direccion los valores de.........
('Sucursal Central', '1234 Main St'), ('Sucursal Norte', '5678 North St'), ('Sucursal Este', '9101 East St'), ('Sucursal Oeste', '1121 West St'), ('Sucursal Sur', '3141 South St'),
('Sucursal Playa', '1516 Beach St'), ('Sucursal Monta�a', '1718 Mountain St'), ('Sucursal Valle', '1920 Valley St'), ('Sucursal Lago', '2122 Lake St'), ('Sucursal Bosque', '2324 Forest St');

Select * from Sucursales; -- Seleccionar toda la tabla Sucursales

-- Insertar datos en Empleados
INSERT INTO Empleados (Nombre, Posicion, Departamento, SucursalID, Rol) VALUES-- Insertar dentro de la tabla Empleados en la columna Nombre, Posicion, Departamento, SucursalID, Rol los valores de.........
('John Doe', 'Gerente', 'Administraci�n', 1, 'Vendedor'), ('Jane Smith', 'Subgerente', 'Ventas', 1, 'Vendedor'), ('Bill Jones', 'Cajero', 'Ventas', 1, 'Vendedor'), ('Alice Johnson', 'Cocinero', 'Cocina', 1, 'Vendedor'), ('Tom Brown', 'Barista', 'Cafeter�a', 1, 'Vendedor'),
('Emma Davis', 'Repartidor', 'Log�stica', 1, 'Mensajero'), ('Lucas Miller', 'Atenci�n al Cliente', 'Servicio', 1, 'Vendedor'), ('Olivia Garc�a', 'Encargado de Turno', 'Administraci�n', 1, 'Vendedor'), ('Ethan Martinez', 'Mesero', 'Restaurante', 1, 'Vendedor'), ('Sophia Rodriguez', 'Auxiliar de Limpieza', 'Mantenimiento', 1, 'Vendedor');

Select * from Empleados; -- Selecionar toda la tabla Empleados

-- Insertar datos en Clientes
INSERT INTO Clientes (Nombre, Direccion) VALUES-- Insertar dentro de la tabla Clientes en la columna Nombre, Direccion los valores de.........
('Cliente Uno', '1000 A Street'), ('Cliente Dos', '1001 B Street'), ('Cliente Tres', '1002 C Street'), ('Cliente Cuatro', '1003 D Street'), ('Cliente Cinco', '1004 E Street'),
('Cliente Seis', '1005 F Street'), ('Cliente Siete', '1006 G Street'), ('Cliente Ocho', '1007 H Street'), ('Cliente Nueve', '1008 I Street'), ('Cliente Diez', '1009 J Street');

Select * from Clientes; -- Seleccionar toda la tabla Clientes

-- Insertar datos en OrigenesOrden
INSERT INTO OrigenesOrden (Descripcion) VALUES-- Insertar dentro de la tabla OrigenesOrden en la columna Descripcion los valores de.........
('En l�nea'), ('Presencial'), ('Tel�fono'), ('Drive Thru'), ('App M�vil'),
('Redes Sociales'), ('Correo Electr�nico'), ('Publicidad'), ('Recomendaci�n'), ('Evento');

Select * from OrigenesOrden; -- Seleccionar toda la tabla OrigenesOrden

-- Insertar datos en TiposPago
INSERT INTO TiposPago (Descripcion) VALUES-- Insertar dentro de la tabla TiposPago en la columna Descripcion los valores de.........
('Efectivo'), ('Tarjeta de Cr�dito'), ('Tarjeta de D�bito'), ('PayPal'), ('Transferencia Bancaria'),
('Criptomonedas'), ('Cheque'), ('Vale de Comida'), ('Cup�n de Descuento'), ('Pago M�vil');

Select * from TiposPago; -- Seleccionar toda la tabla TiposPago

-- Insertar datos en Mensajeros
INSERT INTO Mensajeros (Nombre, EsExterno) VALUES-- Insertar dentro de la tabla Mensajeros en la columna Nombre, EsExterno los valores de.........
('Mensajero Uno', 0), ('Mensajero Dos', 1), ('Mensajero Tres', 0), ('Mensajero Cuatro', 1), ('Mensajero Cinco', 0),
('Mensajero Seis', 1), ('Mensajero Siete', 0), ('Mensajero Ocho', 1), ('Mensajero Nueve', 0), ('Mensajero Diez', 1);

Select * from Mensajeros; -- Seleccionar toda la tabla de Mensajeros

-- Insertar datos en Ordenes
-- Insertar dentro de la tabla Ordenes en la columna ClienteID, EmpleadoID, SucursalID, MensajeroID, TipoPagoID, OrigenID, HorarioVenta, TotalCompra, KilometrosRecorrer, FechaDespacho, FechaEntrega, FechaOrdenTomada, FechaOrdenLista los valores de.........
INSERT INTO Ordenes (ClienteID, EmpleadoID, SucursalID, MensajeroID, TipoPagoID, OrigenID, HorarioVenta, TotalCompra, KilometrosRecorrer, FechaDespacho, FechaEntrega, FechaOrdenTomada, FechaOrdenLista) VALUES
(1, 1, 1, 1, 1, 1, 'Ma�ana', 50.00, 5.5, '2023-01-10 08:30:00', '2023-01-10 09:00:00', '2023-01-10 08:00:00', '2023-01-10 08:15:00'),
(2, 2, 2, 2, 2, 2, 'Tarde', 75.00, 10.0, '2023-02-15 14:30:00', '2023-02-15 15:00:00', '2023-02-15 13:30:00', '2023-02-15 14:00:00'),
(3, 3, 3, 3, 3, 3, 'Noche', 20.00, 2.0, '2023-03-20 19:30:00', '2023-03-20 20:00:00', '2023-03-20 19:00:00', '2023-03-20 19:15:00'),
(4, 4, 4, 4, 4, 4, 'Ma�ana', 30.00, 0.5, '2023-04-25 09:30:00', '2023-04-25 10:00:00', '2023-04-25 09:00:00', '2023-04-25 09:15:00'),
(5, 5, 5, 5, 5, 5, 'Tarde', 55.00, 8.0, '2023-05-30 15:30:00', '2023-05-30 16:00:00', '2023-05-30 15:00:00', '2023-05-30 15:15:00'),
(6, 6, 6, 6, 6, 1, 'Noche', 45.00, 12.5, '2023-06-05 20:30:00', '2023-06-05 21:00:00', '2023-06-05 20:00:00', '2023-06-05 20:15:00'),
(7, 7, 7, 7, 7, 2, 'Ma�ana', 65.00, 7.5, '2023-07-10 08:30:00', '2023-07-10 09:00:00', '2023-07-10 08:00:00', '2023-07-10 08:15:00'),
(8, 8, 8, 8, 8, 3, 'Tarde', 85.00, 9.5, '2023-08-15 14:30:00', '2023-08-15 15:00:00', '2023-08-15 14:00:00', '2023-08-15 14:15:00'),
(9, 9, 9, 9, 9, 4, 'Noche', 95.00, 3.0, '2023-09-20 19:30:00', '2023-09-20 20:00:00', '2023-09-20 19:00:00', '2023-09-20 19:15:00'),
(10, 10, 10, 10, 10, 5, 'Ma�ana', 100.00, 15.0, '2023-10-25 09:30:00', '2023-10-25 10:00:00', '2023-10-25 09:00:00', '2023-10-25 09:15:00');

Select * from Ordenes; -- Seleccionar toda la tabla de DetalleOrdenes

-- Insertar datos en DetalleOrdenes
INSERT INTO DetalleOrdenes (OrdenID, ProductoID, Cantidad, Precio) VALUES -- Insertar dentro de la tabla DetalleOrdenes en la columna OrdenID, ProductoID, Cantidad, Precio los valores de.........
(1, 1, 3, 23.44),
(1, 2, 5, 45.14),
(1, 3, 4, 46.37),
(1, 4, 4, 42.34),
(1, 5, 1, 18.25),
(1, 6, 4, 20.08),
(1, 7, 2, 13.31),
(1, 8, 2, 20.96),
(1, 9, 4, 30.13),
(1, 10, 3, 38.34);




----------------------------------------------EJERCICIOS-----------------------------------------------

Select * from Productos; -- Seleccionar toda la tabla de Productos

-- Aumentar el precio de todos los productos en la categor�a 1
UPDATE Productos -- Actualiza la tabla productos
SET Precio = Precio + 1 --Aumentar 1 a el valor actual de precios
WHERE CategoriaID = 1; --Donde la categoria sea igual a 1

Select * from Empleados; -- Seleccionar toda la tabla de Empleados

-- Cambiar la posici�n de todos los empleados del departamento 'Cocina' a 'Chef'
UPDATE Empleados -- Actualiza la tabla Empleados
SET Posicion = 'Chef' -- poner el valor Chef
WHERE Departamento = 'Cocina';---Donde el departamento sea igual a Cocina

Select * from Sucursales; -- Seleccionar toda la tabla de Sucursales

-- Actualizar la direcci�n de una sucursal espec�fica
UPDATE Sucursales -- Actualiza la tabla Sucursales
SET Direccion = '1234 New Address St' ---cambiar el valor designado
WHERE SucursalID = 1; ---en donde el ID sucursal sea igual a 1





------------------------------ELIMINACIONES DE EJEMPLO (DELETE)----------------------------------

/*1. Eliminar una orden espec�fica
Imaginemos que quieres eliminar una orden espec�fica, 
por ejemplo, la orden con OrdenID = 10. 
Esta operaci�n eliminar�a la orden junto con sus detalles asociados 
(deber�as asegurarte de eliminar o actualizar cualquier dato relacionado 
para mantener la integridad referencial).*/

Select * from DetalleOrdenes; -- Seleccionar toda la tabla de Empleados
Select * from Ordenes; -- Seleccionar toda la tabla de Ordenes

DELETE FROM DetalleOrdenes -- Borrar de la tabla detallesOrdenes
WHERE OrdenID = 10; --En donde el OrdenID sea igual a 10

DELETE FROM Ordenes -- Borrar de la tabla Ordenes
WHERE OrdenID = 10; --En donde el OrdenID sea igual a 10

/*2. Eliminar todos los productos de una categor�a espec�fica
Si decides dejar de ofrecer todos los "Postres" 
(supongamos que Categorias.CategoriaID = 2 para "Postres"), 
podr�as querer eliminar todos los productos asociados a esa categor�a.*/

Select * from Productos; -- Seleccionar toda la tabla de Productos

DELETE FROM Productos -- Eliminar de la tabla Productos en donde CategoriaID se igual a dos
WHERE CategoriaID = 2; --Antes de ejecutar este comando, deber�as considerar si hay �rdenes que incluyen estos productos y decidir c�mo manejar esas referencias.

/*3. Eliminar empleados de una sucursal que cerr�
Si una sucursal cierra, por ejemplo, 
SucursalID = 10 (Sucursal Bosque), 
podr�as necesitar eliminar a todos los empleados asociados con esa sucursal.*/

Select * from Empleados; -- Selecionar toda la tabla Empleados

DELETE FROM Empleados -- Eliminar de la tabla Empleados en donde la SucursalID sea igual a 10
 WHERE SucursalID = 10;





---------------------------------------PREGUNTAS PARA CONSULTAS-----------------------------------------

--�Cu�l es la cantidad total de registros �nicos en la tabla de �rdenes?

SELECT * FROM Ordenes; -- Seleccionar toda la tabla Ordenes

SELECT COUNT(OrdenID) AS CantidadRegistros -- Contar la columna de OrdenID y renombrar por CantidadRegistros
FROM Ordenes; --  de la tabla Ordenes

--�Cu�ntos empleados existen en cada departamento?

SELECT * FROM Empleados; -- Seleccionar toda la tabla de Empleados

SELECT Departamento, -- Selecciona la columna departamento
COUNT(EmpleadoID) AS CantidadEmpleados -- y cuenta la columna EmpleadosID renombrandola como CantidadEmpleados
FROM Empleados -- De la tabla Empleados
GROUP BY Departamento; -- y los agrupas por la columna de Departamento

--�Cu�ntos productos hay por c�digo de categor�a?

SELECT * FROM Productos; -- Seleccionar toda la columna de Productos

SELECT CategoriaID, -- Selecciona la columna CategoriaID
COUNT(ProductoID) AS Productos -- y cuenta la columna ProductosID renombrandola como Productos
FROM Productos -- De la tabla Productos
GROUP BY CategoriaID; -- Y los agrupas por CategoriaID

--�Cu�ntos clientes se han importado a la tabla de clientes?

SELECT * FROM Clientes; -- Seleccionar toda la tabla Clientes

SELECT COUNT(ClienteID) AS ClientesImportados -- Contar la columna de ClienteID y renombrarla como ClientesImportados
FROM Clientes; -- pertenecinte a la tabla Clientes

--�Cu�les son las sucursales con un promedio de ventas por orden superior a un valor espec�fico, 
--ordenadas por el promedio de kil�metros recorridos para las entregas de mayor a menor?

SELECT * FROM Ordenes; -- Seleccionar toda la tabla Ordenes

SELECT SucursalID, -- Seleccionar la columna SucursalID
       AVG(TotalCompra) AS PromedioVentaPorOrden, -- El promedio de la columna TotalCompra renombrandola como PromedioVentaPorOrden
	   AVG(KilometrosRecorrer) AS PromedioKM -- Y el promedio de la columna KilometrosRecorrer renombrandola como PromedioKM
FROM Ordenes -- De la tabla Ordenes
GROUP BY SucursalID -- Agrupandolos por la columna SucursalID
HAVING AVG(TotalCompra) > 50 -- Y filtrar los valores del promedio de la columna TotalCompra que sean mayores a 50
ORDER BY PromedioKM DESC; -- Ordenandolos de mayor a menor en la columna renombrada como PromedioKM


