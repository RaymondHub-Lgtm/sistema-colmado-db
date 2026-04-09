TRANSACCION EXITOSA
BEGIN;

INSERT INTO clientes (nombre, telefono)
VALUES ('Carlos Perez', '809-555-0001');

COMMIT;

-- TRANSACCION FALLIDA (ROLLBACK)
BEGIN;

INSERT INTO productos (nombre, precio, stock)
VALUES ('Arroz', 25.50, 10);

-- ERROR FORZADO (stock negativo)
UPDATE productos SET stock = -5 WHERE id_producto = 1;

ROLLBACK;

-- VERIFICAR
SELECT * FROM productos;
