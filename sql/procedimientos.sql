-- procedimiento para hacer pedidos

CREATE OR REPLACE PROCEDURE hacer_pedido(p_cliente INT, p_producto INT, p_cantidad INT)
LANGUAGE plpgsql
AS $$
BEGIN
  INSERT INTO pedidos (id_cliente) VALUES (p_cliente);

  INSERT INTO detalle_pedido (id_pedido, id_producto, cantidad, precio_unitario)
  VALUES (
    currval('pedidos_id_pedido_seq'),
    p_producto,
    p_cantidad,
    (SELECT precio FROM productos WHERE id_producto = p_producto)
  );

  UPDATE productos
  SET stock = stock - p_cantidad
  WHERE id_producto = p_producto;
END;
$$;
