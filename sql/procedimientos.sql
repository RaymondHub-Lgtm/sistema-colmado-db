
-- PROCEDIMIENTO: HACER PEDIDO

CREATE OR REPLACE PROCEDURE hacer_pedido(
  p_cliente INT,
  p_producto INT,
  p_cantidad INT
)
LANGUAGE plpgsql
AS $$
BEGIN
  -- Crear pedido
  INSERT INTO pedidos (id_cliente)
  VALUES (p_cliente);

  -- Insertar detalle del pedido
  INSERT INTO detalle_pedido (
    id_pedido,
    id_producto,
    cantidad,
    precio_unitario
  )
  VALUES (
    currval('pedidos_id_pedido_seq'),
    p_producto,
    p_cantidad,
    (SELECT precio FROM productos WHERE id_producto = p_producto)
  );

  -- Actualizar stock
  UPDATE productos
  SET stock = stock - p_cantidad
  WHERE id_producto = p_producto;
END;
$$;



-- FUNCION: TOTAL DE PEDIDOS POR CLIENTE

CREATE OR REPLACE FUNCTION total_pedidos_cliente(p_cliente INT)
RETURNS NUMERIC AS $$
DECLARE
  total NUMERIC;
BEGIN
  SELECT SUM(d.cantidad * d.precio_unitario)
  INTO total
  FROM detalle_pedido d
  JOIN pedidos p ON d.id_pedido = p.id_pedido
  WHERE p.id_cliente = p_cliente;

  RETURN COALESCE(total, 0);
END;
$$ LANGUAGE plpgsql;



-- TRIGGER: EVITAR STOCK NEGATIVO

CREATE OR REPLACE FUNCTION evitar_stock_negativo()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.stock < 0 THEN
    RAISE EXCEPTION 'Stock no puede ser negativo';
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_stock
BEFORE UPDATE ON productos
FOR EACH ROW
EXECUTE FUNCTION evitar_stock_negativo();