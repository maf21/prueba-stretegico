-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-12-2022 a las 14:21:21
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_maxivideo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler`
--

CREATE TABLE `alquiler` (
  `id` int(11) NOT NULL,
  `pelicula` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `costo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `alquiler`
--

INSERT INTO `alquiler` (`id`, `pelicula`, `cliente`, `fecha_inicio`, `fecha_fin`, `costo`) VALUES
(1, 1, 3, '2022-07-06', '2022-07-11', 12000),
(3, 1, 5, '2022-07-07', '2022-07-08', 10000),
(4, 1, 4, '2022-07-07', '2022-07-08', 12700),
(5, 1, 7, '2022-07-07', '2022-07-08', 12700),
(21, 1, 83, '2022-12-27', '2022-12-31', 32000),
(23, 1, 86, '2022-12-27', '2022-12-31', 15000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` int(11) NOT NULL,
  `nombre_pais` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `codigo` varchar(4) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `nombre_pais`, `codigo`) VALUES
(1, 'Colombia', 'COL'),
(2, 'Ecuador', 'ECU'),
(3, 'Panamá', 'PAN'),
(4, 'Brasil', 'BRA'),
(5, 'Venezuela', 'VEN'),
(6, 'Estados Unidos', 'USA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `id` int(11) NOT NULL,
  `titulo` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `nacionalidad` int(11) NOT NULL,
  `productora` int(11) NOT NULL,
  `director` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `ejemplar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`id`, `titulo`, `nacionalidad`, `productora`, `director`, `fecha`, `ejemplar`) VALUES
(1, 'The Jazz Singer', 6, 1, 1, '2022-07-06', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `tipo_persona` int(11) NOT NULL,
  `tipo_identificacion` int(11) NOT NULL,
  `nacionalidad` int(11) NOT NULL,
  `nombre` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `identificacion` int(11) NOT NULL,
  `edad` int(11) NOT NULL,
  `direccion` varchar(90) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `correo` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sexo` enum('hombre','mujer','otro') COLLATE utf8_spanish_ci NOT NULL,
  `tipo_actor` enum('principal','extra') COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `tipo_persona`, `tipo_identificacion`, `nacionalidad`, `nombre`, `identificacion`, `edad`, `direccion`, `telefono`, `correo`, `sexo`, `tipo_actor`) VALUES
(1, 2, 6, 6, 'Alan Crosland', 451875214, 60, NULL, NULL, NULL, 'hombre', NULL),
(2, 3, 7, 6, 'Al Jholson', 120646425, 40, NULL, NULL, NULL, 'hombre', 'principal'),
(3, 1, 1, 1, 'Andrea Bedoya', 34561874, 35, 'Carrera 15 #14-22, Manizales, Caldas.', 8462032, 'andre21@mail.com', 'mujer', NULL),
(4, 1, 2, 2, 'Camila Sanchez', 24568162, 31, 'Calle 45 #12-34, Ecuador', 27638721, 'cami@mail.com', 'mujer', NULL),
(5, 1, 3, 3, 'Andrea Rodriguez', 53672651, 25, 'Calle 45 #12-34, Panamá', 3562586, 'andre@mail.com', 'mujer', NULL),
(7, 1, 2, 6, 'Camila Sanchez', 245681111, 31, 'Calle 45 #12-34, Ecuador', 27638721, 'cami@mail.com', 'mujer', NULL),
(83, 1, 1, 1, 'Juan Felipe', 12345, 32, 'calle 2b', 12972, 'ju@mail.com', 'hombre', NULL),
(86, 1, 1, 1, 'Juan David', 54321, 21, 'calle 2bv', 3278162, 'jugna@mail.com', 'hombre', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productora`
--

CREATE TABLE `productora` (
  `id` int(11) NOT NULL,
  `nombre_productora` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(90) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productora`
--

INSERT INTO `productora` (`id`, `nombre_productora`, `telefono`, `direccion`) VALUES
(1, 'Warner Bros', 555641254, 'Burbank, California.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reparto`
--

CREATE TABLE `reparto` (
  `id` int(11) NOT NULL,
  `pelicula` int(11) NOT NULL,
  `actor` int(11) NOT NULL,
  `tipo_actor` enum('principal','extra') COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `reparto`
--

INSERT INTO `reparto` (`id`, `pelicula`, `actor`, `tipo_actor`) VALUES
(1, 1, 2, 'principal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_identificacion`
--

CREATE TABLE `tipo_identificacion` (
  `id` int(11) NOT NULL,
  `nombre_identificacion` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `pais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_identificacion`
--

INSERT INTO `tipo_identificacion` (`id`, `nombre_identificacion`, `pais`) VALUES
(1, 'Cedula Ciudadanía', 1),
(2, 'NIT', 1),
(3, 'Cédula de Identidad', 2),
(4, 'Cédula de Identidad Personal', 3),
(5, 'Documentación Nacional de Identificación', 4),
(6, 'Documento de Identidad Nacional', 5),
(7, 'Documento', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_persona`
--

CREATE TABLE `tipo_persona` (
  `id` int(11) NOT NULL,
  `nombre_tipo` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `actor` enum('principal','extra') COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_persona`
--

INSERT INTO `tipo_persona` (`id`, `nombre_tipo`, `actor`) VALUES
(1, 'Cliente', 'principal'),
(2, 'Director', 'principal'),
(3, 'Actor', 'principal');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_175` (`cliente`),
  ADD KEY `FK_187` (`pelicula`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_151` (`director`),
  ADD KEY `FK_154` (`productora`),
  ADD KEY `FK_157` (`nacionalidad`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identificacion` (`identificacion`),
  ADD KEY `FK_135` (`nacionalidad`),
  ADD KEY `FK_138` (`tipo_identificacion`),
  ADD KEY `FK_141` (`tipo_persona`);

--
-- Indices de la tabla `productora`
--
ALTER TABLE `productora`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reparto`
--
ALTER TABLE `reparto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_206` (`pelicula`),
  ADD KEY `FK_209` (`actor`);

--
-- Indices de la tabla `tipo_identificacion`
--
ALTER TABLE `tipo_identificacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_192` (`pais`);

--
-- Indices de la tabla `tipo_persona`
--
ALTER TABLE `tipo_persona`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de la tabla `productora`
--
ALTER TABLE `productora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `reparto`
--
ALTER TABLE `reparto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipo_identificacion`
--
ALTER TABLE `tipo_identificacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tipo_persona`
--
ALTER TABLE `tipo_persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD CONSTRAINT `FK_173` FOREIGN KEY (`cliente`) REFERENCES `persona` (`id`),
  ADD CONSTRAINT `FK_185` FOREIGN KEY (`pelicula`) REFERENCES `pelicula` (`id`);

--
-- Filtros para la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD CONSTRAINT `FK_149` FOREIGN KEY (`director`) REFERENCES `persona` (`id`),
  ADD CONSTRAINT `FK_152` FOREIGN KEY (`productora`) REFERENCES `productora` (`id`),
  ADD CONSTRAINT `FK_155` FOREIGN KEY (`nacionalidad`) REFERENCES `pais` (`id`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `FK_133` FOREIGN KEY (`nacionalidad`) REFERENCES `pais` (`id`),
  ADD CONSTRAINT `FK_136` FOREIGN KEY (`tipo_identificacion`) REFERENCES `tipo_identificacion` (`id`),
  ADD CONSTRAINT `FK_139` FOREIGN KEY (`tipo_persona`) REFERENCES `tipo_persona` (`id`);

--
-- Filtros para la tabla `reparto`
--
ALTER TABLE `reparto`
  ADD CONSTRAINT `FK_204` FOREIGN KEY (`pelicula`) REFERENCES `pelicula` (`id`),
  ADD CONSTRAINT `FK_207` FOREIGN KEY (`actor`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `tipo_identificacion`
--
ALTER TABLE `tipo_identificacion`
  ADD CONSTRAINT `FK_190` FOREIGN KEY (`pais`) REFERENCES `pais` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
