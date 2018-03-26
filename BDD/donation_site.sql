-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-03-2018 a las 14:30:32
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `donation_site`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'Afganistán'),
(2, 'Africa del Sur'),
(3, 'Albania'),
(4, 'Alemania'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antártida'),
(9, 'Antigua y Barbuda'),
(10, 'Antillas Holandesas'),
(11, 'Arabia Saudí­'),
(12, 'Argelia'),
(13, 'Argentina'),
(14, 'Armenia'),
(15, 'Aruba'),
(16, 'Australia'),
(17, 'Austria'),
(18, 'Azerbaiyán'),
(19, 'Bélgica'),
(20, 'Bahamas'),
(21, 'Bahrein'),
(22, 'Bangladesh'),
(23, 'Barbados'),
(24, 'Belice'),
(25, 'Benin'),
(26, 'Bermudas'),
(27, 'Bielorrusia'),
(28, 'Birmania'),
(29, 'Bolivia'),
(30, 'Bosnia-Herzegovina'),
(31, 'Botswana'),
(32, 'Bouvet'),
(33, 'Brasil'),
(34, 'Brunei'),
(35, 'Bulgaria'),
(36, 'Burkina Faso'),
(37, 'Burundi'),
(38, 'Bután'),
(39, 'Camboya'),
(40, 'Camerún'),
(41, 'Canadá'),
(42, 'Chad'),
(43, 'Chequia'),
(44, 'Chile'),
(45, 'China'),
(46, 'Chipre'),
(47, 'Ciudad del Vaticano'),
(48, 'Colombia'),
(49, 'Comores'),
(50, 'Congo'),
(51, 'Corea del Norte'),
(52, 'Corea del Sur'),
(53, 'Costa Rica'),
(54, 'Costa de Marfil'),
(55, 'Croacia'),
(56, 'Cuba'),
(57, 'Dinamarca'),
(58, 'Dominica'),
(59, 'EEUU de América'),
(60, 'Ecuador'),
(61, 'Egipto'),
(62, 'El Salvador'),
(63, 'Emiratos Árabes Unidos'),
(64, 'Eritrea'),
(65, 'Eslovaquia'),
(66, 'Eslovenia'),
(67, 'España'),
(68, 'Estonia'),
(69, 'Etiopía'),
(70, 'Fiji'),
(71, 'Filipinas'),
(72, 'Finlandia'),
(73, 'Francia'),
(74, 'Gabón'),
(75, 'Gambia'),
(76, 'Georgia del Sur e I. Sandwich'),
(77, 'Georgia'),
(78, 'Ghana'),
(79, 'Gibraltar'),
(80, 'Granada'),
(81, 'Grecia'),
(82, 'Groenlandia'),
(83, 'Guadalupe'),
(84, 'Guam'),
(85, 'Guatemala'),
(86, 'Guayana Francesa'),
(87, 'Guayana'),
(88, 'Guinea-Bissau'),
(89, 'Guinea Ecuatorial'),
(90, 'Guinea'),
(91, 'Haití­'),
(92, 'Holanda'),
(93, 'Honduras'),
(94, 'Hong Kong'),
(95, 'Hungría'),
(96, 'India'),
(97, 'Indonesia'),
(98, 'Irán'),
(99, 'Iraq'),
(100, 'Irlanda'),
(101, 'Isla Martinica'),
(102, 'Isla de Navidad'),
(103, 'Islandia'),
(104, 'Islas Caimanes'),
(105, 'Islas Cocos'),
(106, 'Islas Cook'),
(107, 'Islas Fároes'),
(108, 'Islas Heard y McDonald'),
(109, 'Islas Malvinas'),
(110, 'Islas Marianas del Norte'),
(111, 'Islas Marshall'),
(112, 'Islas Menores US'),
(113, 'Islas Norfolk'),
(114, 'Islas Salomón'),
(115, 'Islas Seychelles'),
(116, 'Islas Turks y Caicos'),
(117, 'Islas Ví­rgenes (E.E.U.U.)'),
(118, 'Islas Vírgenes (R.U.)'),
(119, 'Islas Wallis y Futuna'),
(120, 'Israel'),
(121, 'Italia'),
(122, 'Jamaica'),
(123, 'Japón'),
(124, 'Jordania'),
(125, 'Kazastán'),
(126, 'Kenia'),
(127, 'Kirgizstán'),
(128, 'Kiribati'),
(129, 'Kuwait'),
(130, 'Lí­bano'),
(131, 'Laos'),
(132, 'Lesotho'),
(133, 'Letonia'),
(134, 'Liberia'),
(135, 'Libia'),
(136, 'Liechtenstein'),
(137, 'Lituania'),
(138, 'Luxemburgo'),
(139, 'México'),
(140, 'Mónaco'),
(141, 'Macao'),
(142, 'Macedonia'),
(143, 'Madagascar'),
(144, 'Malasia'),
(145, 'Malawi'),
(146, 'Maldivas'),
(147, 'Mali'),
(148, 'Malta'),
(149, 'Marruecos'),
(150, 'Mauricio'),
(151, 'Mauritania'),
(152, 'Mayotte'),
(153, 'Micronesia'),
(154, 'Moldavia'),
(155, 'Mongolia'),
(156, 'Montserrat'),
(157, 'Mozambique'),
(158, 'Níger'),
(159, 'Namibia'),
(160, 'Nauru'),
(161, 'Nepal'),
(162, 'Nicaragua'),
(163, 'Nigeria'),
(164, 'Niue'),
(165, 'Noruega'),
(166, 'Nueva Caledonia'),
(167, 'Nueva Zelanda'),
(168, 'Omán'),
(169, 'Pakistán'),
(170, 'Palau'),
(171, 'Palestina'),
(172, 'Panamá'),
(173, 'Papúa - Nueva Guinea'),
(174, 'Paraguay'),
(175, 'Perú'),
(176, 'Pitcairn'),
(177, 'Polinesia Francesa'),
(178, 'Polonia'),
(179, 'Portugal'),
(180, 'Puerto Rico'),
(181, 'Qatar'),
(182, 'Reino Unido'),
(183, 'Rep. Cabo Verde'),
(184, 'Rep. Centro Africana'),
(185, 'Rep. Dem. del Congo'),
(186, 'Rep. Dominicana'),
(187, 'Reunión'),
(188, 'Ruanda'),
(189, 'Rumanía'),
(190, 'Rusia'),
(191, 'Sáhara Occidental'),
(192, 'Samoa Occidental'),
(193, 'Samoa'),
(194, 'San Kitts y Nevis'),
(195, 'San Marino'),
(196, 'San Vicente'),
(197, 'Santa Helena'),
(198, 'Santa Lucí­a'),
(199, 'Santo Tomé - Prí­ncipe'),
(200, 'Senegal'),
(201, 'Serbia y Montenegro'),
(202, 'Sierra Leona'),
(203, 'Singapur'),
(204, 'Siria'),
(205, 'Somalia'),
(206, 'Sri Lanka'),
(207, 'St Pierre y Miquelon'),
(208, 'Sudán'),
(209, 'Suecia'),
(210, 'Suiza'),
(211, 'Surinam'),
(212, 'Svalbard y Jan Mayen'),
(213, 'Swazilandia'),
(214, 'Túnez'),
(215, 'Tailandia'),
(216, 'Taiwán'),
(217, 'Tajikistan'),
(218, 'Tanzania'),
(219, 'Terr. Antárt. Franceses'),
(220, 'Timor del Este'),
(221, 'Togo'),
(222, 'Tokelau'),
(223, 'Tonga'),
(224, 'Trinidad y Tobago'),
(225, 'Turkmenistán'),
(226, 'Turquía'),
(227, 'Tuvalu'),
(228, 'Ucrania'),
(229, 'Uganda'),
(230, 'Uruguay'),
(231, 'Uzbekistan'),
(232, 'Vanuatu'),
(233, 'Venezuela'),
(234, 'Vietnam'),
(235, 'Yemen del Norte'),
(236, 'Yibuti'),
(237, 'Zambia'),
(238, 'Zimbawe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `donations`
--

CREATE TABLE `donations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `mount` decimal(11,2) DEFAULT NULL,
  `institution_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `card` varchar(15) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institution`
--

CREATE TABLE `institution` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `institution`
--

INSERT INTO `institution` (`id`, `name`, `description`) VALUES
(1, 'Institucion educativa Noe Canjura', 'Institucion de valores, basados en enseñanza cientifica, institucion con valores religiosos.'),
(2, 'Institucion educativa Gente de fe', 'Institucion de valores, basados en enseñanza cientifica, institucion con valores religiosos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `lastname` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `user` varchar(20) COLLATE utf8_bin NOT NULL,
  `password` varchar(80) COLLATE utf8_bin NOT NULL,
  `id_document` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(80) COLLATE utf8_bin NOT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `lastname`, `user`, `password`, `id_document`, `email`, `country_id`) VALUES
(1, 'Randy', 'Letona', 'randy', 'MTIzNDU2', '15454555', 'randy@example.com', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `institution`
--
ALTER TABLE `institution`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;
--
-- AUTO_INCREMENT de la tabla `donations`
--
ALTER TABLE `donations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `institution`
--
ALTER TABLE `institution`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
