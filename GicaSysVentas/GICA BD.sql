-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 16-11-2019 a las 16:58:04
-- Versión del servidor: 8.0.17
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
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `name`) VALUES
(1, 'admin', '12345678', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carro`
--

CREATE TABLE `carro` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(1, 'Ensayos en agregados'),
(2, 'Ensayos en concreto'),
(3, 'Extraccion, tallado y ensayo de comprension de testigos de diamantino en laboratorio'),
(4, 'Ensayos en mecanica de suelos'),
(5, 'Ensayos en agregados para pavimento'),
(6, 'Ensayos quimicos en suelos y agregados'),
(7, 'Ensayos quimicos en agua'),
(8, 'Ensayos en asfalto'),
(9, 'Ensayos en albañileria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `numCelular` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `username`, `password`, `name`, `correo`, `numCelular`) VALUES
(1, '123', '123456', '123', '', ''),
(3, '123', '123', '123', '', ''),
(6, 'test', 'test', 'test', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `monto` float NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `comprobante` varchar(255) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fecha` datetime NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `price` float NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `descargable` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `price`, `imagen`, `name`, `id_categoria`, `oferta`, `descargable`) VALUES
(57, 40, '', 'Análisis granulométrico (F, G) NTP: 400.012:13 ', 0, 0, ''),
(58, 50, '', 'Análisis granulométrico (Glb) NTP: 400.012:13', 0, 0, ''),
(59, 30, '', 'Impurezas orgánicas (Fino) NTP: 400.024:11', 0, 0, ''),
(60, 80, '', 'Terrones de Arcilla de Partículas Friables (F o G) NTP: 400.015:13 ', 0, 0, ''),
(61, 50, '', 'Material más fino malla 200 (F o G) NTP: 400.018:13', 0, 0, ''),
(62, 180, '', 'Inalterabilidad (F o G) con sulfato de magnesio NTP: 400.016:11', 0, 0, ''),
(63, 220, '', 'Inalterabilidad (Glb) con sulfato de magnesio NTP: 400.016:11', 0, 0, ''),
(64, 35, '', 'Peso Específico y absorción(F) NTP: 400.022:13 ', 0, 0, ''),
(65, 35, '', 'Peso Específico y absorción(G) NTP: 400.021:13', 0, 0, ''),
(66, 70, '', 'Peso Específico y absorción (Glb) NTP: ­---', 0, 0, ''),
(67, 15, '', 'Contenido de humedad (F, G o Glb) NTP: 339.185:13', 0, 0, ''),
(68, 150, '', 'Desgaste por abrasión (F o G) NTP: 400.019:14 / 400.020:14', 0, 0, ''),
(69, 40, '', 'Peso unitario (F, G o Glb) NTP: 400.017:11 (Rev. 2016)', 0, 0, ''),
(70, 250, '', 'Diseño de mezclas sin aditivos NTP: ACI 211, Fuller y Thompson, M F, etc. S', 0, 0, ''),
(71, 300, '', 'Diseño de mezclas con aditivos NTP: ACI 211, Fuller y Thompson, M F, etc.', 0, 0, ''),
(72, 150, '', 'Verificación de diseño NTP: ---', 0, 0, ''),
(73, 45, '', 'Exudación NTP: 339.077:13', 0, 0, ''),
(74, 45, '', 'Peso por metro cúbico, rendimiento, cont aire NTP: 339.046:08 (Rev. 2013)', 0, 0, ''),
(75, 50, '', 'Método de presión whashington NTP:  339.083 03', 0, 0, ''),
(76, 0, '', 'Tiempo fraguado NTP: 339.082:11 (Rev. 2016) (*Sin Precio*)', 0, 0, ''),
(77, 0, '', 'Control de calidad de concreto fresco en obra NTP: Varias (*Sin Precio*)', 0, 0, ''),
(78, 10, '', 'Compresión (Mínimo 5 prob) NTP: 339.034:15', 0, 0, ''),
(79, 18, '', 'Compresión tarifa presencias (Ensayo el mismo día) NTP: 339.034:15', 0, 0, ''),
(80, 30, '', 'Tracción por compresión diametral', 0, 0, ''),
(81, 0, '', 'Esclerometría NTP: 339.181:13 (*Sin Precio*)', 0, 0, ''),
(82, 200, '', 'Extracción, tallado y ensayo de compresión de testigos diamantinos, broca de 3\" en laboratorio NTP: 339.059:11 (Rev. 2016)', 0, 0, ''),
(83, 250, '', 'Extracción, tallado y ensayo de compresión de testigos diamantinos, broca de 4\" en laboratorio NTP: 339.059:11 (Rev. 2016)', 0, 0, ''),
(84, 0, '', 'Extracción, tallado y ensayo de compresión de testigos diamantinos en obra NTP: 339.059:11 (Rev. 2016) (*Sin Precio*)', 0, 0, ''),
(85, 5, '', 'Temperatura del concreto fresco NTP: 339.184:13', 0, 0, ''),
(86, 60, '', 'Asentamiento (3 resultados - lab.) NTP: 339.035:15', 0, 0, ''),
(87, 35, '', 'Corte testigo (Tallado dos lados ) NTP: ----', 0, 0, ''),
(88, 10, '', 'Refrentado con yeso o azufre y ensayo a compresión NTP: REF. 339.037:15', 0, 0, ''),
(89, 100, '', 'Extracción de testigo diamantino de 2 pulg en M. asfáltica en laboratorio NTP: REF. 339.037:15 ', 0, 0, ''),
(90, 125, '', 'Extracción de testigo diamantino de 4 pulg en M. asfáltica en laboratorio NTP: REF. 339.037:15', 0, 0, ''),
(91, 150, '', 'Extracción de testigo diamantino de 6 pulg en M. asfáltica en laboratorio NTP: REF. 339.037:15', 0, 0, ''),
(92, 35, '', 'Compresión de testigo diamantino (No incluye tallado) NTP: REF. 339.037:15', 0, 0, ''),
(93, 60, '', 'Densidad, absorción y % de vacíos concreto endurecido (No incluye tallado) NTP: 339.187:03 (Rev. 2013)', 0, 0, ''),
(94, 140, '', 'Extracción y tallado de 2 pulg (No incluye compresión) en laboratorio NTP: 339.059:11 (Rev. 2016)', 0, 0, ''),
(95, 215, '', 'Extracción y tallado de 4 pulg (No incluye compresión) en laboratorio NTP: 339.059:11 (Rev. 2016)', 0, 0, ''),
(96, 110, '', 'Extracción 2 pulg (No incluye tallado ni compresión) en laboratorio NTP: 339.059:11 (Rev. 2016)', 0, 0, ''),
(97, 180, '', 'Extracción 4 pulg (No incluye tallado ni compresión) en laboratorio NTP: 339.059:11 (Rev. 2016)', 0, 0, ''),
(98, 230, '', 'Extracción 6 pulg (No incluye tallado ni compresión) en laboratorio NTP: 339.059:11 (Rev. 2016)', 0, 0, ''),
(99, 0, '', 'Servicios Varios LAC NTP: ---- (*Sin Precio*)', 0, 0, ''),
(100, 15, '', 'Contenido de humedad NTP: 339.127:98 (Rev. 2014)', 0, 0, ''),
(101, 50, '', 'Análisis granulométrico por tamizado NTP: 339.128:99 (Rev. 2014)', 0, 0, ''),
(102, 20, '', 'Límite líquido NTP: 339.129:99 (Rev. 2014)', 0, 0, ''),
(103, 20, '', 'Límite plástico NTP: 339.129:99 (Rev. 2014)', 0, 0, ''),
(104, 45, '', 'Límite de contracción NTP: 339.140:99 (Rev. 2014)', 0, 0, ''),
(105, 30, '', 'Peso volumétrico de suelos cohesivos NTP: 339.139:99 (Rev. 2014)', 0, 0, ''),
(106, 35, '', 'Gravedad específica de sólidos NTP: 339.131:99 (Rev. 2014)', 0, 0, ''),
(107, 150, '', 'Densidad natural, cono de arena 6\" (Incluye 5 puntos) (1) NTP: 339.143:99 (Rev. 2014)', 0, 0, ''),
(108, 70, '', 'Densidad mínima NTP: 339.138:99 (Rev. 2014)', 0, 0, ''),
(109, 130, '', 'Densidad máxima (Método seco) NTP: 339.137:99 (Rev. 2014)', 0, 0, ''),
(110, 150, '', 'Densidad máxima (Método húmedo) NTP: 339.137:99 (Rev. 2014)', 0, 0, ''),
(111, 250, '', 'Valor relativo de soporte CBR (Incluye próctor) NTP: 339.145:99 (Rev. 2014)', 0, 0, ''),
(112, 70, '', 'Próctor estándar NTP: 339.142:99 (Rev. 2014)', 0, 0, ''),
(113, 85, '', 'Próctor modificado NTP: 339.141:99 (Rev. 2014)', 0, 0, ''),
(114, 15, '', 'Contenido de humedad con Speedy NTP: 339.250 02 (Rev. 2015)', 0, 0, ''),
(115, 250, '', 'Corte directo NTP: 339.171 02', 0, 0, ''),
(116, 0, '', 'Compresión No Confinada NTP: 339.167 02 (Rev. 2015) (*A Cotizar*)', 0, 0, ''),
(117, 370, '', 'Corte Directo (No incluye ensayos necesarios previos) NTP: 339.171 02', 0, 0, ''),
(118, 490, '', 'Compresión Triaxial UU 2.8” de diámetro NTP: 339.164:01 ', 0, 0, ''),
(119, 600, '', 'Compresión Triaxial UU 4.0” de diámetro NTP: 339.164:01', 0, 0, ''),
(120, 1000, '', 'Compresión Triaxial CU 2.8” de diámetro NTP: 339.166:01 (Rev. 2015)', 0, 0, ''),
(121, 1350, '', 'Compresión Triaxial CU 4.0” de diámetro NTP: 339.166:01 (Rev. 2015)', 0, 0, ''),
(122, 1650, '', 'Compresión Triaxial CD 2.8” de diámetro NTP: ----', 0, 0, ''),
(123, 2150, '', 'Compresión Triaxial CD 4.0” de diámetro NTP: ----', 0, 0, ''),
(124, 0, '', 'Consolidación Unidimensional NTP: 339.154 01 (Rev. 2015) (*A Cotizar*)', 0, 0, ''),
(125, 0, '', 'Expansión (Libre o carga constante) NTP:  339.170 02 (Rev. 2015) (*A Cotizar*)', 0, 0, ''),
(126, 0, '', 'Expansión Controlada NTP: 339.170 02 (Rev. 2015) (*A Cotizar*)', 0, 0, ''),
(127, 0, '', 'Colapso NTP: 339.163:01 (Rev. 2015) (*A Cotizar*)', 0, 0, ''),
(128, 250, '', 'S.P.T. por metro de profundidad NTP: 339.133:99 (Rev. 2014) ', 0, 0, ''),
(129, 90, '', 'Contenido de materia orgánica NTP: ----', 0, 0, ''),
(130, 0, '', 'Estudio de suelos NTP: E.050 (*Sin Precio*)', 0, 0, ''),
(131, 0, '', 'Servicios varios NTP: ---- (*Sin Precio*)', 0, 0, ''),
(132, 90, '', 'Equivalente de arena NTP: 339.146:2000 (Rev. 2014)', 0, 0, ''),
(133, 50, '', 'Partículas chatas y alargadas NTP: 400.040 99 (Rev. 2015)', 0, 0, ''),
(134, 50, '', 'Caras fracturadas NTP: ----', 0, 0, ''),
(135, 75, '', 'Sales solubles totales NTP: 339.152 02 (Rev. 2015)', 0, 0, ''),
(136, 75, '', 'Contenido de sulfatos solubles NTP: 339.178 02 (Rev. 2015)', 0, 0, ''),
(137, 75, '', 'Contenido de cloruros solubles NTP: 339.177 02 (Rev. 2015)', 0, 0, ''),
(138, 60, '', 'Determinación del pH NTP: ----', 0, 0, ''),
(139, 300, '', 'Control de calidad de agua (Incluye: contenido de residuo sólido, sulfatos, cloruros, sólidos en suspensión, pH) NTP: 339.088:14', 0, 0, ''),
(140, 70, '', 'Contenido de sales solubles totales (Residuo sólido) NTP: 339.071:09', 0, 0, ''),
(141, 75, '', 'Contenido de sulfatos NTP: 339.227:16', 0, 0, ''),
(142, 75, '', 'Contenido de cloruros NTP: 339.076:09', 0, 0, ''),
(143, 35, '', 'Sólidos en suspensión NTP: ----', 0, 0, ''),
(144, 45, '', 'Determinación del pH NTP: 334.190:16', 0, 0, ''),
(145, 150, '', 'Lavado asfáltico (No incluye tricloroetileno) NTP: ----', 0, 0, ''),
(146, 200, '', 'Lavado asfáltico (Incluye tricloroetileno) NTP: ----', 0, 0, ''),
(147, 40, '', 'Estabilidad Marshall (Incluye: Estabilidad y flujo, no incluye elaboración de briqueta) (costo por briqueta) NTP: ----', 0, 0, ''),
(148, 190, '', 'Estabilidad Marshall (Incluye: elaboración de briqueta, estabilidad, flujo, % de vacíos) (costo por briqueta) NTP: ', 0, 0, ''),
(149, 45, '', 'Densidad de briqueta de mezcla asfáltica NTP: ----', 0, 0, ''),
(150, 80, '', 'Densidad máxima teórica (Rice) NTP: ----', 0, 0, ''),
(151, 125, '', 'Porcentaje de vacíos (Incluye: densidad de espécimen y densidad máxima teórica (Rice)) (Costo por briqueta) NTP: ----', 0, 0, ''),
(152, 1800, '', 'Diseño de mezcla asfáltica en caliente (Diseño Marshall) NTP: ----', 0, 0, ''),
(153, 120, '', 'Elaboración de briquetas (Juego de 3) NTP: ----', 0, 0, ''),
(154, 650, '', 'Diseño mezcla en frío (Teórico, por áreas equivalentes)', 0, 0, ''),
(155, 30, '', 'Compresión de bloques de concreto NTP: 399.604:02 (Rev. 2015)', 0, 0, ''),
(156, 25, '', 'Compresión de ladrillos de arcilla y/o concreto NTP: 399.613 05', 0, 0, ''),
(157, 20, '', 'Dimensionamiento NTP: 399.613 05', 0, 0, ''),
(158, 25, '', 'Absorción y densidad cada uno NTP: 399.613 05', 0, 0, ''),
(159, 45, '', 'Compresión de pilas de ladrillos NTE 070', 0, 0, ''),
(160, 60, '', 'Elaboración y compresión de pilas de ladrillos NTE 071', 0, 0, ''),
(161, 50, '', 'Eflorescencia NTP: 399.613 05', 0, 0, ''),
(162, 30, '', 'Succión NTP: 399.613 05 ', 0, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_compra`
--

CREATE TABLE `productos_compra` (
  `id` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `monto` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos_compra`
--

INSERT INTO `productos_compra` (`id`, `id_compra`, `id_producto`, `cantidad`, `monto`) VALUES
(1, 3, 5, 7, 400),
(2, 3, 4, 4, 1000),
(3, 3, 3, 4, 1200),
(4, 3, 2, 4, 200),
(5, 3, 1, 4, 1000),
(6, 4, 5, 1, 400),
(7, 4, 7, 1, 1000),
(8, 5, 5, 1, 400),
(9, 5, 4, 1, 1000),
(10, 5, 7, 1, 1000),
(11, 6, 5, 1, 400),
(12, 7, 7, 1, 1000),
(13, 7, 2, 1, 200),
(14, 7, 1, 1, 1000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos_compra`
--
ALTER TABLE `productos_compra`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `carro`
--
ALTER TABLE `carro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT de la tabla `productos_compra`
--
ALTER TABLE `productos_compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
