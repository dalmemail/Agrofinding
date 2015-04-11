-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2015 a las 19:01:26
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `nasa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `culter`
--

CREATE TABLE IF NOT EXISTS `culter` (
  `id_culter` int(11) DEFAULT NULL,
  `cultivo` varchar(50) DEFAULT NULL,
  `id_terreno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cultivo`
--

CREATE TABLE IF NOT EXISTS `cultivo` (
  `ID_CULTIVO` int(11) DEFAULT NULL,
  `AÑO` int(11) DEFAULT NULL,
  `NOMBRE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metereo`
--

CREATE TABLE IF NOT EXISTS `metereo` (
  `ID_DATA` int(11) DEFAULT NULL,
  `AÑO` int(11) NOT NULL,
  `MES` varchar(20) DEFAULT NULL,
  `TEMP` decimal(3,1) DEFAULT NULL,
  `TM` decimal(3,1) DEFAULT NULL,
  `Tmin` decimal(3,1) DEFAULT NULL,
  `PREC` decimal(3,1) DEFAULT NULL,
  `HUM` decimal(3,1) DEFAULT NULL,
  `NIEV` decimal(3,1) DEFAULT NULL,
  `TOR` decimal(3,1) DEFAULT NULL,
  `NIEB` decimal(3,1) DEFAULT NULL,
  `HEL` decimal(3,1) DEFAULT NULL,
  `DESP` decimal(3,1) DEFAULT NULL,
  `SOL` decimal(3,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `ID_PRODUCTO` int(11) NOT NULL,
  `NOMBRE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terreno`
--

CREATE TABLE IF NOT EXISTS `terreno` (
  `id_ter` int(11) NOT NULL,
  `localizacion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `metereo`
--
ALTER TABLE `metereo`
 ADD PRIMARY KEY (`AÑO`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
 ADD PRIMARY KEY (`ID_PRODUCTO`);

--
-- Indices de la tabla `terreno`
--
ALTER TABLE `terreno`
 ADD PRIMARY KEY (`id_ter`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
