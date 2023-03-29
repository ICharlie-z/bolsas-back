-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 14-03-2023 a las 18:30:06
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tbk`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bolsas`
--

DROP TABLE IF EXISTS `bolsas`;
CREATE TABLE IF NOT EXISTS `bolsas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `precio` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `medidas` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `categoria` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_id` (`categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `bolsas`
--

INSERT INTO `bolsas` (`id`, `precio`, `nombre`, `medidas`, `img`, `categoria`) VALUES
(1, '120', 'Mini', '15x11x5', '1.jpg', 1),
(2, '170', 'Chica', '17x14x6', '1.jpg', 1),
(3, '270', 'Botella Corta', '29x17x10', '1.jpg', 1),
(4, '280', 'Mediana', '26x21x11', '1.jpg', 1),
(5, '270', 'Botella Larga', '30x43x11', '1.jpg', 1),
(6, '330', 'Horizontal', '15x11x5', '1.jpg', 1),
(7, '330', 'Grande', '44x28x11', '1.jpg', 1),
(8, '460', 'Grande blanca', '44x32x11', '1.jpg', 1),
(9, '170', 'Bolsa delivery', '26x26x15', '1.jpg', 1),
(10, '390', 'Mediana Blanca', '26x21x11', '1.jpg', 1),
(11, '460', 'Botella corta blanca', '30x43x11', '1.jpg', 1),
(12, '120', 'Horizontal blanca', '15x11x5', '1.jpg', 1),
(13, '1.100', 'Cajas desayuno', '30x20x8', '1.jpg', 1),
(14, 'test', 'test', 'test', '1.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'Bolsas de papel');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bolsas`
--
ALTER TABLE `bolsas`
  ADD CONSTRAINT `categoria_id` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
