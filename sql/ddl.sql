-- tablas del sistema
CREATE TABLE clientes (
  id_cliente SERIAL PRIMARY KEY,
  nombre VARCHAR(100),
  telefono VARCHAR(20)
  );
  
  CREATE TABLE productos (
  id_producto SERIAL PRIMARY KEY,
  nombre VARCHAR(100),
  precio NUMERIC(10,2),
  stock INT
);

CREATE TABLE pedidos (
  id_pedido SERIAL PRIMARY KEY,
  id_cliente INT REFERENCES clientes(id_cliente),
  fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE detalle_pedido (
  id_detalle SERIAL PRIMARY KEY,
  id_pedido INT REFERENCES pedidos(id_pedido),
  id_producto INT REFERENCES productos(id_producto),
  cantidad INT,
  precio_unitario NUMERIC(10,2)
);