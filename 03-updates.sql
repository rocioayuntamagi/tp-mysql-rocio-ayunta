--cambiamos la direccion de un dueño--
-- Por ID

UPDATE duenos
SET direccion = 'Av. Libertad 999'
WHERE id = 1;

--actualizar la especialidad de un veterinario--
-- Por matrícula

UPDATE veterinarios
SET especialidad = 'Neurología'
WHERE matricula = 'MAT123';

--Editamos una descripcion de un historial clinico--

UPDATE historial_clinico
SET descripcion = 'Consulta por control de vacunas y desparasitación'
WHERE id = 1;
