-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2020 a las 05:47:01
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_anuncios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avisos`
--

CREATE TABLE `avisos` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `contenido` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `autor` varchar(20) NOT NULL,
  `fecha` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `avisos`
--

INSERT INTO `avisos` (`id`, `titulo`, `contenido`, `autor`, `fecha`) VALUES
(1, 'Elige tu deporte', 'Existen ejercicios que aunque estén de moda, no son lo tuyo o no te llaman la atención. Depende de tus gustos y de tu experiencia previa con el ejercicio físico. Debes tomar en cuenta la preparación de tu cuerpo para la actividad que decidiste realizar y establece objetivos realistas a partir de esto.\r\n                        \r\n                        \r\n                        \r\n                        ', 'ADMINISTRADOR', '2020-05-22'),
(2, 'Frecuencia', 'Existen ejercicios que aunque estén de moda, no son lo tuyo o no te llaman la atención. Depende de tus gustos y de tu experiencia previa con el ejercicio físico. Debes tomar en cuenta la preparación de tu cuerpo para la actividad que decidiste realizar y establece objetivos realistas a partir de esto.', 'USUARIO', '2020-05-22'),
(3, 'Hidratación', 'Es importante que te mantengas hidratado antes, durante y después de la actividad física pues de lo contrario podrías causar efectos dañinos en tu organismo como la incoordinación de movimiento, aumento desmedido de la frecuencia cardíaca, mareos, entre otros.', 'ADMINISTRADOR', '2020-05-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nombres` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`, `nombres`) VALUES
(1, 'admin', '123', 'ADMINITRADOR'),
(2, 'luis', '123', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `avisos`
--
ALTER TABLE `avisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `avisos`
--
ALTER TABLE `avisos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
