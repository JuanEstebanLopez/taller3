-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-11-2014 a las 13:03:18
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `taller3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mapa`
--

CREATE TABLE IF NOT EXISTS `mapa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `tipo` int(11) NOT NULL,
  `tipoInfo` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Volcado de datos para la tabla `mapa`
--

INSERT INTO `mapa` (`id`, `nombre`, `direccion`, `x`, `y`, `tipo`, `tipoInfo`) VALUES
(3, 'Sit Amet Massa Inc.', '9662 Luctus Rd.', 3.38673, -76.4831, 3, 'Juguetería'),
(4, 'Ac Mattis Inc.', 'P.O. Box 288, 3634 Lectus Rd.', 3.43905, -76.5643, 2, 'Bisutería'),
(5, 'Fusce Feugiat Company', '199-8103 Orci St.', 3.39461, -76.5139, 1, 'Papelería'),
(6, 'Ligula Nullam Corp.', '104-3807 Semper Rd.', 3.43922, -76.5151, 2, 'Bisutería'),
(7, 'Augue Sed Ltd', '7548 Nec Street', 3.42878, -76.4925, 2, 'Bisutería'),
(8, 'Nascetur Ridiculus Ltd', '158-3429 Nulla St.', 3.42702, -76.5235, 1, 'Papelería'),
(9, 'Nulla Integer Inc.', '4212 Erat, Ave', 3.39996, -76.5688, 3, 'Juguetería'),
(10, 'A Ltd', '3110 Aliquet. Street', 3.40657, -76.5238, 1, 'Papelería'),
(11, 'Eu Lacus Quisque Limited', 'Ap #815-6853 Dictum. Rd.', 3.391, -76.5083, 3, 'Juguetería'),
(12, 'Facilisis Suspendisse Foundati', 'P.O. Box 125, 1938 Metus. St.', 3.43866, -76.4962, 3, 'Juguetería'),
(13, 'Ut Aliquam Iaculis Company', 'Ap #412-3416 Adipiscing St.', 3.4143, -76.5028, 2, 'Bisutería'),
(14, 'Mauris Vel LLP', '4426 Mauris. Street', 3.3962, -76.5664, 2, 'Bisutería'),
(15, 'Cursus Et Incorporated', '298-5233 Cursus Av.', 3.38933, -76.5673, 2, 'Bisutería'),
(16, 'Placerat Velit Quisque Institu', 'P.O. Box 385, 8616 Blandit Str', 3.38696, -76.4934, 3, 'Juguetería'),
(17, 'Dolor Sit Foundation', 'P.O. Box 394, 9426 Massa Road', 3.40831, -76.5413, 2, 'Bisutería'),
(18, 'Erat Corp.', 'Ap #571-5797 Sodales Rd.', 3.44649, -76.5642, 2, 'Bisutería'),
(19, 'Ac Foundation', '9510 Nisi Ave', 3.44755, -76.5379, 2, 'Bisutería'),
(20, 'Arcu Et Pede Corp.', 'P.O. Box 565, 2550 Quisque Ave', 3.39919, -76.5464, 1, 'Papelería'),
(21, 'Magna Praesent Interdum Indust', 'Ap #153-8816 Placerat Avenue', 3.40975, -76.5056, 3, 'Juguetería'),
(22, 'Gravida Sagittis Limited', '8315 Mauris Road', 3.39279, -76.5222, 1, 'Papelería'),
(23, 'Semper Dui Lectus Associates', 'Ap #331-6966 Ipsum Av.', 3.41956, -76.5353, 1, 'Papelería'),
(24, 'Non Leo PC', 'Ap #444-6982 Mattis. St.', 3.39066, -76.5693, 3, 'Juguetería'),
(25, 'Donec Est Institute', 'Ap #478-1901 Egestas Rd.', 3.44132, -76.5208, 3, 'Juguetería'),
(26, 'Enim Consequat Purus Incorpora', 'Ap #150-637 Pharetra, Avenue', 3.3994, -76.567, 1, 'Papelería'),
(27, 'Quis Massa Institute', '9997 Eget Street', 3.41215, -76.5588, 1, 'Papelería'),
(28, 'Amet PC', 'P.O. Box 801, 4585 Nascetur Av', 3.43709, -76.5546, 3, 'Juguetería'),
(29, 'Molestie Corp.', 'Ap #351-9170 Mi St.', 3.41845, -76.5631, 3, 'Juguetería'),
(30, 'Tempus Non Lacinia Institute', 'Ap #597-799 Dis St.', 3.43667, -76.5266, 2, 'Bisutería'),
(31, 'Mauris Elit Corporation', 'Ap #879-5828 Pede Ave', 3.39015, -76.5438, 3, 'Juguetería'),
(32, 'Ligula Company', 'P.O. Box 355, 9002 Malesuada A', 3.4277, -76.5243, 3, 'Juguetería'),
(33, 'Eu Elit Nulla Company', 'P.O. Box 209, 1884 Justo. St.', 3.38604, -76.5295, 1, 'Papelería'),
(34, 'Facilisis Lorem Tristique Cons', 'P.O. Box 387, 9238 Tellus Av.', 3.44234, -76.5532, 1, 'Papelería'),
(35, 'A LLP', 'Ap #690-7053 Mauris Road', 3.4029, -76.5042, 1, 'Papelería'),
(36, 'Ante Blandit Corporation', '5524 Egestas Rd.', 3.38798, -76.5024, 3, 'Juguetería'),
(37, 'Tempor LLP', '843-410 Lacus. Rd.', 3.42903, -76.564, 1, 'Papelería'),
(38, 'Lorem Ipsum Sodales Limited', 'Ap #456-4342 Eget, Rd.', 3.41056, -76.5447, 2, 'Bisutería'),
(39, 'Donec Fringilla LLP', 'Ap #601-8645 Dolor, Road', 3.44612, -76.5392, 1, 'Papelería'),
(40, 'Tempor Institute', 'Ap #830-7741 Tempus Ave', 3.41256, -76.5609, 1, 'Papelería'),
(41, 'Ut Dolor Dapibus Ltd', '983 Non, St.', 3.44767, -76.5033, 1, 'Papelería'),
(42, 'Odio LLP', 'Ap #701-2932 Eu St.', 3.43718, -76.4814, 1, 'Papelería'),
(43, 'Augue Malesuada Company', 'Ap #925-583 Sit Street', 3.3982, -76.5117, 1, 'Papelería'),
(44, 'Tellus Incorporated', '875-1799 Malesuada Avenue', 3.43744, -76.5126, 3, 'Juguetería'),
(45, 'Accumsan Consulting', 'P.O. Box 601, 1333 Suscipit Rd', 3.39296, -76.527, 2, 'Bisutería'),
(46, 'Dictum Eu Eleifend Ltd', 'P.O. Box 668, 6259 Proin Road', 3.38766, -76.5681, 2, 'Bisutería'),
(47, 'Et Institute', 'Ap #634-3840 Mauris St.', 3.44765, -76.5158, 1, 'Papelería'),
(48, 'Nec Euismod In LLP', '447-4161 In Rd.', 3.38713, -76.5445, 1, 'Papelería'),
(49, 'Tellus Associates', 'Ap #497-4133 Eu Street', 3.43581, -76.4911, 3, 'Juguetería'),
(50, 'Sem Inc.', 'P.O. Box 655, 6838 Ridiculus A', 3.39377, -76.5415, 1, 'Papelería'),
(51, 'Mi Foundation', 'P.O. Box 706, 3729 Lobortis Ro', 3.38769, -76.5045, 3, 'Juguetería'),
(52, 'Torquent Consulting', '7333 Quisque Rd.', 3.4299, -76.503, 3, 'Juguetería');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
