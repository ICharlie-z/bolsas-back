-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 26-01-2023 a las 20:07:09
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `bolsas`
--

INSERT INTO `bolsas` (`id`, `precio`, `nombre`, `medidas`, `img`) VALUES
(1, '120', 'Mini', '15x11x5', '1.jpg'),
(2, '170', 'Chica', '17x14x6', '1.jpg'),
(3, '270', 'Botella Corta', '29x17x10', '1.jpg'),
(4, '280', 'Mediana', '26x21x11', '1.jpg'),
(5, '270', 'Botella Larga', '30x43x11', '1.jpg'),
(6, '330', 'Horizontal', '15x11x5', '1.jpg'),
(7, '330', 'Grande', '44x28x11', '1.jpg'),
(8, '460', 'Grande blanca', '44x32x11', '1.jpg'),
(9, '170', 'Bolsa delivery', '26x26x15', '1.jpg'),
(10, '390', 'Mediana Blanca', '26x21x11', '1.jpg'),
(11, '460', 'Botella corta blanca', '30x43x11', '1.jpg'),
(12, '120', 'Horizontal blanca', '15x11x5', '1.jpg'),
(13, '1.100', 'Cajas desayuno', '30x20x8', '1.jpg'),
(14, 'test', 'test', 'test', '1.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
