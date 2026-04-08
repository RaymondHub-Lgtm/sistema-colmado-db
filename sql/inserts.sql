-- CLIENTES
INSERT INTO clientes (nombre, telefono) VALUES
('Juan Perez', '8090000001'),
('Maria Lopez', '8090000002'),
('Carlos Martinez', '8090000003'),
('Ana Rodriguez', '8090000004'),
('Luis Gomez', '8090000005'),
('Pedro Santana', '8090000006'),
('Rosa Diaz', '8090000007'),
('Miguel Castillo', '8090000008');

-- PRODUCTOS 
INSERT INTO productos (nombre, precio, stock) VALUES
('Arroz 1lb', 50, 200),
('Habichuelas rojas', 60, 150),
('Aceite Mazola', 120, 80),
('Azucar 1lb', 45, 180),
('Salami Induveca', 90, 100),
('Queso amarillo', 85, 90),
('Pan de agua', 10, 300),
('Leche Rica', 70, 120),
('Huevos (carton)', 200, 50),
('Coca Cola 2L', 110, 75),
('Pepsi 2L', 105, 60),
('Jugo del Valle', 35, 140),
('Cafe Santo Domingo', 150, 70),
('Avena', 55, 100),
('Galletas Oreo', 65, 130);

-- PEDIDOS
INSERT INTO pedidos (id_cliente) VALUES
(1),
(2),
(3),
(1),
(4),
(5);

-- DETALLE DE PEDIDOS
INSERT INTO detalle_pedido (id_pedido, id_producto, cantidad, precio_unitario) VALUES
(1, 1, 2, 50),
(1, 3, 1, 120),
(2, 2, 3, 60),
(2, 5, 2, 90),
(3, 10, 1, 110),
(3, 7, 5, 10),
(4, 8, 2, 70),
(4, 6, 1, 85),
(5, 4, 4, 45),
(5, 9, 1, 200),
(6, 11, 2, 105),
(6, 12, 3, 35);