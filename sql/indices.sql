CONSULTA SIN INDICE
EXPLAIN ANALYZE
SELECT * FROM productos WHERE nombre = 'Arroz';

-- CREAR INDICE
CREATE INDEX idx_productos_nombre ON productos(nombre);

-- CONSULTA CON INDICE
EXPLAIN ANALYZE
SELECT * FROM productos WHERE nombre = 'Arroz';
