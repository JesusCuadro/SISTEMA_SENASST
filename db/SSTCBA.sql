-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 05-06-2023 a las 17:46:24
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `SSTCBA`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(11) NOT NULL,
  `articulo` varchar(2000) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla articulos' ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `articulo`, `descripcion`) VALUES
(1, '1', 'La Formación Profesional integral que orienta el Servicio Nacional de Aprendizaje (Sena), constituye un proceso educativo teórico-práctico de carácter integral orientado al desarrollo de conocimientos técnicos, tecnológicos y de actitudes y valores para el desarrollo humano y la convivencia social, que le permiten a la persona actuar crítica y creativamente en los contextos productivo y social, es decir, en el Mundo de la Vida colombia'),
(2, '2', 'En la Formación Profesional integral participa la Comunidad Educativa constituida por aprendices, Instructores, padres de familia o acudientes, egresados, personal administrativo y de apoyo, directivos, gremios de la producción y representantes de los trabajadores, de los sectores económicos y sociales y de la comunidad científica colombia.'),
(3, '7', 'El derecho es la potestad que tiene el aprendiz de gozar de libertades y oportunidades sin exclusión por razones de género, raza, origen familiar, discapacidad, nacionalidad, lengua, religión, opinión  política o filosófica. Principalmente todas las personas tienen derecho a la educación y al desarrollo de su personalidad, garantizando a su vez, su desarrollo armónico e integral Colombia.'),
(4, '9', 'Se entiende por deber, la obligación legal, social y moral que compromete a la persona a cumplir con determinada actuación, asumiendo con responsabilidad todos sus actos, para propiciar la armonía, el respeto, la integración, el bienestar común, la sana convivencia, el servicio a los demás, la seguridad de las personas y de los bienes de la institución Colombia.'),
(5, '11', 'La etapa productiva del programa de formación es aquella en la cual el Aprendiz Sena aplica, complementa, fortalece y consolida sus competencias, en términos de conocimiento, habilidades, destrezas, actitudes y valores.\r\n\r\nLa etapa productiva debe permitirle al aprendiz aplicar en la resolución de problemas reales del sector productivo, los conocimientos, habilidades y destrezas pertinentes a las competencias del programa de formación, asumiendo estrategias y metodologías de autogestión Colombia.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id` int(11) NOT NULL,
  `rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id`, `rol`) VALUES
(1, 'Administrador'),
(2, 'Lector');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `significados`
--

CREATE TABLE `significados` (
  `ID_Significado` int(11) NOT NULL,
  `Palabra` varchar(30) NOT NULL,
  `Definicion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `significados`
--

INSERT INTO `significados` (`ID_Significado`, `Palabra`, `Definicion`) VALUES
(2, 'productiva', 'Etapa Productiva: Es aquella en la que el aprendiz aplica, complementa, fortalece y consolida sus competencias en términos de conocimiento, habilidades, destrezas, actitudes y valores. Esta etapa hace parte de la formación, con su culminación termina su formación.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblempleados`
--

CREATE TABLE `tblempleados` (
  `ID_Empleado` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Cargo` varchar(50) NOT NULL,
  `Departamento` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Telefono` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblempleados`
--

INSERT INTO `tblempleados` (`ID_Empleado`, `Nombre`, `Cargo`, `Departamento`, `Email`, `Telefono`) VALUES
(1, 'Jesus', 'Operario', 'SST', 'Jesus@gmail.com', '3124567896'),
(2, 'Ronald', 'Programador', 'IT', 'Ronald@gmail.com', '3297485937');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblentradas`
--

CREATE TABLE `tblentradas` (
  `ID_Entradas` int(11) NOT NULL,
  `ID_Implementos` int(11) NOT NULL,
  `Fecha` varchar(50) NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblentradas`
--

INSERT INTO `tblentradas` (`ID_Entradas`, `ID_Implementos`, `Fecha`, `Cantidad`) VALUES
(1, 1, '2023-06-29', 60),
(2, 2, '2023-06-01', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblimplementos`
--

CREATE TABLE `tblimplementos` (
  `ID_Implementos` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` varchar(300) NOT NULL,
  `Categoria` varchar(50) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Ubicacion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblimplementos`
--

INSERT INTO `tblimplementos` (`ID_Implementos`, `Nombre`, `Descripcion`, `Categoria`, `Cantidad`, `Ubicacion`) VALUES
(1, 'Casco', 'Para cuidar la cabeza', 'Seguridad', 60, 'Almacen'),
(2, 'Chaleco', 'Para el pecho', 'Seguridad', 55, 'Auditorio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblsalidas`
--

CREATE TABLE `tblsalidas` (
  `ID_Salidas` int(11) NOT NULL,
  `ID_Implementos` int(11) NOT NULL,
  `Fecha` varchar(50) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `ID_Empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblsalidas`
--

INSERT INTO `tblsalidas` (`ID_Salidas`, `ID_Implementos`, `Fecha`, `Cantidad`, `ID_Empleado`) VALUES
(1, 1, '2023-06-16', 20, 1),
(2, 1, '2023-06-01', 10, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblusuarios`
--

CREATE TABLE `tblusuarios` (
  `ID_Usuario` int(11) NOT NULL,
  `ID_Empleado` int(11) NOT NULL,
  `Usuario` varchar(50) NOT NULL,
  `Contraseña` varchar(50) NOT NULL,
  `rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblusuarios`
--

INSERT INTO `tblusuarios` (`ID_Usuario`, `ID_Empleado`, `Usuario`, `Contraseña`, `rol`) VALUES
(3, 1, 'admin', 'admin', 'funcionario'),
(4, 2, 'persona', 'persona', 'persona');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `nombre`, `correo`, `telefono`, `password`, `fecha`, `rol`) VALUES
(3, 'fabio', 'fabio@gmail.com', '9900258789', '12345', '2023-06-05 13:20:16', 1),
(4, 'jesus', 'jesus@gmail.com.mx', '9911165670', '12345', '2023-06-05 13:20:31', 1),
(10, 'juan', 'juan@gmail.com', '54948151', '12345', '2023-06-05 13:20:57', 1),
(11, 'yeisson', 'yeisson@gmail.com', '9975201478', '12345', '2023-06-05 13:21:14', 2),
(12, 'Coca', 'jonathan@gmail.com', '3134657483', '12345', '2023-06-05 13:41:19', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `significados`
--
ALTER TABLE `significados`
  ADD PRIMARY KEY (`ID_Significado`);

--
-- Indices de la tabla `tblempleados`
--
ALTER TABLE `tblempleados`
  ADD PRIMARY KEY (`ID_Empleado`);

--
-- Indices de la tabla `tblentradas`
--
ALTER TABLE `tblentradas`
  ADD PRIMARY KEY (`ID_Entradas`),
  ADD KEY `ID_Implementos` (`ID_Implementos`);

--
-- Indices de la tabla `tblimplementos`
--
ALTER TABLE `tblimplementos`
  ADD PRIMARY KEY (`ID_Implementos`);

--
-- Indices de la tabla `tblsalidas`
--
ALTER TABLE `tblsalidas`
  ADD PRIMARY KEY (`ID_Salidas`),
  ADD KEY `ID_Implementos` (`ID_Implementos`),
  ADD KEY `ID_Empleado` (`ID_Empleado`);

--
-- Indices de la tabla `tblusuarios`
--
ALTER TABLE `tblusuarios`
  ADD PRIMARY KEY (`ID_Usuario`),
  ADD KEY `ID_Empleado` (`ID_Empleado`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permisos` (`rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `significados`
--
ALTER TABLE `significados`
  MODIFY `ID_Significado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tblempleados`
--
ALTER TABLE `tblempleados`
  MODIFY `ID_Empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tblentradas`
--
ALTER TABLE `tblentradas`
  MODIFY `ID_Entradas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tblimplementos`
--
ALTER TABLE `tblimplementos`
  MODIFY `ID_Implementos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tblsalidas`
--
ALTER TABLE `tblsalidas`
  MODIFY `ID_Salidas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tblusuarios`
--
ALTER TABLE `tblusuarios`
  MODIFY `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tblentradas`
--
ALTER TABLE `tblentradas`
  ADD CONSTRAINT `tblentradas_ibfk_1` FOREIGN KEY (`ID_Implementos`) REFERENCES `tblimplementos` (`ID_Implementos`);

--
-- Filtros para la tabla `tblsalidas`
--
ALTER TABLE `tblsalidas`
  ADD CONSTRAINT `tblsalidas_ibfk_1` FOREIGN KEY (`ID_Implementos`) REFERENCES `tblimplementos` (`ID_Implementos`),
  ADD CONSTRAINT `tblsalidas_ibfk_2` FOREIGN KEY (`ID_Empleado`) REFERENCES `tblempleados` (`ID_Empleado`);

--
-- Filtros para la tabla `tblusuarios`
--
ALTER TABLE `tblusuarios`
  ADD CONSTRAINT `tblusuarios_ibfk_1` FOREIGN KEY (`ID_Empleado`) REFERENCES `tblempleados` (`ID_Empleado`);

--
-- Filtros para la tabla `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `permisos` FOREIGN KEY (`rol`) REFERENCES `permisos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;