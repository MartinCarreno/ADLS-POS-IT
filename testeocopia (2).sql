-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-12-2023 a las 13:02:42
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `testeocopia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodegas`
--

CREATE TABLE `bodegas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `capacidad` float NOT NULL COMMENT 'metros cúbicos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bodegas`
--

INSERT INTO `bodegas` (`id`, `nombre`, `capacidad`) VALUES
(101, 'Alacena', 8),
(102, 'Freezer', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boletassii`
--

CREATE TABLE `boletassii` (
  `id` int(11) NOT NULL,
  `importeImpuesto` int(11) NOT NULL,
  `fechaHoraCompra` datetime NOT NULL,
  `idVenta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `boletassii`
--

INSERT INTO `boletassii` (`id`, `importeImpuesto`, `fechaHoraCompra`, `idVenta`) VALUES
(101, 4746, '2023-12-03 21:51:21', 101),
(102, 3116, '2023-12-07 21:51:21', 102);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'Curtidos'),
(2, 'Lácteos'),
(3, 'Cereales'),
(4, 'Aceites'),
(5, 'Bebidas Alcohólicas'),
(6, 'Bebidas no Alcohólicas'),
(7, 'Carnes'),
(8, 'Alimentos Vegetales'),
(9, 'Bebidas Vegetales'),
(10, 'Bebidas Gaseosas'),
(11, 'Chocolates'),
(12, 'Café'),
(13, 'Cuidado del Cabello'),
(14, 'Cuidado Personal'),
(15, 'Lavandería'),
(16, 'Cuidado Bucal'),
(17, 'Pastas'),
(18, 'Salsas'),
(19, 'Quesos'),
(20, 'Enlatados'),
(21, 'Salsas Vegetales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriaproducto`
--

CREATE TABLE `categoriaproducto` (
  `idProducto` int(11) DEFAULT NULL,
  `idCategoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `categoriaproducto`
--

INSERT INTO `categoriaproducto` (`idProducto`, `idCategoria`) VALUES
(101, 1),
(102, 1),
(103, 2),
(104, 2),
(105, 3),
(106, 4),
(107, 5),
(108, 6),
(109, 7),
(110, 7),
(111, 8),
(112, 9),
(113, 10),
(114, 10),
(116, 10),
(117, 10),
(118, 11),
(119, 12),
(120, 13),
(121, 14),
(122, 15),
(123, 16),
(124, 17),
(125, 18),
(128, 19),
(129, 2),
(130, 3),
(131, 20),
(133, 6),
(134, 7),
(135, 7),
(136, 21),
(137, 9),
(160, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `rut` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `domicilio` varchar(255) DEFAULT NULL,
  `celular` int(11) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`rut`, `nombre`, `domicilio`, `celular`, `correo`, `activo`) VALUES
(21041731, 'Leonardo Cerda', 'Miraflores #20, Longaví\r\n', 934186642, 'lcerda22@alumnos.utalca.cl', 1),
(214594560, 'Lucas Barra', 'Calle El Corte #1313', 936320816, 'lbarra22@alumnos.utalca.cl', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `existenciasbodega`
--

CREATE TABLE `existenciasbodega` (
  `idProducto` int(11) NOT NULL,
  `idBodega` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `surtido` datetime NOT NULL,
  `notas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `existenciasbodega`
--

INSERT INTO `existenciasbodega` (`idProducto`, `idBodega`, `cantidad`, `surtido`, `notas`) VALUES
(101, 102, 14, '2023-11-24 00:00:00', ''),
(102, 102, 11, '2023-11-25 00:00:00', ''),
(103, 102, 12, '2023-11-22 00:00:00', ''),
(104, 102, 5, '2023-11-25 00:00:00', ''),
(105, 101, 15, '2023-11-26 00:00:00', ''),
(106, 101, 16, '2023-11-30 00:00:00', ''),
(107, 101, 12, '2023-11-22 00:00:00', ''),
(108, 101, 15, '2023-11-24 00:00:00', ''),
(109, 102, 4, '2023-11-26 00:00:00', ''),
(110, 102, 16, '2023-11-22 00:00:00', ''),
(111, 102, 9, '2023-11-27 00:00:00', ''),
(112, 102, 20, '2023-11-26 00:00:00', ''),
(113, 101, 17, '2023-11-22 00:00:00', ''),
(114, 101, 17, '2023-11-24 00:00:00', ''),
(116, 101, 14, '2023-11-23 00:00:00', ''),
(117, 101, 3, '2023-11-29 00:00:00', ''),
(118, 101, 19, '2023-11-29 00:00:00', ''),
(119, 101, 5, '2023-11-27 00:00:00', ''),
(120, 101, 2, '2023-11-24 00:00:00', ''),
(121, 101, 12, '2023-11-28 00:00:00', ''),
(122, 101, 8, '2023-11-24 00:00:00', ''),
(123, 101, 9, '2023-11-25 00:00:00', ''),
(124, 101, 4, '2023-11-25 00:00:00', ''),
(125, 101, 20, '2023-11-28 00:00:00', ''),
(128, 101, 20, '2023-11-30 00:00:00', ''),
(129, 102, 2, '2023-11-25 00:00:00', ''),
(130, 101, 8, '2023-11-25 00:00:00', ''),
(131, 101, 18, '2023-11-24 00:00:00', ''),
(133, 101, 13, '2023-11-27 00:00:00', ''),
(134, 102, 11, '2023-11-27 00:00:00', ''),
(135, 102, 5, '2023-11-25 00:00:00', ''),
(136, 101, 9, '2023-11-27 00:00:00', ''),
(137, 102, 14, '2023-11-26 00:00:00', ''),
(160, 102, 5, '2023-11-26 00:00:00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `idProveedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `precio`, `descripcion`, `idProveedor`) VALUES
(101, 'Vienesas Tradicionales 12un.', 1990, 'Salchichas tradicionales producidas por PF Alimentos (12 unidades)', 101),
(102, 'Vienesas Sureñas 8un.', 1500, 'Vienesas tradicionales producidas en Chile por PF Alimentos (8 unidades)', 101),
(103, 'Leche Descremada 1lt.', 1290, 'Leche descremada producida por Colun (1 litro)', 102),
(104, 'Yogurt Natural 200gr.', 790, 'Yogurt natural producido por Colun (200 gramos)', 102),
(105, 'Arroz Integral 1kg.', 2190, 'Arroz integral de alta calidad ofrecido por Walmart (1 kilogramo)', 103),
(106, 'Aceite de Oliva Extra Virgen 1,2lt.', 3990, 'Aceite de oliva extra virgen de origen español disponible en Walmart (1200 ml)', 103),
(107, 'Cerveza Lager 330ml.', 990, 'Cerveza Lager de la marca CCU (330 ml)', 104),
(108, 'Bebida de Manzana 1lt.', 890, 'Bebida de manzana refrescante producida por CCU (1 litro)', 104),
(109, 'Filete de Pollo 500gr.', 2490, 'Filete de pollo fresco y jugoso de Agrosuper (500 gramos)', 105),
(110, 'Carne Molida 1kg.', 3990, 'Carne molida de res de primera calidad ofrecida por Agrosuper (1 kilogramo)', 105),
(111, 'Hamburguesa Vegetariana 2un.', 1990, 'Hamburguesa vegetariana a base de plantas ofrecida por NOTCO (2 unidades)', 106),
(112, 'Leche de Almendras 1lt', 2490, 'Leche de almendras sin lactosa y rica en nutrientes de NOTCO (1 litro)', 106),
(113, 'Coca-Cola Original 591ml', 990, 'Refrescante Coca-Cola Original (591 ml)', 107),
(114, 'Sprite 1lt', 1590, 'Bebida gaseosa cítrica y burbujeante: Sprite (1 litro)', 107),
(116, 'Pepsi 500ml.', 990, 'Pepsi, la bebida cola de sabor refrescante (500 ml)', 108),
(117, 'Canada Dry Lata 350ml.', 890, 'Canada Dry lata', 108),
(118, 'Chocolate KitKat 45gr.', 790, 'Delicioso chocolate KitKat de Nestlé (60 gramos)', 109),
(119, 'Café Instantáneo 200gr', 2990, 'Café instantáneo de alta calidad de Nestlé (200 gramos)', 109),
(120, 'Shampoo Clear 300ml.', 2990, 'Shampoo Clear para un cabello saludable de Unilever (300 ml)', 110),
(121, 'Desodorante Axe 150ml.', 1990, 'Desodorante Axe para hombres con fragancia duradera de Unilever (150 ml)', 110),
(122, 'Detergente Ariel 3lt.', 5990, 'Detergente líquido Ariel para una limpieza eficaz (3 litros)', 111),
(123, 'Pasta de Dientes Crest 150gr.', 2490, 'Pasta de dientes Crest para dientes más blancos y saludables (150 gramos)', 111),
(124, 'Fideos Spaghetti 500gr.', 1290, 'Fideos Spaghetti de alta calidad de Carozzi (500 gramos)', 112),
(125, 'Salsa de Tomate 350gr.', 890, 'Salsa de tomate Carozzi para acompañar tus platos favoritos (350 gramos)', 112),
(128, 'Queso Gouda 250gr.', 2590, 'Queso Gouda suave y cremoso de Colun (250 gramos)', 102),
(129, 'Mantequilla 200gr.', 1290, 'Mantequilla fresca y de alta calidad de Colun (200 gramos)', 102),
(130, 'Pasta de Trigo 1kg.', 990, 'Pasta de trigo durum de origen italiano ofrecida por Walmart (1 kilogramo)', 103),
(131, 'Aceitunas Verdes 300gr.', 1290, 'Aceitunas verdes de calidad premium ofrecidas por Walmart (300 gramos)', 103),
(133, 'Agua Mineral 1,5lt.', 990, 'Agua mineral purificada y refrescante de CCU (1.5 litros)', 104),
(134, 'Chuletas de Cerdo 1kg.', 4990, 'Chuletas de cerdo tiernas y jugosas de Agrosuper (1 kilogramo)', 105),
(135, 'Salchichas de Pavo 300gr.', 2490, 'Salchichas de pavo de calidad premium ofrecidas por Agrosuper (300 gramos)', 105),
(136, 'Mayonesa Vegana 250ml.', 1990, 'Mayonesa vegana a base de plantas de NOTCO (250 ml)', 106),
(137, 'Leche de Avena 1lt', 2490, 'Leche de avena sin lactosa y enriquecida de NOTCO (1 litro)', 106),
(160, 'Mantequilla 200gr.', 1390, 'Mantequilla fresca y de alta calidad de Colun (200 gramos)', 102);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productosenventa`
--

CREATE TABLE `productosenventa` (
  `idVenta` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productosenventa`
--

INSERT INTO `productosenventa` (`idVenta`, `idProducto`, `cantidad`) VALUES
(101, 101, 1),
(101, 129, 1),
(101, 125, 2),
(101, 110, 1),
(102, 107, 1),
(102, 110, 1),
(102, 112, 1),
(102, 105, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL,
  `nombreEmpresa` varchar(255) NOT NULL,
  `domicilio` varchar(255) NOT NULL,
  `celular` varchar(13) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `notas` text NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `nombreEmpresa`, `domicilio`, `celular`, `correo`, `notas`, `activo`) VALUES
(101, 'PF Alimentos', 'Av. El Bosque 123, Santiago, Chile', '+56912345678', 'info@pfalimentos.cl', 'Proveedor de alimentos procesados', 1),
(102, 'Colun', 'Av. Manuel Montt 456, Osorno, Chile', '+56987654321', 'contacto@colun.cl', 'Proveedor de lácteos y productos derivados', 1),
(103, 'Walmart', 'Av. Kennedy 789, Las Condes, Santiago, Chile', '+56923456789', 'clientes@walmart.cl', 'Proveedor de productos de supermercado', 1),
(104, 'CCU', 'Calle San Diego 321, Santiago, Chile', '+56998765432', 'contacto@ccu.cl', 'Proveedor de bebidas alcohólicas y no alcohólicas', 1),
(105, 'Agrosuper', 'Ruta 5 Sur Km 1180, Rancagua, Chile', '+56965432109', 'contacto@agrosuper.cl', 'Proveedor de productos cárnicos y avícolas', 1),
(106, 'NOTCO', 'Av. Vitacura 2465, Las Condes, Santiago, Chile', '+56909876543', 'hola@notco.com', 'Proveedor de alimentos vegetales alternativos', 1),
(107, 'Coca Cola Company', 'Calle Principal 123', '+56911223344', 'atencion@cocacolacompany.com', 'Proveedor de bebidas', 1),
(108, 'PepsiCo', 'Avenida Central 456', '+56922334455', 'ventas@pepsi.com', 'Proveedor de refrescos', 1),
(109, 'Nestlé', 'Paseo de la Colina 789', '+56933445566', 'productos@nestle.cl', 'Proveedor de alimentos', 1),
(110, 'Unilever', 'Boulevard del Sabor 321', '+56944556677', 'unilever@unilever.cl', 'Proveedor de productos de cuidado personal', 0),
(111, 'Procter & Gamble', 'Avenida de la Burbuja 654', '+56955667788', 'chileventas@pg.com', 'Proveedor de productos de limpieza', 1),
(112, 'Unilever', 'Av. Andrés Bello 2687, Providencia, Santiago, Chile', '+56966778899', 'contacto@unilever.cl', 'Proveedor de productos de cuidado personal y alimentos', 1),
(113, 'Carozzi', 'Av. Vicuña Mackenna 1966, Ñuñoa, Santiago, Chile', '+56977889900', 'contacto@carozzi.cl', 'Proveedor de alimentos y productos de consumo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

CREATE TABLE `vendedores` (
  `rut` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `domicilio` varchar(255) NOT NULL,
  `celular` int(11) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `login` varchar(10) NOT NULL,
  `clave` varchar(16) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vendedores`
--

INSERT INTO `vendedores` (`rut`, `nombre`, `domicilio`, `celular`, `correo`, `login`, `clave`, `activo`) VALUES
(209215748, 'José Cáceres', 'Av. Los Betos #420', 949905836, 'bcaceres22@alumnos.utalca.cl', '20921574', 'beto123', 1),
(213853317, 'Martín Carreño\r\n', 'Pasaje Corte Pichilemu #133', 984485801, 'mcarreno22@alumnos.utalca.cl', '213853317', 'martin321', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id` int(11) NOT NULL,
  `monto` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `rutCliente` int(11) DEFAULT NULL,
  `rutVendedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id`, `monto`, `fecha`, `rutCliente`, `rutVendedor`) VALUES
(101, 24980, '2023-12-03 21:51:21', 21041731, 209215748),
(102, 16400, '2023-12-07 21:51:21', 214594560, 213853317);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bodegas`
--
ALTER TABLE `bodegas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `boletassii`
--
ALTER TABLE `boletassii`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fechaHoraCompra` (`fechaHoraCompra`),
  ADD UNIQUE KEY `fechaHoraCompra_2` (`fechaHoraCompra`),
  ADD KEY `idVenta` (`idVenta`),
  ADD KEY `fechaHoraCompra_3` (`fechaHoraCompra`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoriaproducto`
--
ALTER TABLE `categoriaproducto`
  ADD KEY `idCategoria` (`idCategoria`),
  ADD KEY `idProducto` (`idProducto`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`rut`);

--
-- Indices de la tabla `existenciasbodega`
--
ALTER TABLE `existenciasbodega`
  ADD KEY `idProducto` (`idProducto`),
  ADD KEY `idBodega` (`idBodega`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProveedor` (`idProveedor`);

--
-- Indices de la tabla `productosenventa`
--
ALTER TABLE `productosenventa`
  ADD KEY `idProducto` (`idProducto`),
  ADD KEY `idVenta` (`idVenta`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`rut`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fecha` (`fecha`),
  ADD KEY `rutCliente` (`rutCliente`),
  ADD KEY `rutVendedor` (`rutVendedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `boletassii`
--
ALTER TABLE `boletassii`
  ADD CONSTRAINT `boletassii_ibfk_1` FOREIGN KEY (`idVenta`) REFERENCES `venta` (`id`),
  ADD CONSTRAINT `boletassii_ibfk_2` FOREIGN KEY (`fechaHoraCompra`) REFERENCES `venta` (`fecha`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `categoriaproducto`
--
ALTER TABLE `categoriaproducto`
  ADD CONSTRAINT `categoriaproducto_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `categoriaproducto_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `existenciasbodega`
--
ALTER TABLE `existenciasbodega`
  ADD CONSTRAINT `existenciasbodega_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`id`),
  ADD CONSTRAINT `existenciasbodega_ibfk_2` FOREIGN KEY (`idBodega`) REFERENCES `bodegas` (`id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`idProveedor`) REFERENCES `proveedores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productosenventa`
--
ALTER TABLE `productosenventa`
  ADD CONSTRAINT `productosenventa_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`id`),
  ADD CONSTRAINT `productosenventa_ibfk_2` FOREIGN KEY (`idVenta`) REFERENCES `venta` (`id`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`rutCliente`) REFERENCES `clientes` (`rut`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`rutVendedor`) REFERENCES `vendedores` (`rut`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
