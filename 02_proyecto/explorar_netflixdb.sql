-- Proyecto 2: Cargar base de datos y explorar que se hayan cargado correctamente

-- Paso 1: Después de cargar la base de datos nos aseguramos de seleccionarla
USE netflixdb;

-- Paso 2: Mostramos las tablas en la base de datos para asegurarnos que cargo correctamente
SHOW TABLES;

-- Paso 3: Comprobamos que tengan datos las tablas
SELECT *
FROM clientes
LIMIT 5;

SELECT *
FROM pedidos
LIMIT 5;

SELECT *
FROM productos
LIMIT 5;
