--JOIN simple--

SELECT 
    m.nombre AS nombre_mascota,
    m.especie,
    CONCAT(d.nombre, ' ', d.apellido) AS nombre_dueno
FROM mascotas m
JOIN duenos d ON m.id_dueno = d.id;

--JOIN multiple con historial--

SELECT 
    m.nombre AS nombre_mascota,
    m.especie,
    CONCAT(d.nombre, ' ', d.apellido) AS nombre_dueno,
    CONCAT(v.nombre, ' ', v.apellido) AS nombre_veterinario,
    h.fecha_registro,
    h.descripcion
FROM historial_clinico h
JOIN mascotas m ON h.id_mascota = m.id
JOIN duenos d ON m.id_dueno = d.id
JOIN veterinarios v ON h.id_veterinario = v.id
ORDER BY h.fecha_registro DESC;