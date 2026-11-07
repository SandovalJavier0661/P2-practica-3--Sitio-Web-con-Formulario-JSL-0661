-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2026 a las 05:41:28
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_adidas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesorios`
--

CREATE TABLE `accesorios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) DEFAULT 50
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `accesorios`
--

INSERT INTO `accesorios` (`id`, `nombre`, `precio`, `stock`) VALUES
(1, 'Balón All Court 3.0', 899.00, 50),
(2, 'Bolsa De Bolos Con Taches', 899.00, 50),
(3, 'Bolso Originals Golf Boston', 4499.00, 50),
(4, 'Calcetines Al Tobillo Linear 3 Pares', 189.00, 50),
(5, 'Gorra Snap-Back Aniversario Club América', 749.00, 50),
(6, 'Maleta Deportiva De Lona', 1499.00, 50),
(7, 'Mochila Clásica Adicolor', 699.00, 50),
(8, 'Mochila Con Estuche Para Lápices', 699.00, 50),
(9, 'Toalla Originals All Over', 999.00, 50),
(10, 'XPL GFX Beanie', 699.00, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calzado`
--

CREATE TABLE `calzado` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) DEFAULT 50
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `calzado`
--

INSERT INTO `calzado` (`id`, `nombre`, `precio`, `stock`) VALUES
(1, 'Mocasines Handball Spezial Café', 2299.00, 50),
(2, 'Sandalias Adilette 22 Gris', 1299.00, 50),
(3, 'Tenis Adi2000 Negro', 2799.00, 50),
(4, 'Tenis Adistar XLG 2.0 Gris', 2999.00, 50),
(5, 'Tenis Campus 00s Blanco', 2299.00, 50),
(6, 'Tenis De Entrenamiento Dropset 4 Rosa', 2899.00, 50),
(7, 'Tenis Samba OG Negro', 2399.00, 50),
(8, 'Tenis Spiritain 2000 Gris', 2299.00, 50),
(9, 'Tenis Superstar Negro', 2399.00, 50),
(10, 'Zuecos Adifom IIInfinity Negro', 1299.00, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camisas`
--

CREATE TABLE `camisas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) DEFAULT 50
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `camisas`
--

INSERT INTO `camisas` (`id`, `nombre`, `precio`, `stock`) VALUES
(1, 'Jersey Local Club América 25/26', 1999.00, 50),
(2, 'Jersey Local Selección Nacional De México 26', 1999.00, 50),
(3, 'Jersey Local Tigres UANL 26/27', 1999.00, 50),
(4, 'Playera adi365 Running Community Culture', 899.00, 50),
(5, 'Playera Adicolor 3 Franjas Oversize', 799.00, 50),
(6, 'Playera Monogram AOP', 799.00, 50),
(7, 'Playera Club América Lifestyler', 1399.00, 50),
(8, 'Playera FTW Franchise', 599.00, 50),
(9, 'Playera TECHFIT Manga Larga', 899.00, 50),
(10, 'Polo A Rayas Originals Archive', 2399.00, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pantalones`
--

CREATE TABLE `pantalones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) DEFAULT 50
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pantalones`
--

INSERT INTO `pantalones` (`id`, `nombre`, `precio`, `stock`) VALUES
(1, 'Jeans Adilenium 6 Denim Azul', 2999.00, 50),
(2, 'Jeans Pierna Ancha Corte Medio Multi', 2199.00, 50),
(3, 'Pants Ultimate365 5 Bolsillos Azul', 2399.00, 50),
(4, 'Jogger Adicolor Anchos Negro', 1499.00, 50),
(5, 'Joggers Adicolor Anchos Gris', 1499.00, 50),
(6, 'Pantalones Seasonal Essentials Camo Woven Parachute Multicolor', 1399.00, 50),
(7, 'Pants Adibreak Tela French Terry Gris', 1799.00, 50),
(8, 'Pants Adibreak Tela French Terry Negro', 1799.00, 50),
(9, 'Pants Deportivos EQT Club América Negro', 1999.00, 50),
(10, 'Pants Deportivos Real Madrid Originals Violeta', 1999.00, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sudaderas`
--

CREATE TABLE `sudaderas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) DEFAULT 50
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sudaderas`
--

INSERT INTO `sudaderas` (`id`, `nombre`, `precio`, `stock`) VALUES
(1, 'Chamarra Anthem Local Club América Amarillo', 2499.00, 50),
(2, 'Chamarra Anthem Local Selección Nacional de México Verde', 2499.00, 50),
(3, 'Chamarra Anthem ZNE Liverpool FC Rosa', 2499.00, 50),
(4, 'Chamarra Deportiva 110 Aniversario Club América Azul', 2999.00, 50),
(5, 'Chamarra Deportiva DNA Club América Violeta', 1499.00, 50),
(6, 'Chamarra Deportiva Firebird Negro', 1599.00, 50),
(7, 'Sudadera Con Gorro DDLM Negro', 1499.00, 50),
(8, 'Sudadera Con Gorro Originals Cachemira Negro', 4499.00, 50),
(9, 'Sudadera Con Gorro Soft LUX Full Zip Gris', 1999.00, 50),
(10, 'Sudadera Seasonal Essentials Collegiate French Terry Cuello Redondo Negro', 1299.00, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `password`, `fecha_registro`) VALUES
(1, 'Javier', 'Javier@gmail.com', '$2y$10$8zDeMyKwH8ZydMS89cqneedzQ/3mfSRNIpERFYtEqNOOEmeIFJ4gW', '2026-11-07 04:39:49');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accesorios`
--
ALTER TABLE `accesorios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calzado`
--
ALTER TABLE `calzado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `camisas`
--
ALTER TABLE `camisas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pantalones`
--
ALTER TABLE `pantalones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sudaderas`
--
ALTER TABLE `sudaderas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accesorios`
--
ALTER TABLE `accesorios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `calzado`
--
ALTER TABLE `calzado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `camisas`
--
ALTER TABLE `camisas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `pantalones`
--
ALTER TABLE `pantalones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `sudaderas`
--
ALTER TABLE `sudaderas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
