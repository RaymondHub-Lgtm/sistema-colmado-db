-- indice para mejorar busquedas

CREATE INDEX idx_nombre_producto ON productos(nombre);

-- prueba de rendimiento

EXPLAIN ANALYZE
SELECT * FROM productos WHERE nombre = 'Arroz';
