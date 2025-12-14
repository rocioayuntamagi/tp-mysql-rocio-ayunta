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
(3, 1, 'Revisión general y control de peso');4