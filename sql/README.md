# 🏪 Sistema de Colmado

## 📌 Descripción

Base de datos en PostgreSQL para gestionar pedidos, clientes, productos e inventario en un colmado.

---

## 🧱 Estructura

```
sql/
  ddl.sql
  inserts.sql
  procedimientos.sql
  indices.sql
  transacciones.sql
  fdw.sql

docker-compose.yml
README.md
```

---

## ⚙️ Cómo usar

1. Levantar la base de datos:

```
docker-compose up -d
```

2. Conectarse con TablePlus:

* Host: localhost
* Puerto: 5432
* Usuario: postgres
* Contraseña: 1234
* DB: colmado

3. Ejecutar en orden:

* ddl.sql
* inserts.sql
* procedimientos.sql

---

## 👥 Integrantes

* Raymond Ismael Jimenez
* Angel Miguel Gibbs
