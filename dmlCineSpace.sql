USE cinema_space;

-- PRIMERO COSAS ESTATITICAS TABLAS QUE SON IMPORTANTES PARA EL FUNCIONAMIENTO DE LAS DEMAS TABLAS

-- Inserción de géneros
INSERT INTO generos (genero) VALUES 
('Acción'),
('Comedia'),
('Drama'),
('Fantasía'),
('Ciencia Ficción'),
('Documental');

-- Inserción de clasificaciones (modificado)
INSERT INTO clasificaciones (clasificacion) VALUES 
('+0'),
('+13'),
('+16'),
('+18');

-- Inserción de idiomas
INSERT INTO idiomas (idioma) VALUES 
('Español'),
('Inglés'),
('Francés'),
('Alemán');

-- Inserción de estados de películas (modificado)
INSERT INTO estados_peliculas (estado_pelicula) VALUES 
('En cartelera'),
('Próximamente'),
('Fuera de cartelera');

-- Inserción de tipos de pantallas
INSERT INTO tipos_pantalla (tipo_pantalla) VALUES 
('2D'),
('3D'),
('IMAX');

-- Inserción de estados de las salas
INSERT INTO estados_salas (estado_sala) VALUES 
('Disponible'),
('En mantenimiento'),
('Fuera de servicio');

-- Inserción de características (modificado)
INSERT INTO caracteristicas (caracteristica) VALUES 
('Asientos reclinables'),
('Proyector 4K'),
('Sistema de sonido Dolby Atmos'),
('Pantalla LED gigante'),
('Butacas de cuero');

-- Inserción de estados de funciones
INSERT INTO estados_funciones (estado_funcion) VALUES 
('Programada'),
('En curso'),
('Finalizada'),
('Cancelada');

-- Inserción de países
INSERT INTO paises (pais) VALUES 
('Estados Unidos'),
('México'),
('España'),
('Argentina'),
('Reino Unido');

-- Inserción de estados de empleados (modificado)
INSERT INTO estados_empleados (estado_empleado) VALUES 
('Activo'),
('Descansando'),
('Retirado');

-- Inserción de cargos (modificado, con salarios en pesos colombianos)
INSERT INTO cargos (cargo, salario) VALUES 
('Gerente', 5000000),
('Cajero', 1200000),
('Supervisor', 3000000),
('Técnico de proyección', 2000000),
('Empleado de cafetería', 1200000),
('Conserje', 1000000);

-- Inserción de métodos de pago (modificado)
INSERT INTO metodos (metodo) VALUES 
('Tarjeta de crédito'),
('Efectivo'),
('Transferencia bancaria'),
('Nequi'),
('Bancolombia'),
('Davivienda');

-- Inserción de estados de proveedores
INSERT INTO estados_proveedores (estado_proveedor) VALUES 
('Activo'),
('Suspendido'),
('Finalizado');

-- Inserción de barrios (modificado)
INSERT INTO barrios (barrio) VALUES 
('Patas_Sueltas'),
('Villa_Krypton'),
('Barrio_Gotham'),
('Distrito_12'),
('Narnia_Real'),
('Aldea_Hobbit'),
('Neo_Tokyo'),
('Pandora_Village'),
('Camino_de_Mordor'),
('Sector_51');

-- Inserción de estados de productos
INSERT INTO estados_productos (estado_producto) VALUES 
('Disponible'),
('Agotado'),
('En pedido');

-- Inserción de estados de boletas
INSERT INTO estados_boletas (estado_boleta) VALUES 
('Pagada'),
('Cancelada'),
('Reembolsada');

-- Inserción de estados de carteleras
INSERT INTO estados_carteleras (estado_cartelera) VALUES 
('Activa'),
('Cerrada'),
('Programada');

-- Inserción de estados de ventas
INSERT INTO estados_ventas (estado_venta) VALUES 
('Completada'),
('Pendiente'),
('Cancelada');

-- SEGUNDA PARTE DE LA INFORMACION EN TABLAS RELACIONADAS, GRACIAS A QUE YA TENEMOS LA INFORMACION ESTATICA PUDIMOS 
-- COLOCAR INFORMACION COMO DE PELICULAS, DIRECOTRE, ACTORES ENTRE OTROS.

-- Inserción de 20 películas
INSERT INTO peliculas (titulo, id_genero, duracion, id_clasificacion, sinopsis, id_idioma, kik, id_estado_pelicula, id_pais)
VALUES
('Avengers: Endgame', 1, 181, 4, 'Los Avengers enfrentan a Thanos.', 2, 'AA001', 1, 1),
('Toy Story 4', 2, 100, 1, 'Woody y Buzz en nueva aventura.', 1, 'TS4001', 1, 1),
('El Señor de los Anillos', 4, 201, 3, 'Batalla por la Tierra Media.', 2, 'LOTR003', 3, 5),
('Inception', 5, 148, 4, 'Robando secretos en los sueños.', 2, 'INC2020', 2, 4),
('Interstellar', 5, 169, 4, 'Astronautas exploran el espacio.', 2, 'INT0110', 1, 4),
('Jurassic Park', 1, 127, 4, 'Dinosaurios reviven en un parque.', 1, 'JPARK1993', 1, 1),
('Matrix', 5, 136, 4, 'Neo descubre el mundo real.', 2, 'MATRIX99', 2, 4),
('Titanic', 3, 195, 2, 'El hundimiento del Titanic.', 2, 'TITA1912', 2, 5),
('The Dark Knight', 1, 152, 4, 'Batman contra el Joker.', 2, 'TDK2008', 1, 1),
('Gladiator', 3, 155, 3, 'Un general convertido en gladiador.', 1, 'GLA2000', 1, 3),
('Forrest Gump', 2, 142, 3, 'La vida de un hombre único.', 1, 'FG1994', 2, 1),
('Pirates of the Caribbean', 1, 143, 3, 'El capitán Jack Sparrow.', 2, 'POTC01', 1, 1),
('Harry Potter', 4, 152, 2, 'Un niño mago en Hogwarts.', 1, 'HP01', 1, 2),
('Star Wars: A New Hope', 5, 121, 2, 'La batalla entre el bien y el mal en una galaxia lejana.', 1, 'SW77', 1, 1),
('The Matrix Reloaded', 5, 138, 4, 'La lucha continua contra las máquinas.', 2, 'MR02', 2, 4),
('Shrek', 2, 90, 1, 'Un ogro embarcado en una misión.', 1, 'SHREK01', 1, 1),
('The Godfather', 3, 175, 4, 'La historia de una familia mafiosa.', 2, 'GODFATH1972', 2, 1),
('Finding Nemo', 2, 100, 1, 'Un pez buscando a su hijo.', 1, 'NEMO2003', 1, 3),
('Up', 2, 96, 1, 'Un anciano viaja en su casa flotante.', 1, 'UP2009', 1, 3),
('Pulp Fiction', 3, 154, 4, 'Historias entrelazadas en el bajo mundo.', 2, 'PF1994', 2, 1);

-- Inserción de 20 actores
INSERT INTO actores (actor) VALUES
('Robert Downey Jr.'),
('Chris Evans'),
('Scarlett Johansson'),
('Leonardo DiCaprio'),
('Matthew McConaughey'),
('Tom Hanks'),
('Johnny Depp'),
('Keanu Reeves'),
('Emma Watson'),
('Daniel Radcliffe'),
('Harrison Ford'),
('Morgan Freeman'),
('Brad Pitt'),
('Angelina Jolie'),
('Meryl Streep'),
('Natalie Portman'),
('Samuel L. Jackson'),
('Mark Ruffalo'),
('Gal Gadot'),
('Will Smith');

-- Inserción de 20 directores
INSERT INTO directores (director) VALUES
('Christopher Nolan'),
('Peter Jackson'),
('Steven Spielberg'),
('Quentin Tarantino'),
('James Cameron'),
('Ridley Scott'),
('Martin Scorsese'),
('George Lucas'),
('Francis Ford Coppola'),
('David Fincher'),
('Tim Burton'),
('Clint Eastwood'),
('Alfonso Cuarón'),
('Guillermo del Toro'),
('Stanley Kubrick'),
('Michael Bay'),
('J.J. Abrams'),
('Denis Villeneuve'),
('Patty Jenkins'),
('Sofia Coppola');

-- Inserción de 20 clientes
INSERT INTO clientes (nombre, apellido, correo, telefono, fecha_registro, id_categoria, documento) VALUES
('Carlos', 'Perez', 'carlos.perez@example.com', '123456789', '2023-01-15', 1, '11223344A'),
('Ana', 'Gomez', 'ana.gomez@example.com', '987654321', '2023-02-20', 2, '55667788B'),
('Jorge', 'Martinez', 'jorge.martinez@example.com', '222333444', '2024-03-10', 1, '99887766C'),
('Luis', 'Ramirez', 'luis.ramirez@example.com', '555666777', '2023-04-01', 3, '44332211D'),
('Maria', 'Lopez', 'maria.lopez@example.com', '888999000', '2023-05-22', 1, '77665533E'),
('Pedro', 'Sanchez', 'pedro.sanchez@example.com', '111222333', '2024-06-18', 2, '33445566F'),
('Paola', 'Hernandez', 'paola.hernandez@example.com', '444555666', '2024-07-12', 3, '11229933G'),
('Lorena', 'Garcia', 'lorena.garcia@example.com', '111999888', '2023-03-15', 2, '77889955H'),
('Ricardo', 'Diaz', 'ricardo.diaz@example.com', '666444111', '2024-08-05', 1, '55667788I'),
('Andrea', 'Moreno', 'andrea.moreno@example.com', '333222555', '2023-09-23', 3, '22334455J'),
('Juliana', 'Vargas', 'juliana.vargas@example.com', '999888777', '2023-10-10', 1, '66554477K'),
('Camilo', 'Ortiz', 'camilo.ortiz@example.com', '888333222', '2024-02-11', 2, '44556677L'),
('Sofia', 'Torres', 'sofia.torres@example.com', '777666999', '2023-12-30', 1, '99887755M'),
('Diego', 'Reyes', 'diego.reyes@example.com', '222111333', '2023-11-14', 2, '66557788N'),
('Victoria', 'Alvarez', 'victoria.alvarez@example.com', '111333222', '2024-01-25', 3, '33446677O'),
('Cristina', 'Castro', 'cristina.castro@example.com', '999777555', '2023-04-03', 1, '77664455P'),
('Rodrigo', 'Mejia', 'rodrigo.mejia@example.com', '555888666', '2023-06-20', 2, '22446688Q'),
('Lucia', 'Mendoza', 'lucia.mendoza@example.com', '444333222', '2024-03-08', 3, '44557766R'),
('Gabriela', 'Suarez', 'gabriela.suarez@example.com', '888777666', '2024-04-22', 1, '11447788S'),
('Fernando', 'Padilla', 'fernando.padilla@example.com', '333444555', '2024-05-29', 2, '33447799T');

-- Inserción de 20 salas
INSERT INTO salas (capacidad, id_tipo_pantalla, id_estado_sala, nombre_sala) VALUES
(150, 1, 1, 'Sala 1'),
(200, 2, 1, 'Sala 2'),
(120, 3, 1, 'Sala IMAX'),
(100, 1, 1, 'Sala 3'),
(180, 2, 2, 'Sala 4'),
(200, 3, 1, 'Sala VIP 1'),
(90, 1, 1, 'Sala 5'),
(220, 2, 1, 'Sala 6'),
(150, 3, 3, 'Sala IMAX 2'),
(130, 1, 1, 'Sala 7'),
(160, 2, 2, 'Sala 8'),
(190, 3, 1, 'Sala VIP 2'),
(110, 1, 1, 'Sala 9'),
(200, 2, 1, 'Sala 10'),
(140, 3, 3, 'Sala IMAX 3'),
(150, 1, 1, 'Sala 11'),
(180, 2, 2, 'Sala 12'),
(120, 3, 1, 'Sala 13'),
(170, 1, 1, 'Sala 14'),
(220, 2, 1, 'Sala 15');

-- Relacionar 20 películas con actores (peliculas_actores)
INSERT INTO peliculas_actores (id_pelicula, id_actor) VALUES
(1, 1), (1, 2), (1, 3), 
(2, 6), (2, 7), 
(3, 12), (3, 13), 
(4, 4), (4, 14), 
(5, 5), (5, 15), 
(6, 8), (6, 16), 
(7, 8), (7, 17), 
(8, 9), (8, 18), 
(9, 10), (9, 19), 
(10, 11), (10, 20);

-- Relacionar 20 películas con directores (peliculas_directores)
INSERT INTO peliculas_directores (id_pelicula, id_director) VALUES
(1, 5), (2, 4), (3, 2), 
(4, 1), (5, 1), (6, 3), 
(7, 1), (8, 5), (9, 1), 
(10, 6), (11, 7), (12, 3), 
(13, 8), (14, 5), (15, 1), 
(16, 9), (17, 4), (18, 5), 
(19, 10), (20, 6);

-- El paso final que es llenar los datos que hacen ya falta por llenar

-- Funciones
INSERT INTO funciones (id_pelicula, id_sala, hora_inicio, hora_fin, id_idioma, id_estado_funcion, id_precio, id_tipo_funcion, fecha)
VALUES
(1, 1, '10:00:00', '12:30:00', 2, 1, 1, 1, '2024-10-01'),
(2, 2, '12:45:00', '14:30:00', 1, 1, 2, 2, '2024-10-01'),
(3, 3, '15:00:00', '17:45:00', 2, 2, 3, 1, '2024-10-01'),
(4, 4, '18:00:00', '20:30:00', 1, 1, 4, 2, '2024-10-01'),
(5, 5, '20:45:00', '23:15:00', 2, 2, 5, 1, '2024-10-01'),
(6, 6, '10:00:00', '12:15:00', 1, 1, 1, 2, '2024-10-02'),
(7, 7, '12:30:00', '14:45:00', 2, 2, 2, 1, '2024-10-02'),
(8, 8, '15:00:00', '17:00:00', 1, 1, 3, 2, '2024-10-02'),
(9, 9, '17:30:00', '19:45:00', 2, 2, 4, 1, '2024-10-02'),
(10, 10, '20:00:00', '22:30:00', 1, 1, 5, 2, '2024-10-02'),
(11, 11, '10:00:00', '12:15:00', 2, 2, 1, 1, '2024-10-03'),
(12, 12, '12:45:00', '15:00:00', 1, 1, 2, 2, '2024-10-03'),
(13, 13, '15:30:00', '18:00:00', 2, 2, 3, 1, '2024-10-03'),
(14, 14, '18:15:00', '20:45:00', 1, 1, 4, 2, '2024-10-03'),
(15, 15, '21:00:00', '23:30:00', 2, 2, 5, 1, '2024-10-03'),
(16, 16, '10:00:00', '12:00:00', 1, 1, 1, 2, '2024-10-04'),
(17, 17, '12:15:00', '14:30:00', 2, 2, 2, 1, '2024-10-04'),
(18, 18, '15:00:00', '17:15:00', 1, 1, 3, 2, '2024-10-04'),
(19, 19, '17:30:00', '19:45:00', 2, 2, 4, 1, '2024-10-04'),
(20, 20, '20:00:00', '22:30:00', 1, 1, 5, 2, '2024-10-04');

-- Precios de Funciones
INSERT INTO precios_funciones (precio)
VALUES
(15000),
(20000),
(25000),
(30000),
(35000);

-- Boletas
INSERT INTO boletas (id_funcion, asiento, fecha_compra, id_cliente, id_venta, id_metodo, id_venta_boleta, id_estado_boleta)
VALUES
(1, 'A1', '2024-10-01', 1, 1, 1, 1, 1),
(2, 'A2', '2024-10-01', 2, 2, 2, 2, 1),
(3, 'B1', '2024-10-01', 3, 3, 1, 3, 1),
(4, 'B2', '2024-10-01', 4, 4, 2, 4, 1),
(5, 'C1', '2024-10-01', 5, 5, 1, 5, 1),
(6, 'C2', '2024-10-02', 6, 6, 2, 6, 1),
(7, 'D1', '2024-10-02', 7, 7, 1, 7, 1),
(8, 'D2', '2024-10-02', 8, 8, 2, 8, 1),
(9, 'E1', '2024-10-02', 9, 9, 1, 9, 1),
(10, 'E2', '2024-10-02', 10, 10, 2, 10, 1),
(11, 'F1', '2024-10-03', 11, 11, 1, 11, 1),
(12, 'F2', '2024-10-03', 12, 12, 2, 12, 1),
(13, 'G1', '2024-10-03', 13, 13, 1, 13, 1),
(14, 'G2', '2024-10-03', 14, 14, 2, 14, 1),
(15, 'H1', '2024-10-03', 15, 15, 1, 15, 1),
(16, 'H2', '2024-10-04', 16, 16, 2, 16, 1),
(17, 'I1', '2024-10-04', 17, 17, 1, 17, 1),
(18, 'I2', '2024-10-04', 18, 18, 2, 18, 1),
(19, 'J1', '2024-10-04', 19, 19, 1, 19, 1),
(20, 'J2', '2024-10-04', 20, 20, 2, 20, 1);

-- Categorías de Clientes
INSERT INTO categorias (categorias, descuento)
VALUES
('General', 0),
('VIP', 10),
('Estudiante', 5);

-- Empleados
INSERT INTO empleados (nombre, apellido, correo, telefono, fecha_contratacion, id_estado_empleado, id_direccion, id_cargo)
VALUES
('Pedro', 'López', 'pedro.lopez@example.com', '3123456789', '2023-01-10', 1, 1, 1),
('María', 'González', 'maria.gonzalez@example.com', '3129876543', '2023-02-15', 1, 2, 2),
('Juan', 'Martínez', 'juan.martinez@example.com', '3111234567', '2023-03-20', 1, 3, 3),
('Ana', 'Hernández', 'ana.hernandez@example.com', '3103456789', '2023-04-25', 2, 4, 4),
('Carlos', 'Rodríguez', 'carlos.rodriguez@example.com', '3119876543', '2023-05-30', 1, 5, 5),
('Paula', 'Ramírez', 'paula.ramirez@example.com', '3101234567', '2023-06-05', 2, 6, 6),
('Luis', 'Pérez', 'luis.perez@example.com', '3133456789', '2023-07-10', 1, 7, 1),
('Sofía', 'Vargas', 'sofia.vargas@example.com', '3129871234', '2023-08-15', 1, 8, 2),
('Andrés', 'Díaz', 'andres.diaz@example.com', '3131239876', '2023-09-20', 1, 9, 3),
('Daniela', 'Moreno', 'daniela.moreno@example.com', '3113459876', '2023-10-25', 1, 10, 4),
('Felipe', 'Torres', 'felipe.torres@example.com', '3105671234', '2023-11-30', 1, 11, 5),
('Laura', 'Mejía', 'laura.mejia@example.com', '3129874567', '2024-01-05', 1, 12, 6),
('Camilo', 'Ortiz', 'camilo.ortiz@example.com', '3111236543', '2024-02-10', 1, 13, 1),
('Andrea', 'Castro', 'andrea.castro@example.com', '3109873210', '2024-03-15', 1, 14, 2),
('Manuel', 'Vega', 'manuel.vega@example.com', '3123456780', '2024-04-20', 1, 15, 3),
('Luisa', 'Ríos', 'luisa.rios@example.com', '3119873210', '2024-05-25', 1, 16, 4),
('Julio', 'Suárez', 'julio.suarez@example.com', '3101230987', '2024-06-30', 1, 17, 5),
('Carolina', 'Santos', 'carolina.santos@example.com', '3113216543', '2024-07-05', 1, 18, 6),
('José', 'Cárdenas', 'jose.cardenas@example.com', '3104569876', '2024-08-10', 1, 19, 1),
('Marta', 'Quintero', 'marta.quintero@example.com', '3137891234', '2024-09-15', 1, 20, 2);

-- Productos
INSERT INTO productos (nombre, precio, descripcion, id_estado_producto)
VALUES
('Palomitas de Maíz', 10000, 'Palomitas clásicas con mantequilla', 1),
('Gaseosa Grande', 8000, 'Gaseosa de 500 ml', 1),
('Hot Dog', 12000, 'Hot dog con salchicha americana', 1),
('Nachos', 15000, 'Nachos con queso y jalapeños', 1),
('Chocolate', 5000, 'Barra de chocolate', 1),
('Agua Mineral', 3000, 'Botella de agua mineral', 1),
('Galletas', 6000, 'Paquete de galletas surtidas', 1),
('Pizza Individual', 20000, 'Pizza de 4 porciones', 1),
('Helado', 7000, 'Helado de vainilla y chocolate', 1),
('Chicles', 2000, 'Paquete de chicles', 1),
('Paleta de Dulce', 3000, 'Paleta de frutas', 1),
('Café', 4000, 'Café americano grande', 1),
('Té Helado', 5000, 'Té helado de limón', 1),
('Cerveza', 15000, 'Cerveza artesanal', 1),
('Sándwich', 12000, 'Sándwich de jamón y queso', 1),
('Empanada', 5000, 'Empanada de carne', 1),
('Muffin', 4000, 'Muffin de chocolate', 1),
('Brownie', 6000, 'Brownie de chocolate', 1),
('Caramelo', 3000, 'Paquete de caramelos', 1),
('Chips', 8000, 'Bolsa de papas fritas', 1);




-- Inserción de equipamientos
INSERT INTO equipamientos (equipamiento)
VALUES
('Proyector'),
('Sistema de sonido'),
('Pantalla de proyección'),
('Sillas reclinables'),
('Iluminación LED');

-- Inserción de características
INSERT INTO caracteristicas (caracteristica)
VALUES
('Accesibilidad para discapacitados'),
('Aire acondicionado'),
('Conexión Wi-Fi'),
('Asientos VIP'),
('Proyección 3D');

-- Inserción de estados de boletas
INSERT INTO estados_boletas (estado_boleta)
VALUES
('Vendida'),
('Reservada'),
('Cancelada'),
('Disponibles');

-- Inserción de ventas de boletas
INSERT INTO ventas_boletas (id_cliente, id_metodo, fecha, monto_total, id_venta_boleta, cantidad, id_estado_venta)
VALUES
(1, 1, '2024-10-01 10:00:00', 20000, 1, 2, 1),
(1, 1, '2024-10-01 10:05:00', 15000, 2, 1, 1),
(1, 2, '2024-10-01 10:10:00', 25000, 3, 3, 1),
(2, 1, '2024-10-01 10:15:00', 18000, 4, 2, 1),
(2, 2, '2024-10-01 10:20:00', 22000, 5, 4, 1),
(3, 1, '2024-10-02 11:00:00', 30000, 6, 5, 1),
(3, 1, '2024-10-02 11:05:00', 25000, 7, 2, 1),
(3, 2, '2024-10-02 11:10:00', 20000, 8, 3, 1),
(4, 1, '2024-10-02 11:15:00', 27000, 9, 2, 1),
(4, 2, '2024-10-02 11:20:00', 23000, 10, 1, 1),
(1, 1, '2024-10-03 12:00:00', 18000, 11, 1, 1),
(1, 2, '2024-10-03 12:05:00', 22000, 12, 3, 1),
(2, 1, '2024-10-03 12:10:00', 24000, 13, 2, 1),
(2, 2, '2024-10-03 12:15:00', 26000, 14, 4, 1),
(3, 1, '2024-10-03 12:20:00', 21000, 15, 2, 1),
(3, 2, '2024-10-04 13:00:00', 19000, 16, 1, 1),
(4, 1, '2024-10-04 13:05:00', 25000, 17, 3, 1),
(4, 2, '2024-10-04 13:10:00', 23000, 18, 2, 1),
(1, 1, '2024-10-04 13:15:00', 27000, 19, 1, 1),
(2, 2, '2024-10-04 13:20:00', 28000, 20, 4, 1);


-- Inserción de salas equipamientos
INSERT INTO salas_equipamientos (id_sala, id_equipamiento)
VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5);

-- Inserción de salas características
INSERT INTO salas_caracteristicas (id_sala, id_caracteristica)
VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5);