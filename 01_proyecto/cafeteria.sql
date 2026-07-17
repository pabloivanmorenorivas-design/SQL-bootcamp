-- Proyecto 1: Crear o conceptualizar tu primer base de datos

-- Paso 1: Crear base de datos y utilizarla
CREATE DATABASE cafeteria;
USE cafeteria;

-- Paso 2: Crear tablas de la base de datos
-- 2.1 Crear la tabla de Clientes
CREATE TABLE clientes (
    cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefono VARCHAR(15)
);

-- 2.2 Crear la tabla de Productos
CREATE TABLE productos (
    producto_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL
);

-- 2.3. Crear la tabla de Pedidos
-- Esta tabla une a los Clientes con los Productos
CREATE TABLE pedidos (
    pedido_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    producto_id INT,
    cantidad INT NOT NULL,
    fecha_pedido DATE NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id) ON DELETE CASCADE,
    FOREIGN KEY (producto_id) REFERENCES productos(producto_id) ON DELETE CASCADE
);

-- Paso 3: Insertar datos en las tablas
INSERT INTO clientes (nombre, email, telefono) VALUES
('Carlos Mendoza', 'carlos.mendoza@email.com', '555-0192'),
('Ana Sofia Gómez', 'ana.gomez@email.com', '555-0183'),
('Luis Fernando Pérez', 'luis.perez@email.com', '555-0174'),
('María José Rodríguez', 'majo.rod@email.com', '555-0165'),
('Alejandro Silva', 'ale.silva@email.com', '555-0156');

INSERT INTO productos (nombre, precio) VALUES
('Café Americano', 35.00),
('Capuccino Italiano', 48.00),
('Latte de Vainilla', 52.00),
('Croissant de Jamón y Queso', 45.00),
('Muffin de Arándanos', 38.00);

INSERT INTO pedidos (cliente_id, producto_id, cantidad, fecha_pedido) VALUES
(1, 2, 1, '2026-07-10'),
(2, 4, 2, '2026-07-11'),
(3, 1, 1, '2026-07-11'),
(4, 5, 3, '2026-07-12'),
(5, 3, 1, '2026-07-12');

SELECT *
FROM clientes;