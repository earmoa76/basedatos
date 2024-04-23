-- Categorias y productos

-- 1
select * from categorias;
-- 2 
select CategoriaNombre,Descripcion from categorias;
-- 3
select * from productos;
-- 4
select * from productos where discontinuado=1;
-- 5
select * from productos where ProveedorID=8;
-- 6 
select * from productos where PrecioUnitario between 10 and 22;
-- 7
select * from productos where nivelreorden > unidadesstock;
-- 8
select * from productos where nivelreorden > unidadesstock and unidadespedidas=0;

 -- clientes
-- 1
SELECT CONTACTO, COMPANIA,TITULO,PAIS FROM clientes ORDER BY PAIS;
-- 2
SELECT * FROM CLIENTES WHERE TITULO='OWNER';
-- 3
SELECT * FROM CLIENTES WHERE CONTACTO LIKE 'C%';

-- FACTURAS
-----------
-- 1
SELECT * FROM FACTURAS ORDER BY FechaFactura DESC; 
-- 2
SELECT * FROM FACTURAS WHERE PaisEnvio='USA' and EnvioVia !='3';
-- 3
SELECT * FROM FACTURAS WHERE CLIENTEID='GOURL';
-- 4
SELECT * FROM FACTURAS WHERE EMPLEADOID='2'OR EMPLEADOID='3' OR  EMPLEADOID='5' OR EMPLEADOID='8' OR EMPLEADOID='9';


-- CONSULTAS QUERIES ML- PARTE II
-- ----------------------------
-- 1
SELECT * FROM PRODUCTOS AS PROD ORDER BY PRECIOUNITARIO DESC LIMIT 20 offset 20;
-- 2
SELECT * FROM PRODUCTOS ORDER BY PRECIOUNITARIO DESC LIMIT 5;
-- 3 
SELECT * FROM PRODUCTOS ORDER BY UNIDADESSTOCK DESC LIMIT 10;



-- FACTURA DETALLE
-- ---------------
-- 1
SELECT FACTURAID AS FACT,PRODUCTOID AS PROD,CANTIDAD AS CANT FROM FACTURADETALLE LIMIT 10;
-- 2
SELECT FACTURAID AS FACT,PRODUCTOID AS PROD,CANTIDAD AS CANT FROM FACTURADETALLE ORDER BY CANTIDAD DESC;
-- 3
SELECT * FROM facturadetalle WHERE CANTIDAD BETWEEN 50 AND 100 LIMIT 50;
-- 4
SELECT FACTURAID AS NroFactura, Productoid as producto, preciounitario*cantidad as total from facturadetalle;



-- EXTRAS
-- -------

SELECT * FROM CLIENTES 
WHERE PAIS='BRAZIL' OR PAIS ='MEXICO' OR TITULO like'SALES%';
SELECT * FROM CLIENTES 
WHERE COMPANIA LIKE 'A%'; 

SELECT CIUDAD, CONTACTO AS APELLIDOYNOMBRE, TITULO AS PUESTO 
FROM CLIENTES 
WHERE CIUDAD='MADRID';

SELECT * FROM FACTURAS WHERE FACTURAID BETWEEN 10000 AND 10500;
SELECT * FROM FACTURAS WHERE FACTURAID BETWEEN 10000 AND 10500 OR CLIENTEID LIKE 'B%';
SELECT * FROM FACTURAS WHERE CIUDADENVIO='VANCOUVER' OR ENVIOVIA='3';

SELECT EmpleadoID, Nombre, Apellido, Ciudad FROM Empleados WHERE Apellido ='Buchanan';
SELECT FacturaID , EmpleadoID FROM Facturas WHERE EmpleadoID = 5;

SELECT count(FacturaID) AS 'Cantidad de Facturas' , EmpleadoID
FROM Facturas
WHERE EmpleadoID = 5;





















