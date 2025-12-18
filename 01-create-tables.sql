--Creamos las tablas--

CREATE TABLE duenos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    direccion VARCHAR(100) NOT NULL
);

CREATE TABLE mascotas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    especie VARCHAR(30) NOT NULL,
    fecha_nacimiento DATE,
    id_dueno INT,
    FOREIGN KEY (id_dueno) REFERENCES duenos(id)
        ON DELETE CASCADE 
        --si se elimina un dueño, automáticamente se eliminan sus mascotas--
        ON UPDATE CASCADE 
        --si el id del dueño cambia, se actualiza en la tabla mascotas--
);

CREATE TABLE veterinarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    matricula VARCHAR(20) NOT NULL UNIQUE,
    especialidad VARCHAR(50) NOT NULL
);

CREATE TABLE historial_clinico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_mascota INT NOT NULL,
    id_veterinario INT NOT NULL,
    fecha_registro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    descripcion VARCHAR(250) NOT NULL,
    FOREIGN KEY (id_mascota) REFERENCES mascotas(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_veterinario) REFERENCES veterinarios(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

