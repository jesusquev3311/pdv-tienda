-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 11-05-2019 a las 22:02:22
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pdv_tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_05_11_163654_create_products_table', 1),
(2, '2019_05_11_170643_create_tags_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `discount` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `discount`, `created_at`, `updated_at`) VALUES
(1, 'Raichu', 'teste', 'product.jpg', 100, 0, '2019-05-12 00:11:23', '2019-05-12 00:11:23'),
(2, 'Televisor', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae, dicta. Quaerat ducimus quia eveniet reprehenderit corporis? Libero tempore ab necessitatibus ut corporis molestias eaque obcaecati. Explicabo commodi delectus nisi nulla!', 'product.jpg', 500, 10, '2019-05-12 00:53:20', '2019-05-12 00:53:20'),
(3, 'Playstation 4', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae, dicta. Quaerat ducimus quia eveniet reprehenderit corporis? Libero tempore ab necessitatibus ut corporis molestias eaque obcaecati. Explicabo commodi delectus nisi nulla!', 'product.jpg', 250, 30, '2019-05-12 00:53:44', '2019-05-12 00:53:44'),
(4, 'video', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae, dicta. Quaerat ducimus quia eveniet reprehenderit corporis? Libero tempore ab necessitatibus ut corporis molestias eaque obcaecati. Explicabo commodi delectus nisi nulla!', 'product.jpg', 230, 30, '2019-05-12 00:53:59', '2019-05-12 00:58:51'),
(5, 'Nintendo Switch', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae, dicta. Quaerat ducimus quia eveniet reprehenderit corporis? Libero tempore ab necessitatibus ut corporis molestias eaque obcaecati. Explicabo commodi delectus nisi nulla!', 'product.jpg', 350, 0, '2019-05-12 00:54:17', '2019-05-12 00:54:17'),
(6, 'PC Lenove', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae, dicta. Quaerat ducimus quia eveniet reprehenderit corporis? Libero tempore ab necessitatibus ut corporis molestias eaque obcaecati. Explicabo commodi delectus nisi nulla!', 'product.jpg', 700, 15, '2019-05-12 00:54:37', '2019-05-12 00:54:37'),
(7, 'iMac Pro', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae, dicta. Quaerat ducimus quia eveniet reprehenderit corporis? Libero tempore ab necessitatibus ut corporis molestias eaque obcaecati. Explicabo commodi delectus nisi nulla!', 'product.jpg', 1200, 0, '2019-05-12 00:54:56', '2019-05-12 00:54:56'),
(8, 'Iphone X', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae, dicta. Quaerat ducimus quia eveniet reprehenderit corporis? Libero tempore ab necessitatibus ut corporis molestias eaque obcaecati. Explicabo commodi delectus nisi nulla!', 'product.jpg', 1200, 0, '2019-05-12 00:55:07', '2019-05-12 00:55:07'),
(9, 'Laptop Acer', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae, dicta. Quaerat ducimus quia eveniet reprehenderit corporis? Libero tempore ab necessitatibus ut corporis molestias eaque obcaecati. Explicabo commodi delectus nisi nulla!', 'product.jpg', 650, 25, '2019-05-12 00:55:27', '2019-05-12 00:55:27'),
(10, 'Nvdia RX', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae, dicta. Quaerat ducimus quia eveniet reprehenderit corporis? Libero tempore ab necessitatibus ut corporis molestias eaque obcaecati. Explicabo commodi delectus nisi nulla!', 'product.jpg', 1500, 25, '2019-05-12 00:55:47', '2019-05-12 00:55:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tags`
--

INSERT INTO `tags` (`id`, `name`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'Raichu', 1, '2019-05-12 00:43:12', '2019-05-12 00:43:12'),
(2, 'Electronics', 2, '2019-05-12 00:56:36', '2019-05-12 00:56:36'),
(3, 'games', 2, '2019-05-12 00:56:47', '2019-05-12 00:56:47'),
(4, 'games', 4, '2019-05-12 00:57:03', '2019-05-12 00:57:03'),
(5, 'video', 4, '2019-05-12 00:57:11', '2019-05-12 00:57:11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
