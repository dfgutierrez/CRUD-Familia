-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-11-2020 a las 18:55:26
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_springboot_backend`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoria`
--

CREATE TABLE `auditoria` (
  `id` bigint(20) NOT NULL,
  `accion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `endpoint` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `request` varchar(5000) COLLATE utf8_spanish_ci DEFAULT NULL,
  `response` varchar(5000) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `auditoria`
--

INSERT INTO `auditoria` (`id`, `accion`, `endpoint`, `fecha_creacion`, `request`, `response`) VALUES
(1, 'LISTAR', 'http://localhost:333/ws/personas', '2020-11-08 17:06:42.000000', '', '[{\"id\":1,\"nombres\":\"Diego\",\"apellidos\":\"Gutierrez\",\"documento\":\"1012403403\",\"parentesco\":\"ANFITRION\",\"codigoFamilia\":111,\"fechaCreacion\":\"Nov 6, 2020 7:00:00 PM\"},{\"id\":2,\"nombres\":\"Karen\",\"apellidos\":\"Rodriguez\",\"documento\":\"1012403403\",\"parentesco\":\"ESPOSA\",\"codigoFamilia\":111,\"fechaCreacion\":\"Nov 6, 2020 7:00:00 PM\"},{\"id\":3,\"nombres\":\"Ana\",\"apellidos\":\"Salinas\",\"documento\":\"51811296\",\"parentesco\":\"MAMA\",\"codigoFamilia\":111,\"fechaCreacion\":\"Nov 6, 2020 7:00:00 PM\"},{\"id\":4,\"nombres\":\"Jeisso\",\"apellidos\":\"Joven\",\"documento\":\"1012403403\",\"parentesco\":\"HERMANO\",\"codigoFamilia\":111,\"fechaCreacion\":\"Nov 6, 2020 7:00:00 PM\"},{\"id\":5,\"nombres\":\"Martin\",\"apellidos\":\"Gutierrez\",\"documento\":\"1012403403\",\"parentesco\":\"HERMANO\",\"codigoFamilia\":111,\"fechaCreacion\":\"Nov 6, 2020 7:00:00 PM\"},{\"id\":6,\"nombres\":\"Cristian\",\"apellidos\":\"Gutierrez\",\"documento\":\"1012403403\",\"parentesco\":\"HERMANO\",\"codigoFamilia\":111,\"fechaCreacion\":\"Nov 6, 2020 7:00:00 PM\"},{\"id\":7,\"nombres\":\"Aura\",\"apellidos\":\"Huratado\",\"documento\":\"1012403403\",\"parentesco\":\"CUÑADO\",\"codigoFamilia\":111,\"fechaCreacion\":\"Nov 6, 2020 7:00:00 PM\"},{\"id\":8,\"nombres\":\"Daniel\",\"apellidos\":\"Joven\",\"documento\":\"1012403403\",\"parentesco\":\"SOBRINO\",\"codigoFamilia\":111,\"fechaCreacion\":\"Nov 6, 2020 7:00:00 PM\"}]'),
(2, 'ELIMINAR', 'http://localhost:333/ws/personas/1', '2020-11-08 17:06:55.000000', '', '{\"status\":\"OK\",\"headers\":{},\"body\":{\"Mensaje\":\"La persona fue eliminado con exito!\"}}'),
(3, 'LISTAR', 'http://localhost:333/ws/personas', '2020-11-08 17:07:00.000000', '', '[{\"id\":2,\"nombres\":\"Karen\",\"apellidos\":\"Rodriguez\",\"documento\":\"1012403403\",\"parentesco\":\"ESPOSA\",\"codigoFamilia\":111,\"fechaCreacion\":\"Nov 6, 2020 7:00:00 PM\"},{\"id\":3,\"nombres\":\"Ana\",\"apellidos\":\"Salinas\",\"documento\":\"51811296\",\"parentesco\":\"MAMA\",\"codigoFamilia\":111,\"fechaCreacion\":\"Nov 6, 2020 7:00:00 PM\"},{\"id\":4,\"nombres\":\"Jeisso\",\"apellidos\":\"Joven\",\"documento\":\"1012403403\",\"parentesco\":\"HERMANO\",\"codigoFamilia\":111,\"fechaCreacion\":\"Nov 6, 2020 7:00:00 PM\"},{\"id\":5,\"nombres\":\"Martin\",\"apellidos\":\"Gutierrez\",\"documento\":\"1012403403\",\"parentesco\":\"HERMANO\",\"codigoFamilia\":111,\"fechaCreacion\":\"Nov 6, 2020 7:00:00 PM\"},{\"id\":6,\"nombres\":\"Cristian\",\"apellidos\":\"Gutierrez\",\"documento\":\"1012403403\",\"parentesco\":\"HERMANO\",\"codigoFamilia\":111,\"fechaCreacion\":\"Nov 6, 2020 7:00:00 PM\"},{\"id\":7,\"nombres\":\"Aura\",\"apellidos\":\"Huratado\",\"documento\":\"1012403403\",\"parentesco\":\"CUÑADO\",\"codigoFamilia\":111,\"fechaCreacion\":\"Nov 6, 2020 7:00:00 PM\"},{\"id\":8,\"nombres\":\"Daniel\",\"apellidos\":\"Joven\",\"documento\":\"1012403403\",\"parentesco\":\"SOBRINO\",\"codigoFamilia\":111,\"fechaCreacion\":\"Nov 6, 2020 7:00:00 PM\"}]'),
(4, 'CREAR', 'http://localhost:333/ws/personas', '2020-11-08 17:07:07.000000', '[{\"nombres\":\"Diegottt\",\"apellidos\":\"Gutierrez\",\"documento\":\"1012403403\",\"parentesco\":\"ANFITRION\"},{\"nombres\":\"Diegowww\",\"apellidos\":\"Gutierrez\",\"documento\":\"1012403403\",\"parentesco\":\"ANFITRION\"}]', '{\"status\":\"CREATED\",\"headers\":{},\"body\":{\"Mensaje\":\"La familia a sido creada con exito!\",\"Familia\":[{\"id\":9,\"nombres\":\"Diegottt\",\"apellidos\":\"Gutierrez\",\"documento\":\"1012403403\",\"parentesco\":\"ANFITRION\",\"codigoFamilia\":7563180,\"fechaCreacion\":\"Nov 8, 2020 12:07:07 PM\"},{\"id\":10,\"nombres\":\"Diegowww\",\"apellidos\":\"Gutierrez\",\"documento\":\"1012403403\",\"parentesco\":\"ANFITRION\",\"codigoFamilia\":7563180,\"fechaCreacion\":\"Nov 8, 2020 12:07:07 PM\"}]}}'),
(5, 'CREAR', 'http://localhost:333/ws/personas/8', '2020-11-08 17:07:21.000000', '{\"nombres\":\"fffffffffffffff\",\"apellidos\":\"Gutierrez\",\"documento\":\"1012403403\",\"parentesco\":\"ANFITRION\"}', '{\"status\":\"CREATED\",\"headers\":{},\"body\":{\"Mensaje\":\"La persona a sido actualizada con exito!\",\"Persona\":{\"id\":8,\"nombres\":\"fffffffffffffff\",\"apellidos\":\"Gutierrez\",\"documento\":\"1012403403\",\"parentesco\":\"ANFITRION\",\"codigoFamilia\":111,\"fechaCreacion\":\"Nov 6, 2020 7:00:00 PM\"}}}'),
(6, 'LISTAR', 'http://localhost:333/ws/personas', '2020-11-08 17:07:27.000000', '', '[{\"id\":2,\"nombres\":\"Karen\",\"apellidos\":\"Rodriguez\",\"documento\":\"1012403403\",\"parentesco\":\"ESPOSA\",\"codigoFamilia\":111,\"fechaCreacion\":\"Nov 6, 2020 7:00:00 PM\"},{\"id\":3,\"nombres\":\"Ana\",\"apellidos\":\"Salinas\",\"documento\":\"51811296\",\"parentesco\":\"MAMA\",\"codigoFamilia\":111,\"fechaCreacion\":\"Nov 6, 2020 7:00:00 PM\"},{\"id\":4,\"nombres\":\"Jeisso\",\"apellidos\":\"Joven\",\"documento\":\"1012403403\",\"parentesco\":\"HERMANO\",\"codigoFamilia\":111,\"fechaCreacion\":\"Nov 6, 2020 7:00:00 PM\"},{\"id\":5,\"nombres\":\"Martin\",\"apellidos\":\"Gutierrez\",\"documento\":\"1012403403\",\"parentesco\":\"HERMANO\",\"codigoFamilia\":111,\"fechaCreacion\":\"Nov 6, 2020 7:00:00 PM\"},{\"id\":6,\"nombres\":\"Cristian\",\"apellidos\":\"Gutierrez\",\"documento\":\"1012403403\",\"parentesco\":\"HERMANO\",\"codigoFamilia\":111,\"fechaCreacion\":\"Nov 6, 2020 7:00:00 PM\"},{\"id\":7,\"nombres\":\"Aura\",\"apellidos\":\"Huratado\",\"documento\":\"1012403403\",\"parentesco\":\"CUÑADO\",\"codigoFamilia\":111,\"fechaCreacion\":\"Nov 6, 2020 7:00:00 PM\"},{\"id\":8,\"nombres\":\"fffffffffffffff\",\"apellidos\":\"Gutierrez\",\"documento\":\"1012403403\",\"parentesco\":\"ANFITRION\",\"codigoFamilia\":111,\"fechaCreacion\":\"Nov 6, 2020 7:00:00 PM\"},{\"id\":9,\"nombres\":\"Diegottt\",\"apellidos\":\"Gutierrez\",\"documento\":\"1012403403\",\"parentesco\":\"ANFITRION\",\"codigoFamilia\":7563180,\"fechaCreacion\":\"Nov 8, 2020 12:07:07 PM\"},{\"id\":10,\"nombres\":\"Diegowww\",\"apellidos\":\"Gutierrez\",\"documento\":\"1012403403\",\"parentesco\":\"ANFITRION\",\"codigoFamilia\":7563180,\"fechaCreacion\":\"Nov 8, 2020 12:07:07 PM\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` bigint(20) NOT NULL,
  `apellidos` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `codigo_familia` int(11) NOT NULL,
  `documento` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `nombres` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `parentesco` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `apellidos`, `codigo_familia`, `documento`, `fecha_creacion`, `nombres`, `parentesco`) VALUES
(2, 'Rodriguez', 111, '1012403403', '2020-11-07 00:00:00.000000', 'Karen', 'ESPOSA'),
(3, 'Salinas', 111, '51811296', '2020-11-07 00:00:00.000000', 'Ana', 'MAMA'),
(4, 'Joven', 111, '1012403403', '2020-11-07 00:00:00.000000', 'Jeisso', 'HERMANO'),
(5, 'Gutierrez', 111, '1012403403', '2020-11-07 00:00:00.000000', 'Martin', 'HERMANO'),
(6, 'Gutierrez', 111, '1012403403', '2020-11-07 00:00:00.000000', 'Cristian', 'HERMANO'),
(7, 'Huratado', 111, '1012403403', '2020-11-07 00:00:00.000000', 'Aura', 'CUÑADO'),
(8, 'Gutierrez', 111, '1012403403', '2020-11-07 00:00:00.000000', 'fffffffffffffff', 'ANFITRION'),
(9, 'Gutierrez', 7563180, '1012403403', '2020-11-08 17:07:07.000000', 'Diegottt', 'ANFITRION'),
(10, 'Gutierrez', 7563180, '1012403403', '2020-11-08 17:07:07.000000', 'Diegowww', 'ANFITRION');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auditoria`
--
ALTER TABLE `auditoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auditoria`
--
ALTER TABLE `auditoria`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
