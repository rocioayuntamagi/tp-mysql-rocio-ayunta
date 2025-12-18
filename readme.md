# Trabajo Práctico - MySQL Veterinaria "Patitas Felices"

Este repositorio contiene los scripts SQL correspondientes al trabajo práctico de programación back end, utilizando **MySQL** para implementar un sistema de gestión de la veterinaria *Patitas Felices*.

## 📂 Organización de archivos

- **01-create-tables.sql** → Creación de todas las tablas (`duenos`, `mascotas`, `veterinarios`, `historial_clinico`).
- **02-inserts.sql** → Inserción de registros de prueba (dueños, mascotas, veterinarios, historial clínico).
- **03-updates.sql** → Ejemplos de actualización de datos (`UPDATE`).
- **04-deletes.sql** → Ejemplos de eliminación de registros (`DELETE`).
- **05-joins.sql** → Consultas con `JOIN` simples y múltiples.

## ▶️ Cómo ejecutar los scripts

1. Abrir **XAMPP Control Panel** y levantar los servicios **Apache** y **MySQL**.

2. Ingresar a **phpMyAdmin** desde el navegador:  
http://localhost/phpmyadmin

3. Crear la base de datos agregando un nombre **veterinaria_patitas_felices** y :
 utf8_general_ci

4. - Seleccionar la base de datos veterinaria_patitas_felices.

5. - Ejecutar los scripts en el siguiente orden:
  - 01-create-tables.sql
  - 02-inserts.sql
  - 03-updates.sql
  - 04-deletes.sql
  - 05-joins.sql


- El motor de almacenamiento utilizado es InnoDB, para permitir claves foráneas y transacciones.

- Se aplican restricciones de integridad referencial (FOREIGN KEY, ON DELETE CASCADE, ON UPDATE CASCADE).

- Se incluyen ejemplos de transacciones (START TRANSACTION, COMMIT, ROLLBACK) en los scripts de actualización y eliminación.

- Nombre: Rocio Ayunta

- Repositorio: tp-mysql-rocio-ayunta

