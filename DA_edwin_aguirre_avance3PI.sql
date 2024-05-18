
----------------------------------------PREGUNTAS PARA CONSULTAS-----------------------------------------------

USE FastFoodDB;

--�Cu�l es el total de ventas (TotalCompra) a nivel global?--------------------------------------------------

SELECT * FROM Ordenes; -- Seleccionar toda la tabla Ordenes

SELECT SUM(TotalCompra) AS TotalVentasGlobales -- Seleccionar la suma de la columna TotalCompra y renombrarla como TotalVentasGlobales
FROM Ordenes; -- De la tabla Ordenes



--�Cu�l es el precio promedio de los productos dentro de cada categor�a?--------------------------------------

SELECT * FROM Productos;
SELECT * FROM Categorias;

-- En esta query solo me arroja el precio promedio sin el nombre de la categoria
SELECT AVG(Precio) AS PPPxCategoria -- Seleccionar el promedio de la columna Precio y renombrar como PPPxCategoria
FROM Productos -- De la tabla Productos
GROUP BY CategoriaID -- Agrupar por CategoriaID
ORDER BY PPPxCategoria DESC; -- Y ordenar por la columna renombrada como PPPxCategoria

-- En esta query me arroja el nombre de la categoria en concordancia con el precio promedio
SELECT Categorias.Nombre AS Categoria, -- Seleccionar de la tabla Categorias la columna Nombre y renombrar como Categoria
     AVG(Productos.precio) AS precio_promedio -- De igual forma seleccionar el promedio de la tabla Productos la columna Nombre y renombrar como Precio_Promedio
FROM productos -- Todo lo anterior traerlo de la tabla Ordenes
INNER JOIN Categorias ON Productos.CategoriaID = Categorias.CategoriaID -- Unir la tabla Categorias con la tabla de productos enla columna categoriaID quedando la tabla de categorias en la columna de CategoriaID
GROUP BY Categorias.Nombre -- Agrupar en tabla Categorias columna Nombre
ORDER BY precio_promedio DESC; -- Y ordenar lla columna renombrada Precio_Promedio



--�Cu�l es el valor de la orden m�nima y m�xima por cada sucursal?------------------------------------------
SELECT * FROM Sucursales; -- Seleccionar toda la tabla Sucursales
SELECT * FROM DetalleOrdenes; -- Seleccionar toda la tabla DetalleOrdenes

-- En este query se multiplica la cantidad que hay en cada Orden por el Precio tanto para el minimo como para el maximo por tal razon me da los valores tan elevados en cada sucursal
SELECT Sucursales.SucursalID, -- Seleccionar de la tabla Sucursales la columna SucursalID
       Sucursales.Nombre AS NombreSucursal, -- Tambien seleccionar de la tabla Sucursales la columna Nombre y renombrarla como NombreSucursal
       MIN(DetalleOrdenes.Cantidad * DetalleOrdenes.Precio) AS ValorOrdenMinimo, -- Sacar el valor minimo de la tabla DetalleOrdenes columna Cantidad multiplicado por columna Precio de la tabla DetalleOrdenes y renombrar como ValorOrdenMinimo
       MAX(DetalleOrdenes.Cantidad * DetalleOrdenes.Precio) AS ValorOrdenMaximo --Sacar el valor maximo de la tabla DetalleOrdenes columna Cantidad multiplicado por columna Precio de la tabla DetalleOrdenes y renombrar como ValorOrdenMaximo
FROM Sucursales -- Todo lo anterior de la tabla Sucursales
INNER JOIN DetalleOrdenes ON Sucursales.SucursalID = DetalleOrdenes.Cantidad -- Unir la tabla de DetalleOrdenes sobre la columna SucursalID tabla Sucursales quedando la tabla DettalleOrdenes en la columna Cantidad
GROUP BY Sucursales.SucursalID, Sucursales.Nombre -- Agrupar la columna SucursalID de la tabla Sucursales y la columna Nombre de la tabla Sucursales
ORDER BY ValorOrdenMinimo DESC;-- Y ordenar la columna rnombrada como ValorMinimo de mayor a menor

-- En este query me trae el valor minimo y maximo en relacion con el SucursalID
SELECT SucursalID, --Selecioanar la columna SucursalID
       MIN(TotalCompra) AS Minimo, -- Traer valor minimo de la columna TotalCompra y renombrar como Minimo
	   MAX(TotalCompra) AS Maximo -- Traer valor maximo de la columna TotalCompra y renombrar como Maximo
FROM Ordenes -- De la tabla Ordenes
GROUP BY SucursalID; -- Agrupar por la columna CategoriaID



--�Cu�l es el mayor n�mero de kil�metros recorridos para una entrega?----------------------------------------

SELECT * FROM Ordenes; -- Seleccionar la taba de Ordenes

SELECT MAX(KilometrosRecorrer) AS MaximoKilometrosRecorridos -- Seleccionar el maximo de la tabla KilometrosRecorrer y renombrarlo como MaximoKilometrosRecorridos
FROM Ordenes; -- De la tabla Ordenes



--�Cu�l es la cantidad promedio de productos por orden?------------------------------------------------------

SELECT * FROM DetalleOrdenes; -- Seleccionar la tabla DetalleOrdenes

SELECT AVG(Cantidad) AS CantidadPromedio -- SeleccionaR el promedio de la columna Cantidad y renombrar como CantidadPromedio
FROM DetalleOrdenes; -- De la tabla DetalleOrdenes



--�Cu�l es el total de ventas por cada tipo de pago?--------------------------------------------------------

SELECT * FROM TiposPago; -- Seleccionar toda la tabla TiposPago

SELECT TipoPagoID, -- Seleccionar la columna de TipoPagoID 
       SUM(TotalCompra) AS [Ventas] -- Sumar la columna TotalCompra y renombrarla como Ventas [ el nombre Ventas esta entre corchetes para que sql no me la tome como la columna Ventas ]
FROM Ordenes -- De la tabla ordenes
GROUP BY TipoPagoID; -- Y agrupar por TiposPagoID



--�Cu�l sucursal tiene la venta promedio m�s alta?----------------------------------------------------------

SELECT * FROM Ordenes; -- Seleccionar toda la tabla Ordenes

SELECT TOP 1 SucursalID, -- Seleccionar el valor mas alto de la columna SucursalID
       AVG(TotalCompra) AS PromedioCompra --Y el promedio de la columna TotalCompra y renombrar como PromedioCompra
FROM Ordenes -- Lo anterior sacarlo de la tabla Ordenes
GROUP BY SucursalID -- Agruparlo por  la columna SucursalID
ORDER BY PromedioCompra DESC; -- Y ordenar por la columna PromedioCompra



--�Cu�les son las sucursales que han generado ventas por orden por encima de $100,----------------------------
--y c�mo se comparan en t�rminos del total de ventas?---------------------------------------------------------

SELECT * FROM Ordenes -- Seleccionar toda la tabla Ordenes

SELECT SucursalID, -- Seleccionar la columna SucursalID
       SUM(TotalCompra) AS [Ventas Totales] -- Sumar la �columna TotalCompra y renombrarla como Ventas Totales [Ventas totales esta Entre corchetes por que son dos palabras separadas]
FROM Ordenes -- De la columna Ordenes
GROUP BY SucursalID -- Agrupar por la columna SucursalID
HAVING SUM(TotalCompra) > 50 -- Y filtrar la suma de la columna a valores que esten por encima de 100(Se usa el valor de 50 ya que no hay valores que esten por encima de 100 por ende la consulta no me devuelve resultados)
ORDER BY [Ventas Totales] DESC; -- Ordenar la columna renombrada Ventas Totales de mayor a menor



--�C�mo se comparan las ventas promedio antes y despu�s del 1 de julio de 2023?------------------------------

SELECT * FROM Ordenes; -- Seleccionar toda la tabla Ordenes

SELECT AVG(TotalCompra) AS PromedioVenta, -- Seleccionar el promedio de la columa TotalCompra y renombrar como PromedioVenta
       'Promedio Ventas Antes de Julio 2023' AS [Comentario] -- 'La frase entre comillas asigna nombre al resultado' [La palabra entre corchetes le asigna nombre al campo del nombre del resultado]
FROM Ordenes -- De la tabla Ordenes
WHERE FechaOrdenTomada < '2023-07-01' -- EN donde la columna de la FechaOrdenTomada sea menor a 2023-07-01  
UNION -- Une la consulta de arriba y la consulta de abajo
SELECT AVG(TotalCompra) AS PromedioVenta,-- Seleccionar el promedio de la columa TotalCompra y renombrar como PromedioVenta
       'Promedio Ventas Despues de Julio 2023' AS [Comentario] -- 'La frase entre comillas asigna nombre al resultado' [La palabra entre corchetes le asigna nombre al campo del nombre del resultado]
FROM Ordenes -- De la tabla Ordenes
WHERE FechaOrdenTomada > '2023-07-01'; -- EN donde la columna de la FechaOrdenTomada sea mayor a 2023-07-01



--�Durante qu� horario del d�a (ma�ana, tarde, noche) se registra la mayor cantidad de ventas, --------------
--cu�l es el valor promedio de estas ventas, y cu�l ha sido la venta m�xima alcanzada?-----------------------

SELECT * FROM Ordenes; -- Seleccionar toda la tabla Ordenes

SELECT HorarioVenta, -- Seleccionar la columna HorarioVenta
       COUNT(OrdenID) AS [Nuemro de Ventas], -- Contar la columna OrdenID y renombrar como Numero de ventas
	   AVG(OrdenID)  AS [Promedio de Venta], -- Promediar la columna OrdenID y renombrar como Promedio de Venta
	   MAX(TotalCompra) AS [Venta Maxima] -- Sacar el valor maximo de la columna TotalCompra y renombrar como Venta Maxima
FROM Ordenes -- De la tabla Ordenes
GROUP BY HorarioVenta -- Agrupar por la columna HorarioVenta
ORDER BY [Venta Maxima]; -- Y ordenar por la columna renombrada Venta Maxima



