-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 15-03-2020 a las 19:21:30
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `idreserva` int(11) NOT NULL AUTO_INCREMENT,
  `custome_name` varchar(100) NOT NULL,
  `comments` varchar(250) DEFAULT NULL,
  `day_of_service` date NOT NULL,
  `service_time` int(11) NOT NULL,
  `service` int(11) NOT NULL,
  `total_price` float NOT NULL,
  PRIMARY KEY (`idreserva`),
  KEY `service time` (`service_time`),
  KEY `service` (`service`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `reservation`
--

INSERT INTO `reservation` (`idreserva`, `custome_name`, `comments`, `day_of_service`, `service_time`, `service`, `total_price`) VALUES
(1, 'Miguel', 'primer cliente', '2020-04-01', 1, 1, 20),
(2, 'Caro', 'segundo cliente', '2020-04-01', 2, 1, 20),
(3, 'Caro', 'segundo cliente', '2020-04-01', 6, 2, 20),
(4, 'Caro', 'segundo cliente', '2020-04-01', 7, 2, 20),
(5, 'Caro', 'segundo cliente', '2020-04-01', 18, 4, 20),
(6, 'Carol', 'other', '2020-05-01', 1, 1, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `service`
--

DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `idservice` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`idservice`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `name_2` (`name`),
  UNIQUE KEY `name_3` (`name`),
  KEY `name_4` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `service`
--

INSERT INTO `service` (`idservice`, `name`, `description`, `price`) VALUES
(1, 'Circuito Spa', 'circuito acuatico', 20),
(2, 'Circuito Spa  y Masaje', 'circuito acuatico y luego un masaje', 30),
(3, 'Masajes', 'Masajes relajantes o descontracturantes \r\nMasaje facial.\r\nMasaje terapéutico.\r\nEtcétera.', 15),
(4, 'Spa y Comida ', 'circuito spa y luego desayuno o almuerzo o cena', 25),
(5, 'Rituales', 'Masajes relajantes ', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `service_time`
--

DROP TABLE IF EXISTS `service_time`;
CREATE TABLE IF NOT EXISTS `service_time` (
  `id service time` int(11) NOT NULL AUTO_INCREMENT,
  `service` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  PRIMARY KEY (`id service time`),
  KEY `service` (`service`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `service_time`
--

INSERT INTO `service_time` (`id service time`, `service`, `start_time`, `end_time`) VALUES
(1, 1, '10:00:00', '12:00:00'),
(2, 1, '12:00:00', '14:00:00'),
(3, 1, '15:00:00', '17:00:00'),
(4, 1, '17:00:00', '19:00:00'),
(5, 1, '19:00:00', '21:00:00'),
(6, 2, '10:00:00', '12:30:00'),
(7, 2, '12:30:00', '15:00:00'),
(8, 2, '17:00:00', '19:30:00'),
(9, 3, '10:00:00', '11:00:00'),
(10, 3, '11:00:00', '12:00:00'),
(11, 3, '12:00:00', '13:00:00'),
(12, 3, '14:00:00', '15:00:00'),
(13, 3, '15:00:00', '16:00:00'),
(14, 3, '18:00:00', '19:00:00'),
(15, 3, '19:00:00', '20:00:00'),
(16, 4, '10:00:00', '13:00:00'),
(17, 4, '13:00:00', '15:00:00'),
(18, 4, '15:00:00', '18:00:00'),
(19, 4, '18:00:00', '21:00:00'),
(20, 5, '10:00:00', '11:30:00'),
(21, 5, '12:00:00', '13:30:00'),
(22, 5, '14:00:00', '15:30:00'),
(23, 5, '17:00:00', '18:30:00'),
(24, 5, '19:00:00', '20:30:00');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`service`) REFERENCES `service` (`idservice`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`service_time`) REFERENCES `service_time` (`id service time`);

--
-- Filtros para la tabla `service_time`
--
ALTER TABLE `service_time`
  ADD CONSTRAINT `service_time_ibfk_1` FOREIGN KEY (`service`) REFERENCES `service` (`idservice`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
