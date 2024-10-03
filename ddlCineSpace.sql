CREATE DATABASE IF NOT EXISTS cinema_space;

USE cinema_space;

CREATE TABLE generos (
    id_genero INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    genero VARCHAR(255) UNIQUE
);

CREATE TABLE clasificaciones (
    id_clasificacion INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    clasificacion VARCHAR(255) UNIQUE
);

CREATE TABLE directores (
    id_director INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    director VARCHAR(255) UNIQUE
);

CREATE TABLE idiomas (
    id_idioma INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idioma VARCHAR(255) UNIQUE
);

CREATE TABLE estados_peliculas (
    id_estado_pelicula INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    estado_pelicula VARCHAR(255) UNIQUE
);

CREATE TABLE actores (
    id_actor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    actor VARCHAR(255) UNIQUE
);

CREATE TABLE peliculas (
    id_pelicula INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255),
    id_genero INT NOT NULL,
    duracion INT,
    id_clasificacion INT NOT NULL,
    sinopsis TEXT,
    id_idioma INT NOT NULL,
    kik VARCHAR(255),
    id_estado_pelicula INT NOT NULL,
    id_pais INT NOT NULL
);

CREATE TABLE salas (
    id_sala INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    capacidad INT,
    id_tipo_pantalla INT NOT NULL,
    id_estado_sala INT NOT NULL,
    nombre_sala VARCHAR(255) UNIQUE
);

CREATE TABLE tipos_pantalla (
    id_tipo_pantalla INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo_pantalla VARCHAR(255) UNIQUE
);

CREATE TABLE estados_salas (
    id_estado_sala INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    estado_sala VARCHAR(255) UNIQUE
);

CREATE TABLE caracteristicas (
    id_caracteristica INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    caracteristica VARCHAR(255) UNIQUE
);

CREATE TABLE equipamientos (
    id_equipamiento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    equipamiento VARCHAR(255) UNIQUE
);

CREATE TABLE funciones (
    id_funcion INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_pelicula INT NOT NULL,
    id_sala INT NOT NULL,
    hora_inicio TIME,
    hora_fin TIME,
    id_idioma INT NOT NULL,
    id_estado_funcion INT NOT NULL,
    id_precio INT NOT NULL,
    id_tipo_funcion INT NOT NULL,
    fecha DATE
);

CREATE TABLE estados_funciones (
    id_estado_funcion INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    estado_funcion VARCHAR(255) UNIQUE
);

CREATE TABLE precios_funciones (
    id_precio_funcion INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    precio INT UNIQUE
);

CREATE TABLE boletas (
    id_boleta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_funcion INT NOT NULL,
    asiento VARCHAR(255) UNIQUE,
    fecha_compra DATE,
    id_cliente INT NOT NULL,
    id_venta INT NOT NULL,
    id_metodo INT NOT NULL,
    id_venta_boleta INT NOT NULL,
    id_estado_boleta INT NOT NULL
);

CREATE TABLE clientes (
    id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    apellido VARCHAR(255),
    correo VARCHAR(255) UNIQUE,
    telefono VARCHAR(255) UNIQUE,
    fecha_registro DATE,
    id_categoria INT NOT NULL,
    documento VARCHAR(255) UNIQUE
);

CREATE TABLE categorias (
    id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    categorias VARCHAR(255) UNIQUE,
    descuento INT
);

CREATE TABLE empleados (
    id_empleado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    apellido VARCHAR(255),
    correo VARCHAR(255) UNIQUE,
    telefono VARCHAR(255) UNIQUE,
    fecha_contratacion DATE,
    id_estado_empleado INT NOT NULL,
    id_direccion INT NOT NULL,
    id_cargo INT NOT NULL
);

CREATE TABLE estados_empleados (
    id_estado_empleado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    estado_empleado VARCHAR(255) UNIQUE
);

CREATE TABLE cargos (
    id_cargo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cargo VARCHAR(255) UNIQUE,
    salario INT
);

CREATE TABLE venta_confiteria (
    id_venta_confiteria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    fecha_venta TIMESTAMP,
    total INT,
    id_metodo INT NOT NULL,
    id_funcion INT NOT NULL
);

CREATE TABLE metodos (
    id_metodo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    metodo VARCHAR(255) UNIQUE
);

CREATE TABLE productos (
    id_producto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) UNIQUE,
    precio INT,
    descripcion TEXT,
    id_estado_producto INT NOT NULL
);

CREATE TABLE estados_productos (
    id_estado_producto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    estado_producto VARCHAR(255) UNIQUE
);

CREATE TABLE inventario (
    id_inventario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_producto INT NOT NULL,
    cantidad_disponible INT,
    id_proveedor INT NOT NULL
);

CREATE TABLE proveedores (
    id_proveedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) UNIQUE,
    telefono VARCHAR(255),
    gmail VARCHAR(255),
    id_direccion INT NOT NULL,
    id_estado_proveedor INT NOT NULL
);

CREATE TABLE estados_proveedores (
    id_estado_proveedores INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    estado_proveedor VARCHAR(255) UNIQUE
);

CREATE TABLE barrios (
    id_barrio INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    barrio VARCHAR(255) UNIQUE
);

CREATE TABLE direcciones (
    id_direccion INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    calle VARCHAR(255),
    carrera VARCHAR(255),
    numero VARCHAR(255),
    id_barrio INT NOT NULL
);

CREATE TABLE cartelera (
    id_cartelera INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_pelicula INT NOT NULL,
    fecha_inicio DATE,
    fecha_final DATE,
    id_estado_cartelera INT NOT NULL
);

CREATE TABLE estados_carteleras (
    id_estado_cartelera INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    estado_cartelera VARCHAR(255) UNIQUE
);

CREATE TABLE peliculas_actores (
    id_pelicula INT NOT NULL,
    id_actor INT NOT NULL
);

CREATE TABLE salas_equipamientos (
    id_sala INT NOT NULL,
    id_equipamiento INT NOT NULL
);

CREATE TABLE salas_caracteristicas (
    id_sala INT NOT NULL,
    id_caracteristica INT NOT NULL
);

CREATE TABLE peliculas_directores (
    id_pelicula INT NOT NULL,
    id_director INT NOT NULL
);

CREATE TABLE paises (
    id_pais INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pais VARCHAR(255) UNIQUE
);

CREATE TABLE tipos_funciones (
    id_tipo_funcion INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo_funcion VARCHAR(255) UNIQUE
);

CREATE TABLE ventas_boletas (
    id_boleta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_metodo INT NOT NULL,
    fecha TIMESTAMP,
    monto_total INT,
    id_venta_boleta INT NOT NULL,
    cantidad INT,
    id_estado_venta INT NOT NULL
);

CREATE TABLE estados_boletas (
    id_estado_boleta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    estado_boleta VARCHAR(255) UNIQUE
);

CREATE TABLE estados_ventas (
    id_estado_venta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    estado_venta VARCHAR(255) UNIQUE
);

CREATE TABLE detalle_venta_confiteria (
    id_detalle_venta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_venta_confiteria INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT,
    precio_unitario INT
);
