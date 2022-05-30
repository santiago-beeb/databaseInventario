-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2022 a las 05:56:13
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
-- Base de datos: `instrumento`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ins_nombreinstrumento`
--

CREATE TABLE `ins_nombreinstrumento` (
  `nom_id` int(11) NOT NULL,
  `nom_instrumento` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ins_nombreinstrumento`
--

INSERT INTO `ins_nombreinstrumento` (`nom_id`, `nom_instrumento`) VALUES
(2, 'Flauta'),
(1, 'Guitarra');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ins_registroinstrumento`
--

CREATE TABLE `ins_registroinstrumento` (
  `reg_id` int(11) NOT NULL,
  `reg_nombreInstrumento` int(11) NOT NULL,
  `reg_anioCompra` year(4) NOT NULL,
  `reg_observacion` varchar(80) NOT NULL,
  `reg_cantidad` int(11) NOT NULL,
  `reg_tipoInstrumento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ins_registroinstrumento`
--

INSERT INTO `ins_registroinstrumento` (`reg_id`, `reg_nombreInstrumento`, `reg_anioCompra`, `reg_observacion`, `reg_cantidad`, `reg_tipoInstrumento`) VALUES
(1, 2, 2021, 'na', 1, 1),
(2, 0, 2021, 'na', 2, 0),
(3, 0, 0000, '5', 5, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ins_tipoinstrumento`
--

CREATE TABLE `ins_tipoinstrumento` (
  `tpo_id` int(11) NOT NULL,
  `tpo_tipoInstrumento` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ins_tipoinstrumento`
--

INSERT INTO `ins_tipoinstrumento` (`tpo_id`, `tpo_tipoInstrumento`) VALUES
(2, 'Cuerda'),
(1, 'Viento ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ins_nombreinstrumento`
--
ALTER TABLE `ins_nombreinstrumento`
  ADD PRIMARY KEY (`nom_id`),
  ADD UNIQUE KEY `nom_instrumento_2` (`nom_instrumento`),
  ADD KEY `nom_instrumento` (`nom_instrumento`);

--
-- Indices de la tabla `ins_registroinstrumento`
--
ALTER TABLE `ins_registroinstrumento`
  ADD PRIMARY KEY (`reg_id`),
  ADD KEY `reg_tipoInstrumento` (`reg_tipoInstrumento`),
  ADD KEY `re` (`reg_nombreInstrumento`);

--
-- Indices de la tabla `ins_tipoinstrumento`
--
ALTER TABLE `ins_tipoinstrumento`
  ADD PRIMARY KEY (`tpo_id`),
  ADD UNIQUE KEY `tpo_tipoInstrumento` (`tpo_tipoInstrumento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ins_nombreinstrumento`
--
ALTER TABLE `ins_nombreinstrumento`
  MODIFY `nom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ins_registroinstrumento`
--
ALTER TABLE `ins_registroinstrumento`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ins_tipoinstrumento`
--
ALTER TABLE `ins_tipoinstrumento`
  MODIFY `tpo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ins_registroinstrumento`
--
ALTER TABLE `ins_registroinstrumento`
  ADD CONSTRAINT `ins_registroinstrumento_ibfk_1` FOREIGN KEY (`reg_nombreInstrumento`) REFERENCES `ins_nombreinstrumento` (`nom_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ins_registroinstrumento_ibfk_2` FOREIGN KEY (`reg_tipoInstrumento`) REFERENCES `ins_tipoinstrumento` (`tpo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
