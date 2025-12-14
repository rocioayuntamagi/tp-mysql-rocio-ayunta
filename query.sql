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

--comenzamos a insertar informacion en las tablas--

--Insertamos dueños--

INSERT INTO duenos (nombre, apellido, telefono, direccion)
VALUES 
('Lucia', 'González', '1122334455', 'Av. San Martin 123'),
('Juan', 'Reyes', '1199887766', 'Psje Peron 456'),
('Lucía', 'Martínez', '1144556677', 'Boulevard Central 789');

--Insertamos mascotas--

INSERT INTO mascotas (nombre, especie, fecha_nacimiento, id_dueno)
VALUES
('Firulais', 'Perro', '2020-05-10', 1),
('Mishi', 'Gato', '2019-08-22', 2),
('Lola', 'Conejo', '2021-03-15', 3);

--Insertamos veterinarios--

INSERT INTO veterinarios (nombre, apellido, matricula, especialidad)
VALUES
('Carlos', 'Ramírez', 'MAT123', 'Cirugía'),
('Ana', 'Fernández', 'MAT456', 'Clinico');

--Insertamos registros de historial clinico--

INSERT INTO historial_clinico (id_mascota, id_veterinario, descripcion)
VALUES
(1, 1, 'Consulta por vacunación anual'),
(2, 2, 'Tratamiento por alergia en la piel'),
(3, 1, 'Revisión general y control de peso');