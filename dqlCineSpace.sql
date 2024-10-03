USE cinema_space;

-- Listar todas las películas con su género.
SELECT p.titulo, g.genero
FROM peliculas p
JOIN generos g ON p.id_genero = g.id_genero;

-- Obtener la lista de funciones programadas con sus respectivas salas.
SELECT f.fecha, s.nombre_sala, p.titulo
FROM funciones f
JOIN salas s ON f.id_sala = s.id_sala
JOIN peliculas p ON f.id_pelicula = p.id_pelicula;

-- Listar todos los actores y las películas en las que han participado.
SELECT a.actor, p.titulo
FROM actores a
JOIN peliculas_actores pa ON a.id_actor = pa.id_actor
JOIN peliculas p ON pa.id_pelicula = p.id_pelicula;

-- Mostrar los directores y las películas que han dirigido.
SELECT d.director, p.titulo
FROM directores d
JOIN peliculas_directores pd ON d.id_director = pd.id_director
JOIN peliculas p ON pd.id_pelicula = p.id_pelicula;

-- Consultar los precios de las funciones junto con el título de la película.
SELECT p.titulo, pf.precio
FROM peliculas p
JOIN funciones f ON p.id_pelicula = f.id_pelicula
JOIN precios_funciones pf ON f.id_precio = pf.id_precio_funcion;

-- Obtener la cantidad total de boletas vendidas por película.
SELECT p.titulo, SUM(vb.cantidad) AS total_boletas
FROM peliculas p
JOIN funciones f ON p.id_pelicula = f.id_pelicula
JOIN ventas_boletas vb ON f.id_funcion = vb.id_funcion
GROUP BY p.id_pelicula;
------

-- Listar las salas y los equipamientos disponibles en cada sala.
SELECT s.nombre_sala, e.equipamiento
FROM salas s
JOIN salas_equipamientos se ON s.id_sala = se.id_sala
JOIN equipamientos e ON se.id_equipamiento = e.id_equipamiento;

-- Consultar los clientes y sus respectivas ventas de boletas.
SELECT c.nombre, c.apellido, vb.monto_total
FROM clientes c
JOIN ventas_boletas vb ON c.id_cliente = vb.id_cliente;
-- Mostrar las funciones que están en curso.
SELECT f.fecha, f.hora_inicio, f.hora_fin, p.titulo, c.clasificacion
FROM funciones f
JOIN peliculas p ON f.id_pelicula = p.id_pelicula
JOIN clasificaciones c ON p.id_clasificacion = c.id_clasificacion
WHERE f.id_estado_funcion = (SELECT id_estado_funcion FROM estados_funciones WHERE estado_funcion = 'En curso');

-- 10 Listar las películas que están en cartelera.
SELECT p.titulo, p.sinopsis, p.duracion, d.director, ep.estado_pelicula
FROM peliculas p
JOIN estados_peliculas ep ON p.id_estado_pelicula = ep.id_estado_pelicula
JOIN peliculas_directores pd ON p.id_pelicula = pd.id_pelicula
JOIN directores d ON pd.id_director = d.id_director
WHERE ep.estado_pelicula = 'En cartelera';

-- 11 Obtener la lista de empleados y sus cargos. no sirve
SELECT e.nombre, e.apellido, c.cargo, 
       e.telefono, e.email, 
       CONCAT(e.calle, ', Carrera ', e.carrera, ' No. ', e.numero) AS direccion_completa,
       e.barrio
FROM empleados e
JOIN cargos c ON e.id_cargo = c.id_cargo;

-- 12 Consultar las compras totales de cada cliente.
SELECT c.nombre, c.apellido, SUM(vb.monto_total) AS total_compras
FROM clientes c
JOIN ventas_boletas vb ON c.id_cliente = vb.id_cliente
GROUP BY c.id_cliente;

-- 13 Listar las películas con más de una característica en las salas. hay que mejorar esto
SELECT p.titulo, COUNT(sc.id_caracteristica) AS total_caracteristicas
FROM peliculas p
JOIN salas_caracteristicas sc ON p.id_pelicula = sc.id_sala
GROUP BY p.id_pelicula
HAVING total_caracteristicas > 1;

-- 14 Mostrar las funciones programadas en un idioma específico.
SELECT f.fecha, f.hora_inicio, p.titulo
FROM funciones f
JOIN peliculas p ON f.id_pelicula = p.id_pelicula
WHERE p.id_idioma = (SELECT id_idioma FROM idiomas WHERE idioma = 'Español');

-- 15 Listar las salas que están fuera de servicio.
SELECT s.nombre_sala, es.estado_sala
FROM salas s
JOIN estados_salas es ON s.id_estado_sala = es.id_estado_sala
WHERE es.estado_sala = 'Fuera de servicio';

-- 16 Consultar los clientes que han comprado más de 3 boletas.
SELECT c.nombre, c.apellido, COUNT(vb.id_boleta) AS total_boletas
FROM clientes c
JOIN ventas_boletas vb ON c.id_cliente = vb.id_cliente
GROUP BY c.id_cliente
HAVING total_boletas > 3;

-- 17 Obtener las películas y su duración ordenadas por duración.
SELECT p.titulo, p.duracion, p.sinopsis AS descripcion, c.clasificacion,
       CASE 
           WHEN f.id_funcion IS NOT NULL THEN 'Sí'
           ELSE 'No'
       END AS tiene_funcion
FROM peliculas p
JOIN clasificaciones c ON p.id_clasificacion = c.id_clasificacion
LEFT JOIN funciones f ON p.id_pelicula = f.id_pelicula
ORDER BY p.duracion DESC;

-- 18 Listar las películas y sus directores, ordenados alfabéticamente por el nombre del director.
SELECT p.titulo, d.director
FROM peliculas p
JOIN peliculas_directores pd ON p.id_pelicula = pd.id_pelicula
JOIN directores d ON pd.id_director = d.id_director
ORDER BY d.director;

-- 19 Consultar las funciones y sus estados, ordenados por fecha.
SELECT f.fecha, f.hora_inicio, ef.estado_funcion
FROM funciones f
JOIN estados_funciones ef ON f.id_estado_funcion = ef.id_estado_funcion
ORDER BY f.fecha;

-- 20 Obtener la cantidad de películas por género.
SELECT g.genero, COUNT(p.id_pelicula) AS total_peliculas
FROM generos g
LEFT JOIN peliculas p ON g.id_genero = p.id_genero
GROUP BY g.genero;

-- 21 Listar las boletas vendidas con el nombre del cliente.
SELECT c.nombre, c.apellido, vb.monto_total
FROM ventas_boletas vb
JOIN clientes c ON vb.id_cliente = c.id_cliente;

-- 22 Consultar las películas que tienen más de 3 actores.
SELECT p.titulo, COUNT(pa.id_actor) AS total_actores
FROM peliculas p
JOIN peliculas_actores pa ON p.id_pelicula = pa.id_pelicula
GROUP BY p.id_pelicula
HAVING total_actores > 3;

-- 23 Obtener la lista de funciones y sus precios, ordenados por precio.
SELECT f.fecha, pf.precio
FROM funciones f
JOIN precios_funciones pf ON f.id_precio = pf.id_precio_funcion
ORDER BY pf.precio;

Listar los productos y su estado.
Consultar las salas y sus características.
Obtener las películas que se proyectan en salas con capacidad mayor a 150.
Listar los métodos de pago utilizados en las ventas de boletas.
Consultar las películas que han sido canceladas.
Listar las salas y su estado actual.
Consultar las ventas de boletas y sus estados.
Obtener la lista de funciones programadas para un día específico.
Listar los empleados y su estado laboral.
Consultar las películas que se proyectan en 3D.
Listar las ventas de boletas y sus correspondientes clientes.
Obtener la cantidad de funciones programadas por día.
Listar las películas y sus sinopsis.
Consultar las películas y sus estados en cartelera.
Obtener la lista de clientes que han comprado más de 2 tipos de boletas.
Listar las funciones y los estados de las salas.
Consultar las películas y el número de actores que tienen.