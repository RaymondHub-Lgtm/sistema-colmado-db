-- transaccion correcta

BEGIN;

INSERT INTO pedidos (id_cliente) VALUES (1);

COMMIT;

-- transaccion fallida

BEGIN;

UPDATE productos SET stock = stock - 1000 WHERE id_producto = 1;

ROLLBACK;
