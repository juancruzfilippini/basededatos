#CATEGORIAS Y CLIENTES
SELECT * FROM categorias;
SELECT CategoriaNombre, Descripcion FROM categorias;
SELECT * FROM productos;
SELECT * FROM productos WHERE Discontinuado=1;
SELECT ProductoNombre, ProveedorID FROM productos WHERE ProveedorID=8;
SELECT * FROM productos WHERE PrecioUnitario BETWEEN 10 AND 22;
SELECT * FROM productos WHERE NivelReorden>UnidadesStock;
SELECT * FROM productos WHERE NivelReorden>UnidadesStock AND UnidadesPedidas=0;

#CLIENTES
SELECT Contacto, Compania, Titulo, Pais FROM clientes ORDER BY Pais ASC;
SELECT * FROM clientes WHERE Titulo LIKE '%Owner%'; 
SELECT * FROM clientes WHERE Contacto LIKE 'C%'; 

#FACTURAS	
SELECT * FROM facturas ORDER BY FechaFactura ASC;
SELECT * FROM facturas WHERE PaisEnvio LIKE 'USA' AND EnvioVia!=3;
SELECT * FROM facturas WHERE ClienteID LIKE 'GOURL';
SELECT * FROM facturas WHERE EmpleadoID IN (2,3,5,8,9);

#PRODUCTOS
SELECT * FROM productos ORDER BY PrecioUnitario DESC; 
SELECT * FROM productos ORDER BY PrecioUnitario DESC LIMIT 5;
SELECT * FROM productos ORDER BY UnidadesStock DESC LIMIT 10;

#FACTURA DETALLE
SELECT FacturaID, ProductoID, Cantidad FROM facturadetalle;
SELECT FacturaID, ProductoID, Cantidad FROM facturadetalle ORDER BY Cantidad DESC;
SELECT FacturaID, ProductoID, Cantidad FROM facturadetalle WHERE Cantidad BETWEEN 50 AND 100;
SELECT FacturaID AS NroFactura, ProductoID AS Producto, PrecioUnitario*Cantidad AS Total FROM facturadetalle;

#EXTRAS
SELECT * FROM clientes WHERE Pais LIKE 'Mexico' OR Pais LIKE 'Brazil' OR Titulo LIKE 'Sales%';
SELECT * FROM clientes WHERE Compania LIKE 'A%';
SELECT Ciudad, Contacto AS Nombre_Apellido, Titulo AS Puesto FROM clientes WHERE Ciudad LIKE 'Madrid';
SELECT * FROM facturas WHERE FacturaID BETWEEN 10000 AND 10500;
SELECT * FROM facturas WHERE FacturaID BETWEEN 10000 AND 10500 OR ClienteID LIKE 'B%';
SELECT * FROM facturas WHERE CiudadEnvio LIKE 'Vancouver' OR EnvioVia = 3;
SELECT EmpleadoID, Apellido From empleados WHERE Apellido LIKE 'Buchanan';
SELECT * FROM facturas WHERE EmpleadoID = 5;





