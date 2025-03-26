-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 26, 2025 at 09:01 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `staysafev1db`
--

-- --------------------------------------------------------

--
-- Table structure for table `Activities`
--

CREATE TABLE `Activities` (
  `ActivityID` int(11) NOT NULL,
  `ActivityName` varchar(64) NOT NULL,
  `ActivityUserID` int(11) NOT NULL,
  `ActivityDescription` varchar(255) NOT NULL,
  `ActivityFromID` int(11) NOT NULL,
  `ActivityLeave` datetime NOT NULL,
  `ActivityToID` int(11) NOT NULL,
  `ActivityArrive` datetime NOT NULL,
  `Transport` varchar(10) NOT NULL,
  `ActivityStatusID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Activities`
--

INSERT INTO `Activities` (`ActivityID`, `ActivityName`, `ActivityUserID`, `ActivityDescription`, `ActivityFromID`, `ActivityLeave`, `ActivityToID`, `ActivityArrive`, `Transport`, `ActivityStatusID`) VALUES
(1, 'Walk home', 1, 'Walk from university to Surbiton train station', 10, '2025-03-28 18:30:00', 8, '2025-03-28 18:50:00', '', 1),
(2, 'Walk home', 1, 'Walk from university to Surbiton train station', 10, '2025-02-14 18:00:00', 8, '2025-02-14 18:20:00', '', 5),
(3, 'Visiting Amina', 1, 'Dinner at Amina\'s at 7pm', 1, '2025-01-20 18:30:00', 11, '2025-01-20 18:50:00', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `Contacts`
--

CREATE TABLE `Contacts` (
  `ContactID` int(11) NOT NULL,
  `ContactUserID` int(11) NOT NULL,
  `ContactContactID` int(11) NOT NULL,
  `ContactLabel` varchar(32) NOT NULL,
  `ContactDatecreated` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Contacts`
--

INSERT INTO `Contacts` (`ContactID`, `ContactUserID`, `ContactContactID`, `ContactLabel`, `ContactDatecreated`) VALUES
(1, 7, 5, 'Colleague', '2024-09-28'),
(2, 2, 15, 'Friend', '2024-05-18'),
(3, 6, 1, 'Partner', '2024-07-27'),
(4, 4, 10, 'Partner', '2024-06-06'),
(5, 10, 4, 'Partner', '2024-09-09'),
(6, 23, 9, 'Friend', '2025-01-20'),
(7, 10, 21, 'Bro!', '2024-09-22'),
(8, 11, 3, 'Friend', '2024-08-27'),
(9, 18, 17, 'Partner', '2024-10-11'),
(10, 4, 21, 'Friend', '2024-06-19'),
(11, 5, 7, 'Family', '2024-06-25'),
(12, 16, 10, 'Friend', '2024-12-07'),
(13, 20, 1, 'Best mate', '2025-01-01'),
(14, 20, 6, 'Work colleague', '2025-01-08'),
(15, 6, 12, 'School mate', '2024-08-02'),
(16, 21, 4, 'Friend', '2025-01-27'),
(17, 12, 6, 'Friend', '2024-10-24'),
(18, 22, 3, 'Colleague', '2024-11-24'),
(19, 10, 16, 'Bestie!', '2024-09-15'),
(20, 13, 8, 'Friend', '2024-10-04'),
(21, 15, 9, 'Soul mate!', '2024-11-12'),
(22, 21, 10, 'Friend', '2025-02-02'),
(23, 14, 12, 'Mate', '2024-07-08'),
(24, 19, 17, 'Friend', '2024-12-20'),
(25, 9, 2, 'Partner', '2024-08-15'),
(26, 19, 18, 'Mate', '2024-12-26'),
(27, 12, 14, 'Band', '2024-11-05'),
(28, 1, 6, 'Friend', '2024-04-22'),
(29, 17, 18, 'Partner', '2024-07-14'),
(30, 17, 19, 'Friend', '2024-07-20'),
(31, 22, 11, 'Friend', '2024-12-01'),
(32, 9, 15, 'Partner in crime!', '2024-08-21'),
(33, 2, 9, 'Partner', '2024-05-11'),
(34, 11, 22, 'Friend', '2024-09-03'),
(35, 15, 23, 'Friend', '2024-11-18'),
(36, 1, 12, 'Partner', '2024-04-29'),
(37, 18, 19, 'Friend', '2024-10-17'),
(38, 3, 11, 'Friend', '2024-05-24'),
(39, 1, 20, 'Bestie!', '2024-05-05'),
(40, 12, 20, 'Friend', '2024-10-30'),
(41, 8, 13, 'Friend', '2024-07-01'),
(42, 23, 2, 'Colleague', '2025-01-14'),
(43, 16, 21, 'Friend', '2024-12-13'),
(44, 6, 20, 'Colleague', '2024-08-08'),
(45, 3, 22, 'Friend', '2024-05-30'),
(46, 4, 16, 'Colleague', '2024-06-12');

-- --------------------------------------------------------

--
-- Table structure for table `Locations`
--

CREATE TABLE `Locations` (
  `LocationID` int(11) NOT NULL,
  `LocationUserID` int(11) NOT NULL,
  `LocationName` varchar(128) NOT NULL,
  `LocationDescription` varchar(255) NOT NULL,
  `LocationAddress` varchar(512) NOT NULL,
  `LocationPostcode` varchar(16) DEFAULT NULL,
  `LocationLatitude` float NOT NULL,
  `LocationLongitude` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Locations`
--

INSERT INTO `Locations` (`LocationID`, `LocationUserID`, `LocationName`, `LocationDescription`, `LocationAddress`, `LocationPostcode`, `LocationLatitude`, `LocationLongitude`) VALUES
(1, 1, 'Berrylands Station', 'Berrylands, South Western Railway', 'Chiltern Drive, Surbiton', 'KT5 8LS', 51.3988, -0.2803),
(2, 1, 'Chessington North Station', 'Chessington North, South Western Railway', 'Bridge Street, Chessington', 'KT9 2RT', 51.3642, -0.3005),
(3, 1, 'Chessington South Station', 'Chessington South, South Western Railway', 'Garrison Lane, Chessington', 'KT9 2JR', 51.3569, -0.30816),
(4, 1, 'Kingston Station', 'Kingston, South Western Railway', 'Wood Street, Kingston', 'KT1 1UJ', 51.4129, -0.3019),
(5, 1, 'Malden Manor Station', 'Malden Manor, South Western Railway', 'Manor Drive North, Malden Manor', 'KT3 5PN', 51.3847, -0.2618),
(6, 1, 'New Malden Station', 'New Malden, South Western Railway', 'Coombe Road, New Malden, Greater London', 'KT3 4PX', 51.4039, -0.25594),
(7, 1, 'Norbiton Station', 'Norbiton, South Western Railway', 'Coombe Road West Norbiton Greater London', 'KT2 7AZ', 51.4124, -0.2838),
(8, 1, 'Surbiton Station', 'Surbiton, South Western Railway', 'Victoria Road, Surbiton', 'KT6 4PE', 51.3926, -0.3044),
(9, 1, 'Tolworth Station', 'Tolworth, South Western Railway', 'Kingston Road, Tolworth, Greater London', 'KT5 9NX', 51.3771, -0.2793),
(10, 1, 'Work', 'Kingston University, Department of Computer Science and Mathematics', '55-59, Penrhyn Road, Kingston upon Thames', 'KT1 2EE', 51.4034, -0.303481),
(11, 1, 'Amina\'s', 'Amina\'s house', '47 Green Lane\r\nNew Malden', 'KT3 5BX', 51.3979, -0.270778),
(61, 13, 'Shopping Mall - Malden Manor Station Area', 'A famous landmark situated in Malden Manor Station', 'Random Address 13', 'KT1 5XX', 51.3817, -0.271651),
(62, 8, 'Landmark - Surbiton Station Area', 'A busy railway station serving commuters at Surbiton Station', 'Random Address 8', 'KT3 8XX', 51.4019, -0.30639),
(63, 4, 'Railway Station - Tolworth Station Area', 'A peaceful park for relaxation near Tolworth Station', 'Random Address 4', 'KT7 3XX', 51.3738, -0.275015),
(64, 23, 'Railway Station - Work Area', 'A shopping destination located at Work', 'Random Address 23', 'KT5 4XX', 51.4119, -0.310021),
(65, 14, 'Park - Norbiton Station Area', 'A famous landmark situated in Norbiton Station', 'Random Address 14', 'KT8 4XX', 51.412, -0.291097),
(66, 23, 'Railway Station - Berrylands Station Area', 'A peaceful park for relaxation near Berrylands Station', 'Random Address 23', 'KT7 4XX', 51.4061, -0.289947),
(67, 12, 'Railway Station - Chessington South Station Area', 'A busy railway station serving commuters at Chessington South Station', 'Random Address 12', 'KT2 1XX', 51.3499, -0.312302),
(68, 15, 'Park - Chessington North Station Area', 'A busy railway station serving commuters at Chessington North Station', 'Random Address 15', 'KT6 5XX', 51.3658, -0.303448),
(69, 11, 'Park - Kingston Station Area', 'A busy railway station serving commuters at Kingston Station', 'Random Address 11', 'KT7 5XX', 51.4164, -0.300208),
(70, 18, 'Railway Station - Kingston Station Area', 'A peaceful park for relaxation near Kingston Station', 'Random Address 18', 'KT0 8XX', 51.4086, -0.295444),
(71, 16, 'Shopping Mall - Malden Manor Station Area', 'A peaceful park for relaxation near Malden Manor Station', 'Random Address 16', 'KT9 3XX', 51.3883, -0.26395),
(76, 9, 'Park - Location 49', 'A peaceful park for relaxation near Location 30', 'Random Address 9 - 3', 'KT2 1XX', 51.3968, -0.285746),
(77, 23, 'Railway Station - Location 62', 'A peaceful park for relaxation near Location 73', 'Random Address 23 - 30', 'KT2 4XX', 51.4009, -0.265444),
(78, 23, 'Landmark - Location 25', 'A shopping destination located at Location 58', 'Random Address 23 - 90', 'KT7 9XX', 51.3883, -0.26229),
(79, 3, 'Park - Location 57', 'A busy railway station serving commuters at Location 63', 'Random Address 3 - 76', 'KT8 1XX', 51.4182, -0.295021),
(80, 14, 'Shopping Mall - Location 72', 'A busy railway station serving commuters at Location 43', 'Random Address 14 - 18', 'KT6 5XX', 51.3891, -0.270116),
(81, 13, 'Landmark - Location 96', 'A busy railway station serving commuters at Location 14', 'Random Address 13 - 47', 'KT9 2XX', 51.3655, -0.300368),
(82, 2, 'Park - Location 1', 'A famous landmark situated in Location 98', 'Random Address 2 - 86', 'KT3 2XX', 51.4139, -0.290615),
(83, 5, 'Park - Location 24', 'A peaceful park for relaxation near Location 37', 'Random Address 5 - 76', 'KT7 2XX', 51.4052, -0.300223),
(84, 9, 'Railway Station - Location 42', 'A peaceful park for relaxation near Location 73', 'Random Address 9 - 3', 'KT9 8XX', 51.3956, -0.265496),
(85, 20, 'Park - Location 66', 'A famous landmark situated in Location 29', 'Random Address 20 - 86', 'KT4 6XX', 51.3539, -0.308117),
(86, 8, 'Park - Location 4', 'A peaceful park for relaxation near Location 48', 'Random Address 8 - 1', 'KT5 9XX', 51.3804, -0.26194),
(87, 2, 'Landmark - Location 74', 'A busy railway station serving commuters at Location 66', 'Random Address 2 - 18', 'KT8 8XX', 51.3719, -0.306053),
(88, 10, 'Park - Location 79', 'A busy railway station serving commuters at Location 61', 'Random Address 10 - 87', 'KT5 9XX', 51.4089, -0.29984),
(89, 19, 'Railway Station - Location 56', 'A famous landmark situated in Location 19', 'Random Address 19 - 62', 'KT5 7XX', 51.3942, -0.289259),
(90, 17, 'Landmark - Location 81', 'A peaceful park for relaxation near Location 1', 'Random Address 17 - 79', 'KT9 2XX', 51.3463, -0.303059),
(91, 2, 'Railway Station - Location 47', 'A busy railway station serving commuters at Location 42', 'Random Address 2 - 99', 'KT7 5XX', 51.3933, -0.273193),
(92, 9, 'Railway Station - Location 36', 'A busy railway station serving commuters at Location 35', 'Random Address 9 - 88', 'KT3 1XX', 51.4136, -0.305351),
(93, 14, 'Park - Location 68', 'A famous landmark situated in Location 51', 'Random Address 14 - 82', 'KT5 2XX', 51.4139, -0.310726),
(94, 18, 'Landmark - Location 47', 'A shopping destination located at Location 36', 'Random Address 18 - 12', 'KT5 2XX', 51.4148, -0.301402),
(95, 21, 'Landmark - Location 2', 'A shopping destination located at Location 89', 'Random Address 21 - 68', 'KT7 5XX', 51.3909, -0.266501),
(96, 9, 'Park - Location 55', 'A busy railway station serving commuters at Location 94', 'Random Address 9 - 73', 'KT8 9XX', 51.3725, -0.279343),
(97, 5, 'Landmark - Location 7', 'A famous landmark situated in Location 74', 'Random Address 5 - 34', 'KT4 3XX', 51.3998, -0.280186),
(98, 19, 'Park - Location 42', 'A shopping destination located at Location 35', 'Random Address 19 - 57', 'KT7 3XX', 51.366, -0.272085),
(99, 15, 'Shopping Mall - Location 50', 'A famous landmark situated in Location 98', 'Random Address 15 - 20', 'KT0 6XX', 51.3463, -0.312118),
(100, 8, 'Park - Location 86', 'A peaceful park for relaxation near Location 68', 'Random Address 8 - 63', 'KT1 6XX', 51.3833, -0.311186),
(101, 20, 'Landmark - Location 66', 'A busy railway station serving commuters at Location 87', 'Random Address 20 - 24', 'KT5 2XX', 51.3975, -0.267964),
(102, 22, 'Park - Location 62', 'A shopping destination located at Location 18', 'Random Address 22 - 5', 'KT7 3XX', 51.3566, -0.322153),
(103, 7, 'Railway Station - Location 39', 'A famous landmark situated in Location 73', 'Random Address 7 - 70', 'KT3 4XX', 51.4069, -0.27704),
(104, 6, 'Railway Station - Location 48', 'A busy railway station serving commuters at Location 58', 'Random Address 6 - 66', 'KT5 8XX', 51.4145, -0.309145),
(105, 5, 'Park - Location 46', 'A famous landmark situated in Location 10', 'Random Address 5 - 82', 'KT7 3XX', 51.3673, -0.29819),
(106, 1, 'Railway Station - Location 26', 'A busy railway station serving commuters at Location 26', 'Random Address 1 - 6', 'KT5 4XX', 51.4166, -0.295718),
(107, 12, 'Landmark - Location 36', 'A peaceful park for relaxation near Location 9', 'Random Address 12 - 35', 'KT4 3XX', 51.3558, -0.316383),
(108, 19, 'Landmark - Location 86', 'A famous landmark situated in Location 60', 'Random Address 19 - 50', 'KT6 9XX', 51.3902, -0.269877),
(109, 15, 'Shopping Mall - Location 15', 'A shopping destination located at Location 18', 'Random Address 15 - 70', 'KT9 6XX', 51.3936, -0.300377),
(110, 8, 'Landmark - Location 10', 'A famous landmark situated in Location 9', 'Random Address 8 - 81', 'KT7 3XX', 51.4077, -0.306062),
(111, 19, 'Railway Station - Location 90', 'A peaceful park for relaxation near Location 24', 'Random Address 19 - 63', 'KT4 2XX', 51.3913, -0.279075),
(112, 22, 'Railway Station - Location 73', 'A busy railway station serving commuters at Location 13', 'Random Address 22 - 23', 'KT7 2XX', 51.4175, -0.291464),
(113, 22, 'Park - Location 94', 'A famous landmark situated in Location 95', 'Random Address 22 - 89', 'KT5 2XX', 51.4036, -0.295537),
(114, 7, 'Landmark - Location 59', 'A peaceful park for relaxation near Location 34', 'Random Address 7 - 62', 'KT0 4XX', 51.361, -0.296962),
(115, 9, 'Shopping Mall - Location 45', 'A peaceful park for relaxation near Location 73', 'Random Address 9 - 59', 'KT7 0XX', 51.3832, -0.271113),
(116, 19, 'Shopping Mall - Location 25', 'A peaceful park for relaxation near Location 84', 'Random Address 19 - 84', 'KT6 8XX', 51.4032, -0.283585),
(117, 6, 'Park - Location 50', 'A peaceful park for relaxation near Location 55', 'Random Address 6 - 73', 'KT9 7XX', 51.3737, -0.310363),
(118, 16, 'Landmark - Location 52', 'A shopping destination located at Location 5', 'Random Address 16 - 8', 'KT2 9XX', 51.3506, -0.298787),
(119, 8, 'Shopping Mall - Location 80', 'A peaceful park for relaxation near Location 28', 'Random Address 8 - 99', 'KT0 4XX', 51.4034, -0.300549),
(120, 5, 'Park - Location 14', 'A busy railway station serving commuters at Location 79', 'Random Address 5 - 60', 'KT6 4XX', 51.378, -0.260581),
(121, 22, 'Park - Location 74', 'A shopping destination located at Location 2', 'Random Address 22 - 17', 'KT7 3XX', 51.4041, -0.298823),
(122, 10, 'Landmark - Location 84', 'A shopping destination located at Location 2', 'Random Address 10 - 94', 'KT6 5XX', 51.393, -0.312425),
(123, 7, 'Landmark - Location 86', 'A famous landmark situated in Location 36', 'Random Address 7 - 44', 'KT1 2XX', 51.3749, -0.267107),
(124, 11, 'Railway Station - Location 5', 'A famous landmark situated in Location 100', 'Random Address 11 - 50', 'KT4 9XX', 51.3981, -0.283442),
(125, 11, 'Shopping Mall - Location 78', 'A peaceful park for relaxation near Location 88', 'Random Address 11 - 25', 'KT5 2XX', 51.4104, -0.293269),
(126, 11, 'Landmark - Location 20', 'A busy railway station serving commuters at Location 74', 'Random Address 11 - 90', 'KT2 6XX', 51.407, -0.302224),
(127, 20, 'Railway Station - Location 95', 'A famous landmark situated in Location 100', 'Random Address 20 - 7', 'KT3 5XX', 51.3818, -0.269348),
(128, 1, 'Landmark - Location 6', 'A shopping destination located at Location 6', 'Random Address 1 - 34', 'KT4 5XX', 51.3788, -0.261463),
(129, 13, 'Railway Station - Location 1', 'A peaceful park for relaxation near Location 13', 'Random Address 13 - 96', 'KT3 0XX', 51.3476, -0.31684),
(130, 11, 'Park - Location 73', 'A shopping destination located at Location 88', 'Random Address 11 - 53', 'KT0 5XX', 51.3577, -0.315434),
(131, 15, 'Railway Station - Location 27', 'A busy railway station serving commuters at Location 12', 'Random Address 15 - 41', 'KT6 2XX', 51.382, -0.270401),
(132, 11, 'Shopping Mall - Location 34', 'A busy railway station serving commuters at Location 45', 'Random Address 11 - 76', 'KT4 9XX', 51.4155, -0.308905),
(133, 22, 'Landmark - Location 75', 'A busy railway station serving commuters at Location 13', 'Random Address 22 - 82', 'KT6 9XX', 51.4084, -0.295845),
(134, 15, 'Shopping Mall - Location 34', 'A busy railway station serving commuters at Location 42', 'Random Address 15 - 62', 'KT8 3XX', 51.3786, -0.253009),
(135, 15, 'Shopping Mall - Location 89', 'A busy railway station serving commuters at Location 76', 'Random Address 15 - 33', 'KT3 8XX', 51.3975, -0.304571),
(136, 16, 'Landmark - Location 53', 'A busy railway station serving commuters at Location 88', 'Random Address 16 - 53', 'KT9 4XX', 51.3752, -0.253294),
(137, 22, 'Railway Station - Location 77', 'A shopping destination located at Location 53', 'Random Address 22 - 95', 'KT1 8XX', 51.4044, -0.282282),
(138, 12, 'Landmark - Location 99', 'A busy railway station serving commuters at Location 59', 'Random Address 12 - 99', 'KT1 9XX', 51.3401, -0.315548),
(139, 3, 'Park - Location 72', 'A shopping destination located at Location 51', 'Random Address 3 - 93', 'KT1 7XX', 51.3813, -0.279214),
(140, 15, 'Shopping Mall - Location 88', 'A busy railway station serving commuters at Location 44', 'Random Address 15 - 96', 'KT4 4XX', 51.4212, -0.287861),
(141, 10, 'Railway Station - Location 95', 'A famous landmark situated in Location 83', 'Random Address 10 - 33', 'KT1 6XX', 51.3928, -0.313235),
(142, 9, 'Landmark - Location 55', 'A busy railway station serving commuters at Location 8', 'Random Address 9 - 35', 'KT4 4XX', 51.4161, -0.291333),
(143, 4, 'Shopping Mall - Location 47', 'A shopping destination located at Location 66', 'Random Address 4 - 45', 'KT2 9XX', 51.4087, -0.310967),
(144, 13, 'Railway Station - Location 93', 'A peaceful park for relaxation near Location 35', 'Random Address 13 - 7', 'KT2 1XX', 51.3979, -0.265207),
(145, 13, 'Park - Location 95', 'A shopping destination located at Location 74', 'Random Address 13 - 12', 'KT3 4XX', 51.3956, -0.272129),
(146, 8, 'Park - Location 60', 'A famous landmark situated in Location 96', 'Random Address 8 - 94', 'KT7 1XX', 51.3838, -0.256056),
(147, 5, 'Park - Location 10', 'A peaceful park for relaxation near Location 55', 'Random Address 5 - 23', 'KT4 6XX', 51.4263, -0.291572),
(148, 4, 'Landmark - Location 37', 'A shopping destination located at Location 66', 'Random Address 4 - 61', 'KT0 5XX', 51.4111, -0.287569),
(149, 10, 'Landmark - Location 54', 'A shopping destination located at Location 78', 'Random Address 10 - 84', 'KT8 8XX', 51.3648, -0.307237),
(150, 2, 'Landmark - Location 30', 'A shopping destination located at Location 18', 'Random Address 2 - 3', 'KT6 0XX', 51.4076, -0.294713),
(151, 19, 'Railway Station - Location 59', 'A shopping destination located at Location 80', 'Random Address 19 - 85', 'KT8 6XX', 51.4044, -0.278684),
(152, 1, 'Landmark - Location 95', 'A peaceful park for relaxation near Location 58', 'Random Address 1 - 62', 'KT3 8XX', 51.3643, -0.304181),
(153, 23, 'Railway Station - Location 67', 'A peaceful park for relaxation near Location 21', 'Random Address 23 - 91', 'KT9 8XX', 51.4052, -0.301082),
(154, 23, 'Park - Location 24', 'A famous landmark situated in Location 13', 'Random Address 23 - 32', 'KT2 1XX', 51.4127, -0.30414),
(155, 22, 'Park - Location 3', 'A famous landmark situated in Location 97', 'Random Address 22 - 40', 'KT0 2XX', 51.3795, -0.27854),
(156, 13, 'Railway Station - Location 9', 'A busy railway station serving commuters at Location 15', 'Random Address 13 - 31', 'KT0 3XX', 51.4223, -0.294403),
(157, 10, 'Railway Station - Location 16', 'A famous landmark situated in Location 60', 'Random Address 10 - 52', 'KT8 4XX', 51.3408, -0.307239),
(158, 7, 'Park - Location 42', 'A shopping destination located at Location 45', 'Random Address 7 - 60', 'KT6 4XX', 51.3964, -0.303404),
(159, 3, 'Shopping Mall - Location 61', 'A peaceful park for relaxation near Location 9', 'Random Address 3 - 90', 'KT1 3XX', 51.407, -0.263777),
(160, 15, 'Park - Location 26', 'A famous landmark situated in Location 31', 'Random Address 15 - 8', 'KT4 1XX', 51.4047, -0.287351),
(161, 18, 'Railway Station - Location 17', 'A famous landmark situated in Location 70', 'Random Address 18 - 94', 'KT6 2XX', 51.3905, -0.270282),
(162, 7, 'Railway Station - Location 81', 'A shopping destination located at Location 87', 'Random Address 7 - 35', 'KT1 6XX', 51.3845, -0.281742),
(163, 4, 'Railway Station - Location 89', 'A famous landmark situated in Location 25', 'Random Address 4 - 28', 'KT6 3XX', 51.3876, -0.262506),
(164, 22, 'Park - Location 19', 'A shopping destination located at Location 97', 'Random Address 22 - 30', 'KT5 0XX', 51.3943, -0.300156),
(165, 15, 'Railway Station - Location 16', 'A famous landmark situated in Location 37', 'Random Address 15 - 54', 'KT5 3XX', 51.4174, -0.300969),
(166, 19, 'Railway Station - Location 93', 'A peaceful park for relaxation near Location 3', 'Random Address 19 - 64', 'KT1 6XX', 51.3574, -0.306628),
(167, 12, 'Railway Station - Location 21', 'A famous landmark situated in Location 31', 'Random Address 12 - 59', 'KT9 2XX', 51.3731, -0.267496),
(168, 1, 'Railway Station - Location 26', 'A peaceful park for relaxation near Location 21', 'Random Address 1 - 45', 'KT6 7XX', 51.4116, -0.285614),
(169, 21, 'Park - Location 20', 'A shopping destination located at Location 12', 'Random Address 21 - 96', 'KT4 2XX', 51.3837, -0.280402),
(170, 2, 'Railway Station - Location 10', 'A busy railway station serving commuters at Location 8', 'Random Address 2 - 97', 'KT5 0XX', 51.3783, -0.277272),
(171, 19, 'Park - Location 50', 'A famous landmark situated in Location 77', 'Random Address 19 - 27', 'KT0 3XX', 51.4188, -0.308447),
(172, 15, 'Park - Location 18', 'A busy railway station serving commuters at Location 66', 'Random Address 15 - 99', 'KT9 7XX', 51.4081, -0.298666),
(173, 8, 'Landmark - Location 70', 'A famous landmark situated in Location 50', 'Random Address 8 - 72', 'KT0 2XX', 51.3904, -0.277912),
(174, 5, 'Park - Location 54', 'A shopping destination located at Location 51', 'Random Address 5 - 66', 'KT7 7XX', 51.4019, -0.271485),
(175, 4, 'Shopping Mall - Location 19', 'A busy railway station serving commuters at Location 86', 'Random Address 4 - 43', 'KT5 5XX', 51.4044, -0.277427);

-- --------------------------------------------------------

--
-- Table structure for table `Positions`
--

CREATE TABLE `Positions` (
  `PositionID` int(11) NOT NULL,
  `PositionActivityID` int(11) NOT NULL,
  `PositionLatitude` float NOT NULL,
  `PositionLongitude` float NOT NULL,
  `PositionTimestamp` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Positions`
--

INSERT INTO `Positions` (`PositionID`, `PositionActivityID`, `PositionLatitude`, `PositionLongitude`, `PositionTimestamp`) VALUES
(1, 2, 51.4028, -0.30438, 1739556000),
(2, 2, 51.4025, -0.3044, 1739556038),
(3, 2, 51.4022, -0.30438, 1739556076),
(4, 2, 51.4019, -0.30444, 1739556114),
(5, 2, 51.4016, -0.30424, 1739556152),
(6, 2, 51.4014, -0.30404, 1739556190),
(7, 2, 51.4012, -0.30394, 1739556228),
(8, 2, 51.4009, -0.30375, 1739556266),
(9, 2, 51.4007, -0.30432, 1739556304),
(10, 2, 51.4003, -0.30461, 1739556342),
(11, 2, 51.3998, -0.30483, 1739556380),
(12, 2, 51.3993, -0.30478, 1739556418),
(13, 2, 51.3988, -0.30459, 1739556456),
(14, 2, 51.3985, -0.30427, 1739556494),
(15, 2, 51.3983, -0.30401, 1739556532),
(16, 2, 51.3983, -0.30392, 1739556570),
(17, 2, 51.3981, -0.30375, 1739556608),
(18, 2, 51.3977, -0.3038, 1739556646),
(19, 2, 51.3973, -0.30383, 1739556684),
(20, 2, 51.3968, -0.30389, 1739556722),
(21, 2, 51.3965, -0.30393, 1739556760),
(22, 2, 51.396, -0.30401, 1739556798),
(23, 2, 51.3956, -0.30404, 1739556836),
(24, 2, 51.3951, -0.30412, 1739556874),
(25, 2, 51.3946, -0.30417, 1739556912),
(26, 2, 51.3943, -0.30421, 1739556950),
(27, 2, 51.3939, -0.30425, 1739556988),
(28, 2, 51.3936, -0.3043, 1739557026),
(29, 2, 51.3933, -0.30427, 1739557064),
(30, 2, 51.3932, -0.30415, 1739557102),
(31, 2, 51.393, -0.30434, 1739557140),
(32, 2, 51.3927, -0.30423, 1739557178),
(33, 3, 51.3989, -0.28072, 1737397800),
(34, 3, 51.399, -0.28012, 1737397838),
(35, 3, 51.3987, -0.28003, 1737397876),
(36, 3, 51.3983, -0.28018, 1737397914),
(37, 3, 51.3978, -0.28033, 1737397952),
(38, 3, 51.3976, -0.2793, 1737397990),
(39, 3, 51.3975, -0.2784, 1737398028),
(40, 3, 51.3971, -0.27748, 1737398066),
(41, 3, 51.3971, -0.27658, 1737398104),
(42, 3, 51.3974, -0.27558, 1737398142),
(43, 3, 51.3978, -0.27519, 1737398180),
(44, 3, 51.3984, -0.27457, 1737398218),
(45, 3, 51.3988, -0.27412, 1737398256),
(46, 3, 51.3991, -0.27337, 1737398294),
(47, 3, 51.3986, -0.27309, 1737398332),
(48, 3, 51.3981, -0.27283, 1737398370),
(49, 3, 51.3977, -0.27266, 1737398408),
(50, 3, 51.3977, -0.27202, 1737398446);

-- --------------------------------------------------------

--
-- Table structure for table `Status`
--

CREATE TABLE `Status` (
  `StatusID` int(11) NOT NULL,
  `StatusName` varchar(32) NOT NULL,
  `StatusOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Status`
--

INSERT INTO `Status` (`StatusID`, `StatusName`, `StatusOrder`) VALUES
(1, 'Planned', 1),
(2, 'Started', 2),
(3, 'Paused', 3),
(4, 'Cancelled', 4),
(5, 'Completed', 5),
(6, 'En Route', 6),
(7, 'HELP', 7),
(8, 'Home', 8);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `UserID` int(11) NOT NULL,
  `UserFirstname` varchar(32) NOT NULL,
  `UserLastname` varchar(32) NOT NULL,
  `UserPhone` varchar(18) NOT NULL,
  `UserUsername` varchar(32) NOT NULL,
  `UserPassword` varchar(255) NOT NULL,
  `UserLatitude` float NOT NULL,
  `UserLongitude` float NOT NULL,
  `UserTimestamp` bigint(20) NOT NULL,
  `UserImageURL` varchar(255) NOT NULL DEFAULT 'https://static.generated.photos/vue-static/face-generator/landing/wall/13.jpg',
  `UserStatusID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`UserID`, `UserFirstname`, `UserLastname`, `UserPhone`, `UserUsername`, `UserPassword`, `UserLatitude`, `UserLongitude`, `UserTimestamp`, `UserImageURL`, `UserStatusID`) VALUES
(1, 'Aisha', 'Ahmed', '+44 7911 567890', 'aishaahmed', 'iLikeApples', 51.4275, -0.304458, 0, 'https://static.generated.photos/vue-static/face-generator/landing/wall/13.jpg', 7),
(2, 'John', 'Williams', '+44 7911 123456', 'williams99', 'william', 51.3951, -0.311179, 0, 'https://static.generated.photos/vue-static/face-generator/landing/wall/12.jpg', 6),
(3, 'Zara', 'Patel', '+44 7911 876543', 'zarap1981', 'ce3c2b09f945', 51.3938, -0.351434, 0, 'https://static.generated.photos/vue-static/face-generator/landing/wall/19.jpg', 7),
(4, 'Mia', 'Brown', '+44 7911 234567', 'afternoonbrownies', 'browniesLover', 51.4479, -0.377076, 0, 'https://static.generated.photos/vue-static/face-generator/landing/wall/6.jpg', 7),
(5, 'Sarah', 'Lee', '+44 7911 345678', 'sara5678', 'fd798814da446', 51.448, -0.433595, 0, 'https://static.generated.photos/vue-static/face-generator/landing/wall/19.jpg', 8),
(6, 'David', 'Harris', '+44 7911 567987', 'davidHarris', '4ee7da42dc387', 51.5028, -0.323753, 0, 'https://static.generated.photos/vue-static/face-generator/landing/wall/16.jpg', 8),
(7, 'Olivia', 'Martinez', '+44 7911 678012', 'MartinezOlivia2', 'c3308bace0344', 51.4059, -0.246549, 0, 'https://static.generated.photos/vue-static/face-generator/landing/wall/23.jpg', 8),
(8, 'Sofia', 'Garcia', '+44 7911 432109', 'sofia.garcia', 'dadfad322661', 51.4194, -0.216422, 0, 'https://static.generated.photos/vue-static/face-generator/landing/wall/06.jpg', 7),
(9, 'Kai', 'Tanaka', '+44 7911 654321', 'tanakaK2020', 'ce5a5baa6762', 51.594, -0.163937, 0, 'https://static.generated.photos/vue-static/face-generator/landing/wall/21.jpg', 8),
(10, 'Daniel', 'Thompson', '+44 7911 765432', 'dantheman123', 'afbb96b11f642', 51.5092, -0.117491, 0, 'https://static.generated.photos/vue-static/face-generator/landing/wall/23.jpg', 7),
(11, 'Isabella', 'Robinson', '+44 7911 876210', 'isabella.a.robinson', 'ed19b4c8d7650', 51.4292, -0.037491, 0, 'https://static.generated.photos/vue-static/face-generator/landing/wall/01.jpg', 6),
(12, 'Jamal', 'Ali', '+44 7911 987654', 'AliBama888', 'c5368ccb98579', 51.5041, -0.231485, 0, 'https://static.generated.photos/vue-static/face-generator/landing/wall/20.jpg', 7),
(13, 'Mia', 'Lewis', '+44 7911 246810', 'isleoflewis', '9465b7c0dc148', 51.343, -0.211143, 0, 'https://static.generated.photos/vue-static/face-generator/landing/wall/1.jpg', 6),
(14, 'Ethan', 'Hall', '+44 7911 135790', 'ethanjeremyhall', '19b9f9e162612', 51.3982, -0.28985, 0, 'https://static.generated.photos/vue-static/face-generator/landing/wall/24.jpg', 6),
(15, 'Ava', 'Young', '+44 7911 369852', 'youngAtHeart', '86d1be2696297', 51.4013, -0.306287, 0, 'https://static.generated.photos/vue-static/face-generator/landing/wall/08.jpg', 6),
(16, 'Liam', 'Evans', '+44 7911 888444', 'liam9999', '341ed36081131', 51.5311, -0.224621, 0, 'https://static.generated.photos/vue-static/face-generator/landing/wall/02.jpg', 8),
(17, 'Priya', 'Sharma', '+44 7911 777333', 'PriyaSharma', 'ac43ad3bdd827', 51.5353, -0.224662, 0, 'https://static.generated.photos/vue-static/face-generator/landing/wall/13.jpg', 8),
(18, 'Noah', 'Hughes', '+44 7911 222555', 'NoahAndTheArk', 'ea32a09da8542', 51.3934, -0.315396, 0, 'https://static.generated.photos/vue-static/face-generator/landing/wall/11.jpg', 8),
(19, 'Fatima', 'Khan', '+44 7911 666999', 'FatimaKhan1980', '909475e84d863', 51.4911, 0.065929, 0, 'https://static.generated.photos/vue-static/face-generator/landing/wall/09.jpg', 8),
(20, 'Oliver', 'Wright', '+44 7911 333222', 'TheWrightBrother', 'ec44c1c674527', 51.3148, -0.550604, 0, 'https://static.generated.photos/vue-static/face-generator/landing/wall/17.jpg', 7),
(21, 'Pamela', 'Wilson', '+44 7911 123456', 'pamwilson', '5c618de66f240', 51.3925, -0.304399, 0, 'https://static.generated.photos/vue-static/face-generator/landing/wall/06.jpg', 8),
(22, 'James', 'Yuen', '+44 7911 987654', 'LostInSpace', 'cdd986caf1832', 51.3934, -0.315396, 0, 'https://static.generated.photos/vue-static/face-generator/landing/wall/19.jpg', 7),
(23, 'Graeme', 'Jones', '0208 417 2669', 'GraemeAJones', 'c7fa62a8e2644', 51.402, -0.302644, 0, 'https://static.generated.photos/vue-static/face-generator/landing/wall/17.jpg', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Activities`
--
ALTER TABLE `Activities`
  ADD PRIMARY KEY (`ActivityID`);

--
-- Indexes for table `Contacts`
--
ALTER TABLE `Contacts`
  ADD PRIMARY KEY (`ContactID`);

--
-- Indexes for table `Locations`
--
ALTER TABLE `Locations`
  ADD PRIMARY KEY (`LocationID`);

--
-- Indexes for table `Positions`
--
ALTER TABLE `Positions`
  ADD PRIMARY KEY (`PositionID`);

--
-- Indexes for table `Status`
--
ALTER TABLE `Status`
  ADD PRIMARY KEY (`StatusID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Activities`
--
ALTER TABLE `Activities`
  MODIFY `ActivityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Contacts`
--
ALTER TABLE `Contacts`
  MODIFY `ContactID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `Locations`
--
ALTER TABLE `Locations`
  MODIFY `LocationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `Positions`
--
ALTER TABLE `Positions`
  MODIFY `PositionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `Status`
--
ALTER TABLE `Status`
  MODIFY `StatusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
