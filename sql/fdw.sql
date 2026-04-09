EXTENSION
CREATE EXTENSION IF NOT EXISTS postgres_fdw;

-- SERVIDOR REMOTO
CREATE SERVER servidor_remoto
FOREIGN DATA WRAPPER postgres_fdw
OPTIONS (host 'localhost', dbname 'colmadodb', port '5432');

-- USUARIO
CREATE USER MAPPING FOR postgres
SERVER servidor_remoto
OPTIONS (user 'postgres', password '1234');

-- IMPORTAR TABLA
IMPORT FOREIGN SCHEMA public
LIMIT TO (clientes)
FROM SERVER servidor_remoto
INTO public;

-- CONSULTA REMOTA
SELECT * FROM clientes;
