-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-09-2022 a las 21:57:53
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `colegio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creditos` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `codigo`, `nombre`, `descripcion`, `creditos`, `created_at`, `updated_at`) VALUES
(1, 'CDL-22L', 'Lenguaje', 'Lenguaje castellano y narrativa', 3, NULL, NULL),
(2, 'CDL-22M', 'Matematicas', 'Calculo y matematica basica', 3, NULL, NULL),
(3, 'CDL-16I', 'Ingles', 'Ingles basico, tiempos verbales, verbo to be', 2, NULL, NULL),
(4, 'CDL-98H', 'Historia', 'Historia de la humanidad, guerras mundiales y civiles', 2, NULL, NULL),
(5, 'CDL-85G', 'Geografia', 'Ciencia que estudia y describe la superficie de la Tierra en su aspecto físico, actual y natural, o como lugar habitado por la humanidad', 2, NULL, NULL),
(6, 'CDL-11B', 'Biologia', 'Estudio la estructura de los seres vivos y de sus procesos vitales', 2, NULL, NULL),
(7, 'CDL-13F', 'Fisica', 'Ciencia natural que estudia los componentes fundamentales del Universo', 3, NULL, NULL),
(8, 'CDL-66Q', 'Quimica', 'Ciencia natural que estudia la composición, estructura y propiedades de la materia ya sea en forma de elementos, especies, compuestos, mezclas u otras sustancias, así como los cambios que estas experimentan durante las reacciones y su relación con la ener', 3, NULL, NULL),
(9, 'CDL-37I', 'Informatica', 'Conocimientos técnicos que se ocupan del tratamiento automático de la información por medio de computadoras.', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos_estudiantes`
--

CREATE TABLE `cursos_estudiantes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cursos_estudiantes`
--

INSERT INTO `cursos_estudiantes` (`id`, `id_estudiante`, `id_curso`, `created_at`, `updated_at`) VALUES
(1, 9, 7, NULL, NULL),
(2, 29, 2, NULL, NULL),
(3, 33, 2, NULL, NULL),
(4, 16, 3, NULL, NULL),
(5, 45, 4, NULL, NULL),
(6, 12, 9, NULL, NULL),
(7, 3, 6, NULL, NULL),
(9, 28, 6, NULL, NULL),
(10, 15, 1, NULL, NULL),
(11, 9, 1, NULL, NULL),
(12, 20, 9, NULL, NULL),
(13, 18, 5, NULL, NULL),
(14, 14, 2, NULL, NULL),
(15, 18, 1, NULL, NULL),
(16, 46, 3, NULL, NULL),
(17, 3, 1, NULL, NULL),
(18, 23, 2, NULL, NULL),
(19, 25, 2, NULL, NULL),
(20, 19, 7, NULL, NULL),
(21, 46, 6, NULL, NULL),
(22, 11, 4, NULL, NULL),
(23, 17, 4, NULL, NULL),
(24, 39, 4, NULL, NULL),
(25, 35, 6, NULL, NULL),
(26, 5, 5, NULL, NULL),
(27, 8, 3, NULL, NULL),
(28, 5, 3, NULL, NULL),
(29, 15, 2, NULL, NULL),
(30, 8, 1, NULL, NULL),
(31, 11, 9, NULL, NULL),
(32, 42, 7, NULL, NULL),
(34, 43, 3, NULL, NULL),
(35, 37, 6, NULL, NULL),
(36, 42, 5, NULL, NULL),
(37, 1, 6, NULL, NULL),
(38, 31, 3, NULL, NULL),
(39, 8, 4, NULL, NULL),
(40, 28, 2, NULL, NULL),
(41, 2, 2, NULL, NULL),
(42, 25, 1, NULL, NULL),
(43, 44, 8, NULL, NULL),
(44, 4, 1, NULL, NULL),
(45, 15, 4, NULL, NULL),
(46, 11, 5, NULL, NULL),
(47, 32, 5, NULL, NULL),
(48, 44, 2, NULL, NULL),
(49, 37, 1, NULL, NULL),
(50, 39, 6, NULL, NULL),
(51, 38, 6, NULL, NULL),
(52, 35, 1, NULL, NULL),
(53, 19, 5, NULL, NULL),
(54, 39, 3, NULL, NULL),
(55, 4, 5, NULL, NULL),
(56, 23, 4, NULL, NULL),
(57, 36, 7, NULL, NULL),
(58, 11, 4, NULL, NULL),
(59, 22, 2, NULL, NULL),
(60, 23, 7, NULL, NULL),
(61, 46, 5, NULL, NULL),
(62, 36, 1, NULL, NULL),
(63, 40, 2, NULL, NULL),
(64, 32, 2, NULL, NULL),
(65, 9, 6, NULL, NULL),
(66, 17, 1, NULL, NULL),
(67, 8, 6, NULL, NULL),
(68, 46, 7, NULL, NULL),
(69, 26, 3, NULL, NULL),
(70, 17, 5, NULL, NULL),
(71, 36, 8, NULL, NULL),
(72, 30, 6, NULL, NULL),
(73, 43, 7, NULL, NULL),
(74, 20, 7, NULL, NULL),
(75, 15, 8, NULL, NULL),
(76, 3, 8, NULL, NULL),
(77, 19, 3, NULL, NULL),
(78, 15, 6, NULL, NULL),
(79, 16, 2, NULL, NULL),
(80, 37, 5, NULL, NULL),
(81, 2, 1, NULL, NULL),
(82, 3, 4, NULL, NULL),
(83, 27, 1, NULL, NULL),
(84, 8, 5, NULL, NULL),
(85, 12, 2, NULL, NULL),
(86, 43, 2, NULL, NULL),
(87, 32, 8, NULL, NULL),
(88, 12, 8, NULL, NULL),
(89, 47, 3, NULL, NULL),
(90, 46, 8, NULL, NULL),
(91, 33, 9, NULL, NULL),
(92, 42, 3, NULL, NULL),
(93, 29, 1, NULL, NULL),
(94, 43, 4, NULL, NULL),
(95, 9, 4, NULL, NULL),
(96, 47, 4, NULL, NULL),
(97, 17, 7, NULL, NULL),
(98, 18, 2, NULL, NULL),
(99, 48, 4, NULL, NULL),
(100, 21, 6, NULL, NULL),
(101, 49, 2, NULL, NULL),
(102, 9, 8, NULL, NULL),
(103, 40, 7, NULL, NULL),
(104, 34, 3, NULL, NULL),
(105, 8, 8, NULL, NULL),
(106, 40, 3, NULL, NULL),
(107, 27, 2, NULL, NULL),
(108, 36, 2, NULL, NULL),
(109, 4, 7, NULL, NULL),
(110, 32, 1, NULL, NULL),
(111, 21, 8, NULL, NULL),
(112, 1, 3, NULL, NULL),
(113, 25, 5, NULL, NULL),
(114, 45, 5, NULL, NULL),
(115, 49, 6, NULL, NULL),
(116, 10, 4, NULL, NULL),
(117, 34, 2, NULL, NULL),
(118, 45, 1, NULL, NULL),
(119, 49, 5, NULL, NULL),
(120, 13, 2, NULL, NULL),
(121, 33, 5, NULL, NULL),
(122, 23, 6, NULL, NULL),
(123, 23, 3, NULL, NULL),
(125, 40, 8, NULL, NULL),
(126, 42, 6, NULL, NULL),
(127, 7, 7, NULL, NULL),
(128, 11, 7, NULL, NULL),
(129, 44, 4, NULL, NULL),
(130, 25, 6, NULL, NULL),
(131, 39, 5, NULL, NULL),
(132, 27, 3, NULL, NULL),
(133, 5, 1, NULL, NULL),
(134, 20, 6, NULL, NULL),
(135, 23, 1, NULL, NULL),
(136, 11, 3, NULL, NULL),
(137, 41, 3, NULL, NULL),
(138, 39, 9, NULL, NULL),
(139, 31, 2, NULL, NULL),
(140, 36, 5, NULL, NULL),
(141, 40, 1, NULL, NULL),
(142, 30, 9, NULL, NULL),
(143, 27, 5, NULL, NULL),
(144, 41, 5, NULL, NULL),
(145, 49, 3, NULL, NULL),
(146, 48, 6, NULL, NULL),
(147, 7, 5, NULL, NULL),
(148, 26, 6, NULL, NULL),
(149, 15, 5, NULL, NULL),
(150, 36, 6, NULL, NULL),
(151, 5, 7, NULL, NULL),
(152, 25, 4, NULL, NULL),
(153, 6, 5, NULL, NULL),
(154, 47, 1, NULL, NULL),
(155, 24, 2, NULL, NULL),
(156, 38, 2, NULL, NULL),
(157, 7, 9, NULL, NULL),
(158, 41, 7, NULL, NULL),
(159, 17, 2, NULL, NULL),
(160, 37, 3, NULL, NULL),
(161, 22, 7, NULL, NULL),
(162, 12, 4, NULL, NULL),
(163, 29, 6, NULL, NULL),
(164, 1, 8, NULL, NULL),
(165, 18, 3, NULL, NULL),
(166, 25, 8, NULL, NULL),
(167, 15, 3, NULL, NULL),
(168, 38, 7, NULL, NULL),
(169, 1, 7, NULL, NULL),
(170, 19, 4, NULL, NULL),
(171, 35, 3, NULL, NULL),
(172, 47, 5, NULL, NULL),
(173, 49, 8, NULL, NULL),
(174, 6, 8, NULL, NULL),
(175, 35, 9, NULL, NULL),
(176, 17, 8, NULL, NULL),
(177, 5, 4, NULL, NULL),
(178, 40, 9, NULL, NULL),
(179, 4, 4, NULL, NULL),
(180, 45, 6, NULL, NULL),
(181, 50, 1, NULL, NULL),
(182, 50, 2, NULL, NULL),
(183, 50, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `nif`, `nombres`, `apellidos`, `created_at`, `updated_at`) VALUES
(1, 'M4C3D1', 'Keith', 'Britt', NULL, NULL),
(2, 'O2P3S5', 'Stephanie', 'Goodwin', NULL, NULL),
(3, 'A8X8S2', 'Quyn', 'Randolph', NULL, NULL),
(4, 'F3Q6K1', 'Gillian', 'Cervantes', NULL, NULL),
(5, 'X3R3X2', 'Hadassah', 'Abbott', NULL, NULL),
(6, 'Y5Y2B5', 'Barbara', 'Brady', NULL, NULL),
(7, 'M7F0S4', 'Miriam', 'Mckenzie', NULL, NULL),
(8, 'I3W1X7', 'Camden', 'Ballard', NULL, NULL),
(9, 'J7H9E6', 'Brielle', 'Mcmahon', NULL, NULL),
(10, 'J4L7F1', 'Reece', 'Douglas', NULL, NULL),
(11, 'C4K4H3', 'Seth', 'Gillespie', NULL, NULL),
(12, 'M7Q2Y0', 'Thane', 'Pierce', NULL, NULL),
(13, 'U6R1I2', 'Wade', 'Newman', NULL, NULL),
(14, 'V8S1H3', 'Adam', 'Mathews', NULL, NULL),
(15, 'K7P6P4', 'Tarik', 'Clarke', NULL, NULL),
(16, 'J4D5L8', 'Chiquita', 'Stokes', NULL, NULL),
(17, 'T5N1N6', 'Roary', 'Flynn', NULL, NULL),
(18, 'B7H7L3', 'Irma', 'Nixon', NULL, NULL),
(19, 'F3F1H4', 'Ignatius', 'Torres', NULL, NULL),
(20, 'J9Y4N6', 'Aurora', 'Gibbs', NULL, NULL),
(21, 'X8K5H7', 'Keely', 'Ferguson', NULL, NULL),
(22, 'J2B1N1', 'Jason', 'Whitney', NULL, NULL),
(23, 'V8R9D1', 'Kevyn', 'Brooks', NULL, NULL),
(24, 'E7I6K2', 'Isaac', 'Knapp', NULL, NULL),
(25, 'Y2N9E8', 'Quemby', 'Yates', NULL, NULL),
(26, 'K3C9C7', 'Nita', 'Romero', NULL, NULL),
(27, 'I1J7Y0', 'Olivia', 'Shepard', NULL, NULL),
(28, 'B2M6B5', 'Tanek', 'Espinoza', NULL, NULL),
(29, 'N7X2K2', 'Gemma', 'Howell', NULL, NULL),
(30, 'R3A7B9', 'Jesse', 'Foreman', NULL, NULL),
(31, 'C8F0K3', 'Mannix', 'Keller', NULL, NULL),
(32, 'J9B5S7', 'Quinn', 'Martinez', NULL, NULL),
(33, 'L6H6H3', 'Sasha', 'Phelps', NULL, NULL),
(34, 'P5M6U1', 'Baker', 'Foley', NULL, NULL),
(35, 'F5F9P2', 'Upton', 'Atkins', NULL, NULL),
(36, 'J2B3B4', 'Elvis', 'Knox', NULL, NULL),
(37, 'O9R3P5', 'Denton', 'Holder', NULL, NULL),
(38, 'X8C1G6', 'Ezra', 'Alvarado', NULL, NULL),
(39, 'D5S1T6', 'Gavin', 'Cooke', NULL, NULL),
(40, 'Z1D1H7', 'Abdul', 'Ayers', NULL, NULL),
(41, 'N2M3G3', 'Acton', 'Cole', NULL, NULL),
(42, 'H2H2V2', 'Eliana', 'Stokes', NULL, NULL),
(43, 'O3B1K1', 'Irene', 'Finley', NULL, NULL),
(44, 'F8F9E0', 'Kylee', 'Sellers', NULL, NULL),
(45, 'I4S6X5', 'Warren', 'Browning', NULL, NULL),
(46, 'E2N3R0', 'Lucas', 'Nicholson', NULL, NULL),
(47, 'A6J1I6', 'Nola', 'Burks', NULL, NULL),
(48, 'K9W7N9', 'Ila', 'Battle', NULL, NULL),
(49, 'Y5K1T4', 'Sylvester', 'Horn', NULL, NULL),
(50, 'T2I7O5', 'Acton', 'Austin', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2014_10_12_000000_create_users_table', 2),
(6, '2022_09_11_211718_create_estudiantes_table', 3),
(7, '2022_09_11_211909_create_cursos_table', 3),
(8, '2022_09_11_212026_create_cursos_estudiantes_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `usuario`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Yonathan', 'yonathanp', 'yonathan123pr@gmail.com', NULL, '$2y$10$QgAiYWqoyPTwGMQedeHP5eeBE9XbtzKt05ytLDEouFNe.a/6S0itK', 'mwd44DOJzsEw3PUbC84v2slFjDxnhN3pPchDyJbKvvQ4HrzlkEKbn7cQPU78', '2022-09-04 05:13:46', '2022-09-12 03:54:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cursos_estudiantes`
--
ALTER TABLE `cursos_estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `cursos_estudiantes`
--
ALTER TABLE `cursos_estudiantes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
