-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-07-2020 a las 06:10:13
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistematw`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `computadora`
--

CREATE TABLE `computadora` (
  `NumeroDeComputadora` int(2) NOT NULL,
  `EstadoPantalla` longtext CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `EstadoCPU` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `EstadoTeclado` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `EstadoRaton` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Sistema(s)Operativo(s)` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `computadora`
--

INSERT INTO `computadora` (`NumeroDeComputadora`, `EstadoPantalla`, `EstadoCPU`, `EstadoTeclado`, `EstadoRaton`, `Sistema(s)Operativo(s)`) VALUES
(1, 'Sin daños', 'Sin daños', 'Sin daños', 'Sin daños', 'windows'),
(2, 'Sin daños', 'Sin daños', 'Sin daños', 'Sin daños', 'windows y ubuntu'),
(3, 'Sin daños', 'No enciende', 'Sin daños', 'Sin daños', 'windows'),
(4, 'Sin daños', 'Sin daños', 'Sin daños', 'Sin raton', 'windows'),
(5, 'Sin daños', 'Sin puerto usb', 'Sin daños', 'Sin daños', 'windows'),
(6, 'No enciende', 'Sin daños', 'Sin daños', 'Sin mouse', 'windows y ubuntu'),
(7, 'Sin daños', 'Sin daños', 'Sin tecla F', 'Sin daños', 'windows'),
(9, 'Sin daños', 'Sin daños', 'Sin daños', 'Sin daños', 'windows'),
(10, 'Sin daños', 'Sin daños', 'Sin teclado', 'Sin daños', 'windows y ubuntu'),
(11, 'Sin daños', 'Sin puerto USB', 'Sin daños', 'Sin daños', 'windows'),
(12, 'Sin daños', 'Sin daños', 'Sin daños', 'Sin daños', 'windows'),
(13, 'Pantalla quebrada', 'Sin daños', 'Sin daños', 'Sin daños', 'windows'),
(14, 'No enciende', 'Sin daños', 'Sin daños', 'Sin mouse', 'windows'),
(15, 'Sin daños', 'Sin daños', 'Sin daños', 'Sin daños', 'windows'),
(16, 'Sin daños', 'Sin daños', 'Sin daños', 'Sin daños', 'windows'),
(17, 'Sin daños', 'No enciende', 'Sin daños', 'Sin daños', 'windows'),
(18, 'Sin daños', 'Sin daños', 'Sin daños', 'Sin daños', 'windows'),
(19, 'Sin daños', 'Sin daños', 'Sin daños', 'Sin daños', 'windows y ubuntu'),
(20, 'Sin daños', 'Sin daños', 'Sin daños', 'Sin daños', 'windows y ubuntu');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboratorio`
--

CREATE TABLE `laboratorio` (
  `Nombre Lab` text NOT NULL,
  `Edificio` int(1) NOT NULL,
  `Salon` int(4) NOT NULL,
  `No.Computadoras` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `laboratorio`
--

INSERT INTO `laboratorio` (`Nombre Lab`, `Edificio`, `Salon`, `No.Computadoras`) VALUES
('Sistemas 1', 2, 2101, 24),
('Sistemas 2', 2, 2102, 24),
('Sistemas 3', 2, 2103, 24),
('Sistemas 4', 2, 2104, 25),
('Sistemas 5', 2, 2105, 22),
('Programación 1', 2, 2106, 20),
('Programación 2', 2, 2107, 20),
('Programación 3', 2, 2108, 20),
('Programación 4', 2, 2109, 21),
('Programación 5', 2, 2110, 20),
('Informatica 1', 2, 2111, 23),
('Informatica 2', 2, 2112, 24),
('Informatica 3', 2, 2113, 22),
('Informatica 4', 2, 2114, 24),
('Informatica 5', 2, 2115, 21),
('Desarrollo 1', 2, 2116, 21),
('Desarrollo 2', 2, 2117, 21),
('Desarrollo 3', 2, 2118, 21),
('Desarrollo 4', 2, 2119, 21),
('Desarrollo 5', 2, 2120, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `Nombre` text NOT NULL,
  `Correo` text NOT NULL,
  `Mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(10) NOT NULL COMMENT 'Numero de boleta o empleado',
  `Nombre` text NOT NULL,
  `Apellido` text NOT NULL,
  `TipoUsuario` int(1) NOT NULL COMMENT '1=alumno\r\n2=profesor\r\n3=Admin',
  `Contraseña` text NOT NULL,
  `Email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `Nombre`, `Apellido`, `TipoUsuario`, `Contraseña`, `Email`) VALUES
(1, 'Alex', 'Iparrea', 3, '12345', 'ejemplo18@hotmail.com'),
(2, 'Isac', 'Godinez', 3, '12345', 'ejemplo19@hotmail.com'),
(3, 'Guillermo', 'Jacome', 3, '12345', 'ejemplo20@hotmail.com'),
(350008, 'José', 'Perez', 2, '12345', 'ejemplo8@hotmail.com'),
(350009, 'Ester', 'Juarez', 2, '12345', 'ejemplo9@hotmail.com'),
(350010, 'Estefani', 'Zuñiga', 2, '12345', 'ejemplo10@hotmail.com'),
(350016, 'Ruben', 'Santos', 2, '12345', 'ejemplo16@hotmail.com'),
(350017, 'Josefa', 'Santiago', 2, '12345', 'ejemplo17@hotmail.com'),
(2020350001, 'Juan', '0', 1, '12345', 'ejemplo1@hotmail.com'),
(2020350002, 'Santiago', '0', 1, '12345', 'ejemplo2@hotmail.com'),
(2020350003, 'Aida', '0', 1, '12345', 'ejemplo3@hotmail.com'),
(2020350004, 'Juan', 'lopez', 1, '12345', 'ejemplo4@hotmail.com'),
(2020350005, 'Alondra', 'Flores', 1, '12345', 'ejemplo5@hotmail.com'),
(2020350006, 'Juan', 'hernandez', 1, '12345', 'ejemplo6@hotmail.com'),
(2020350007, 'Herminia', 'Gonzalez', 1, '12345', 'ejemplo7@hotmail.com'),
(2020350011, 'Javier', 'Merino', 1, '12345', 'ejemplo11@hotmail.com'),
(2020350012, 'Brian', 'Rodriguez', 1, '12345', 'ejemplo12@hotmail.com'),
(2020350013, 'Rodrigo', 'Santos', 1, '12345', 'ejemplo13@hotmail.com'),
(2020350014, 'Rodrigo', 'Sanchez', 1, '12345', 'ejemplo14@hotmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `computadora`
--
ALTER TABLE `computadora`
  ADD PRIMARY KEY (`NumeroDeComputadora`);

--
-- Indices de la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  ADD PRIMARY KEY (`Salon`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
