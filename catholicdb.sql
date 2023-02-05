-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2023 at 11:21 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catholicdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` int(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(20, 5, '2022-05-16 22:06:20', 'Added choir Blaise NINDENKIMANA'),
(21, 4, '2022-05-16 22:08:24', 'Added choir Blaise NINDENKIMANA'),
(39, 1, '2022-06-04 14:56:48', 'Added subparish Kimihurura'),
(40, 1, '2022-06-04 14:57:22', 'Added community KIMBU'),
(41, 1, '2022-06-04 15:20:04', 'Added choir ji'),
(42, 1, '2022-06-04 15:22:07', 'Added Association tyert'),
(43, 1, '2022-06-04 16:07:16', 'Added member Molestiae aliquam ma'),
(44, 1, '2022-06-04 16:07:50', 'Edited Visitor Ciara Espinoza'),
(45, 1, '2022-07-02 22:22:42', 'Added member Tempore et aut dolo'),
(46, 1, '2022-07-02 22:22:54', 'Added member Enim sunt et molesti'),
(47, 1, '2022-07-02 22:54:59', 'Added subparish Hayfa Maddox'),
(48, 1, '2022-07-02 22:55:06', 'Added subparish Marshall Allen'),
(49, 1, '2022-07-02 22:55:13', 'Added subparish Bell Dunlap'),
(50, 1, '2022-07-02 22:56:19', 'Added subparish Merrill Hess'),
(51, 1, '2022-07-02 22:58:49', 'Added community Geoffrey Fisher'),
(52, 1, '2022-07-02 22:58:59', 'Added community Julian Hamilton'),
(53, 1, '2022-07-02 22:59:54', 'Added member Ab omnis hic sit duc'),
(54, 1, '2022-07-02 23:02:14', 'Added subparish Tasha Ortega'),
(55, 1, '2022-07-02 23:02:23', 'Added subparish Blake Fuller'),
(56, 1, '2022-07-02 23:02:31', 'Added subparish Ursa Tillman'),
(57, 1, '2022-07-02 23:02:44', 'Added community Ralph Klein'),
(58, 1, '2022-07-02 23:02:57', 'Added community Camilla Mayo'),
(59, 1, '2022-07-02 23:03:06', 'Added community Danielle Cunningham'),
(60, 1, '2022-07-02 23:03:46', 'Added member Ratione quas maxime '),
(61, 1, '2022-07-02 23:04:55', 'Added member +250783530924'),
(62, 1, '2022-07-02 23:15:19', 'Added member Reprehenderit eos e'),
(63, 1, '2022-07-02 23:15:31', 'Added member Id quidem soluta neq'),
(64, 1, '2022-07-05 23:27:45', 'Added member +250783530924'),
(65, 1, '2022-07-05 23:31:22', 'Added member Officiis suscipit an'),
(66, 1, '2022-07-15 14:11:53', 'Add System User Blaise'),
(67, 1, '2022-07-15 14:19:08', 'Edit system User Blaise'),
(68, 1, '2022-07-15 14:44:44', 'Added member +250783530967'),
(69, 0, '2022-08-06 09:48:49', 'Added member 675'),
(70, 1, '2022-08-06 19:03:20', 'Add System User Blaise'),
(71, 1, '2022-08-06 19:44:11', 'Added subparish Gisagara'),
(72, 1, '2022-08-06 19:46:48', 'Added choir Abasangiye urukundo'),
(73, 1, '2022-08-06 19:47:59', 'Added member +250783530924'),
(74, 1, '2022-08-06 19:59:28', 'Added member +250783530924'),
(75, 1, '2022-08-06 20:14:08', 'Added community nyabihanga'),
(76, 1, '2022-08-06 20:24:19', 'Added Association Scouts'),
(77, 1, '2022-08-06 21:52:31', 'Edited member Habimana Innocent'),
(78, 1, '2022-08-06 21:52:56', 'Edited member Tyrone Christian'),
(79, 1, '2022-08-06 21:54:05', 'Edited member Tyrone Christian'),
(80, 1, '2022-08-06 21:56:02', 'Edited member Larissa Kirk'),
(81, 1, '2022-08-06 21:56:24', 'Edited member jkjkdfjkdfj'),
(82, 1, '2022-08-06 21:56:49', 'Edited member jkjkdfjkdfj'),
(83, 1, '2022-08-06 21:57:20', 'Edited member Blaise'),
(84, 1, '2022-08-15 15:52:13', 'Edit system User Blaise'),
(85, 0, '2022-08-15 16:46:25', 'Added member 0725172665'),
(86, 1, '2022-08-17 18:52:24', 'Add Subscriber Blaise'),
(87, 0, '2022-08-17 19:05:13', 'Added member 0783530924'),
(88, 1, '2022-08-22 20:16:14', 'Add Subscriber Oung-Vang'),
(89, 0, '2022-08-25 16:13:26', 'Added member 0780689285'),
(90, 1, '2022-09-02 14:23:18', 'Added member 0789081737'),
(91, 1, '2022-09-02 14:24:07', 'Edited member RUNGEZEKURE'),
(92, 1, '2022-09-07 10:39:33', 'Add Subscriber Duterimbere'),
(93, 1, '2022-09-07 11:21:03', 'Added choir SAVERI'),
(94, 1, '2022-09-19 22:39:37', 'Edit system User Bigirumwami'),
(95, 1, '2022-09-19 23:32:22', 'Add Subscriber Blaise'),
(96, 0, '2022-09-29 16:32:55', 'Added member 0788493498'),
(97, 1, '2022-09-29 16:41:14', 'Add Subscriber Blaise'),
(98, 0, '2022-12-31 12:33:37', 'Added member '),
(99, 0, '2023-01-06 10:59:17', 'Added member 0788967579'),
(100, 0, '2023-01-06 12:16:15', 'Added member 0783843054'),
(101, 1, '2023-01-10 22:42:51', 'Added subparish Ntenyi'),
(102, 1, '2023-01-11 15:54:12', 'Edited member RUNGEZEKURE'),
(103, 1, '2023-01-11 19:38:22', 'Add Subscriber Rugunga'),
(104, 1, '2023-01-11 19:40:59', 'Added subparish Kabugo'),
(105, 1, '2023-01-11 19:41:44', 'Added community Kizibose'),
(106, 1, '2023-01-11 19:42:21', 'Added Association Scouts'),
(107, 1, '2023-01-11 19:43:54', 'Added member 0725956961'),
(108, 1, '2023-01-12 08:49:36', 'Add Parish Nyamata'),
(109, 1, '2023-01-12 08:50:14', 'Edit system User Nyamata'),
(110, 1, '2023-01-12 08:53:37', 'Edit Parish Nyamata'),
(111, 1, '2023-01-12 10:29:07', 'Add Parish Blaise'),
(112, 1, '2023-01-12 10:29:45', 'Edit Parish Blaise'),
(113, 0, '2023-01-13 17:39:00', 'Added member 0788530929'),
(114, 1, '2023-01-13 17:54:39', 'Added subparish GIKOMERO'),
(115, 1, '2023-01-13 18:15:35', 'Add Parish mk'),
(116, 1, '2023-01-17 10:47:26', '  requested transfer'),
(117, 1, '2023-01-17 12:22:26', '  requested transfer'),
(118, 0, '2023-01-17 12:25:36', 'Added member 0781944437'),
(119, 1, '2023-01-20 10:45:53', '  requested transfer to 12 '),
(120, 1, '2023-01-20 10:48:00', '  requested transfer to 6 '),
(121, 1, '2023-01-20 10:48:44', '  requested transfer to 8 '),
(122, 1, '2023-01-20 10:49:36', '  requested transfer to 9 '),
(123, 1, '2023-01-20 10:50:57', '  requested transfer to 8 '),
(124, 1, '2023-01-20 10:51:28', '  requested transfer to 8 '),
(125, 1, '2023-01-20 10:51:35', '  requested transfer to 13 '),
(126, 1, '2023-01-20 10:52:34', ' 0725172665 requested transfer to 8 '),
(127, 1, '2023-01-20 13:07:50', ' 0725172665 requested transfer to 9 '),
(128, 1, '2023-01-20 13:11:45', ' 0725172665 requested transfer to 6 '),
(129, 1, '2023-01-20 13:11:45', ' 0725172665 requested transfer to 6 '),
(130, 1, '2023-01-20 13:11:45', ' 0725172665 requested transfer to 6 '),
(131, 1, '2023-01-20 13:15:57', ' 0725172665 requested transfer to 9 '),
(132, 1, '2023-01-20 14:12:48', ' 0725172665 requested transfer to 19 '),
(133, 1, '2023-01-21 17:12:21', ' 0725172665 requested transfer to 8 '),
(134, 1, '2023-01-21 17:12:44', ' 0725172665 requested transfer to 12 '),
(135, 1, '2023-01-21 17:21:48', ' 0725172665 requested transfer to 6 '),
(136, 1, '2023-01-21 17:26:06', ' 0725172665 requested transfer to 6 '),
(137, 1, '2023-01-21 17:48:52', ' 0725172665 requested transfer to 13 '),
(138, 1, '2023-01-21 17:49:11', ' 0725172665 requested transfer to 8 '),
(139, 1, '2023-01-21 17:52:21', ' 0725172665 requested transfer to 18 '),
(140, 1, '2023-01-21 18:10:51', ' 0725172665 requested transfer to 9 '),
(141, 1, '2023-01-21 18:10:58', ' 0725172665 requested transfer to 20 '),
(142, 1, '2023-01-21 18:14:29', ' 0725172665 requested transfer to 19 '),
(143, 1, '2023-01-21 22:09:20', ' 0725172665 requested transfer to 20 '),
(144, 1, '2023-01-21 22:10:22', ' 0725172665 requested transfer to 8 '),
(145, 1, '2023-01-21 22:21:00', ' 0725172665 requested transfer to 9 '),
(146, 1, '2023-01-23 09:45:28', 'Edit Parish Innocent'),
(147, 1, '2023-01-23 09:49:32', 'Edit Parish Anaclet'),
(148, 1, '2023-01-23 09:50:20', 'Edit Parish Jean Bosco'),
(149, 1, '2023-01-23 09:58:07', 'Add Parish Anicet '),
(150, 1, '2023-01-23 10:04:06', 'Edit Parish Anaclet'),
(151, 1, '2023-01-24 10:32:26', ' 0725172665 requested transfer to 8 '),
(152, 1, '2023-01-24 10:50:00', ' 0725172665 requested transfer to 9 '),
(153, 1, '2023-01-24 17:48:41', ' 0725172665 requested transfer to 9 '),
(154, 1, '2023-01-24 18:16:16', ' 0725172665 requested transfer to 9 '),
(155, 1, '2023-01-24 18:16:28', ' 0725172665 requested transfer to 8 '),
(156, 1, '2023-01-24 18:16:42', ' 0725172665 requested transfer to 21 '),
(157, 1, '2023-01-24 18:16:51', ' 0725172665 requested transfer to 20 '),
(158, 1, '2023-01-24 18:41:27', ' 0725172665 requested transfer to 18 '),
(159, 1, '2023-01-24 19:37:49', ' 0725172665 requested transfer to 9 '),
(160, 1, '2023-01-24 19:45:34', ' 0725172665 requested transfer to 8 '),
(161, 1, '2023-01-24 22:07:52', ' 0783530924 requested transfer to 8 '),
(162, 1, '2023-01-24 22:44:12', ' 0783530924 requested transfer to Rulindo '),
(163, 1, '2023-01-24 22:48:09', ' 0783530924 requested transfer to Rulindo '),
(164, 1, '2023-01-24 22:48:09', ' 0783530924 requested transfer to Rulindo '),
(165, 1, '2023-01-24 22:48:09', ' 0783530924 requested transfer to Rulindo '),
(166, 1, '2023-01-24 22:48:09', ' 0783530924 requested transfer to Rulindo '),
(167, 1, '2023-01-24 22:48:09', ' 0783530924 requested transfer to Rulindo '),
(168, 1, '2023-01-24 22:48:09', ' 0783530924 requested transfer to Rulindo '),
(169, 1, '2023-01-24 22:48:10', ' 0783530924 requested transfer to Rulindo '),
(170, 1, '2023-01-24 22:48:10', ' 0783530924 requested transfer to Rulindo '),
(171, 1, '2023-01-24 22:48:10', ' 0783530924 requested transfer to Rulindo '),
(172, 1, '2023-01-24 22:48:11', ' 0783530924 requested transfer to Rulindo '),
(173, 1, '2023-01-24 22:48:11', ' 0783530924 requested transfer to Rulindo '),
(174, 1, '2023-01-24 22:48:11', ' 0783530924 requested transfer to Rulindo '),
(175, 1, '2023-01-24 22:48:11', ' 0783530924 requested transfer to Rulindo '),
(176, 1, '2023-01-24 22:48:11', ' 0783530924 requested transfer to Rulindo '),
(177, 1, '2023-01-24 22:53:03', ' 0783530924 requested transfer to mushaka '),
(178, 1, '2023-01-24 22:55:17', ' 0783530924 requested transfer to mushaka '),
(179, 1, '2023-01-24 22:58:54', ' 0783530924 requested transfer to Rulindo '),
(180, 1, '2023-01-25 00:10:04', ' 0725172665 requested transfer to mushaka '),
(181, 1, '2023-01-25 00:11:11', ' 0725172665 requested transfer to st_micheal ');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(128) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `role` varchar(34) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `adminthumbnails` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `firstname`, `lastname`, `username`, `password`, `role`, `status`, `adminthumbnails`) VALUES
(6, 'His Eminence Antoine', 'Kambanda', 'kigali', '1234', 'diocese', 1, 'uploads/logo2.jpg'),
(8, 'Father Aloys', 'Bigirimana', 'mushaka', '1234', 'parish', 1, 'uploads/Blaise_Photo.jpg'),
(9, 'Alfred', 'Bigirimana', 'st_famille', '1234', 'parish', 1, 'uploads/Blaise_Photo.jpg'),
(11, 'Rachel', 'Duterimbere', 'developer', '1234', '', 1, 'uploads/Rachel.jpeg'),
(12, 'Blaise', 'NINDENKIMANA', 'Regina_pacis', '1234', '', 1, 'images/NO-ImAGE-AVAILABLE.jpg'),
(13, 'Oung-Vang', 'Moise', 'TChad', '1234', '', 1, 'images/NO-ImAGE-AVAILABLE.jpg'),
(14, 'Duterimbere', 'Rachel', 'STANDREW', '1234', '', 1, 'images/NO-ImAGE-AVAILABLE.jpg'),
(15, 'Blaise', 'NINDENKIMANA', 'mibirizi', '1234', '', 1, 'images/NO-ImAGE-AVAILABLE.jpg'),
(16, 'Blaise', 'NINDENKIMANA', 'Kacyiru', '1234', '', 1, 'images/NO-ImAGE-AVAILABLE.jpg'),
(17, 'Rugunga', 'Rugunga', 'Rugunga', '1234', '', 1, 'images/NO-ImAGE-AVAILABLE.jpg'),
(18, 'Anaclet', 'Habimana', 'Rulindo', '1234', 'parish', 1, 'images/NO-ImAGE-AVAILABLE.jpg'),
(19, 'Innocent', 'Consolateur ', 'st_micheal', '1234', 'parish', 1, 'images/NO-ImAGE-AVAILABLE.jpg'),
(20, 'Jean Bosco', 'Harerimana', 'regina_pacis', '1234', 'parish', 1, 'images/NO-ImAGE-AVAILABLE.jpg'),
(21, 'Anicet ', 'Uwineza', 'karoli_Lwanga', '12347889988987888', 'parish', 0, 'images/NO-ImAGE-AVAILABLE.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `announcement_id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `times` date NOT NULL,
  `parish` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`announcement_id`, `title`, `content`, `times`, `parish`) VALUES
(1, 'notice', 'ALL FEES SHOULD BE PAID THROUGH THE ACCOUNTS GIVEN. NO CASH WILL BE ACCEPTED', '2016-10-24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `associations`
--

CREATE TABLE `associations` (
  `id` int(11) NOT NULL,
  `name` varchar(234) NOT NULL,
  `residence` varchar(234) NOT NULL,
  `representer` varchar(123) NOT NULL,
  `contact` varchar(112) NOT NULL,
  `parish` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `associations`
--

INSERT INTO `associations` (`id`, `name`, `residence`, `representer`, `contact`, `parish`) VALUES
(6, 'Scouts', 'Kigali', 'Kimjong', '0783530924', 8),
(7, 'Scouts', 'Rugunga', 'Cele', '0783530929', 17);

-- --------------------------------------------------------

--
-- Table structure for table `choirs`
--

CREATE TABLE `choirs` (
  `id` int(11) NOT NULL,
  `name` varchar(234) NOT NULL,
  `residence` varchar(232) NOT NULL,
  `representer` varchar(233) NOT NULL,
  `contact` varchar(19) NOT NULL,
  `parish` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `choirs`
--

INSERT INTO `choirs` (`id`, `name`, `residence`, `representer`, `contact`, `parish`) VALUES
(1, 'Abasangiye Urukundo', 'Mushaka', 'Habimana Innocent', '0783530924', 0),
(5, 'De Kigali', 'Kigali', 'bizimana', '0783530924', 0),
(7, 'Abasangiye urukundo', 'Parish', 'Hadidja', '0784636548', 8),
(8, 'SAVERI', 'karuruma', 'cELESTIN', '1234', 14);

-- --------------------------------------------------------

--
-- Table structure for table `community`
--

CREATE TABLE `community` (
  `id` int(11) NOT NULL,
  `name` varchar(233) NOT NULL,
  `subparish` int(11) NOT NULL,
  `representer` varchar(234) NOT NULL,
  `contact` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `community`
--

INSERT INTO `community` (`id`, `name`, `subparish`, `representer`, `contact`) VALUES
(1, 'Ralph Klein', 3, 'Aut labore iusto aut', 0),
(2, 'rebero', 1, 'Libero blanditiis ac', 0),
(3, 'Danielle Cunningham', 2, 'Lorem est at impedit', 0),
(4, 'nyabihanga', 4, 'Theoneste Nzeyimana', 783530924),
(5, 'Kizibose', 6, 'Anicet', 783530926);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(100) NOT NULL,
  `Title` text NOT NULL,
  `Date` date NOT NULL,
  `content` text NOT NULL,
  `parish` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `Title`, `Date`, `content`, `parish`) VALUES
(14, 'Sacrament celebrations', '2022-07-30', 'We will offer sacraments to childrens', 0),
(17, 'Baptism Preparation Seminar', '2023-01-31', '\nThe parish priests invites the  child\'s parents and godparents to the seminar of baptism preparation of their children. The seminar will take place  at parish on Tuesday from 08.00 PM to 09.00 PM. The registration for the course must be done at the Parish Office.', 8),
(18, 'Baptism celebrations', '2023-02-05', 'Dear Christians, the baptism celebrations will be held on Sunday, 05 2023.', 8),
(19, 'umuganda', '2023-01-28', 'Mwese muratumiwe mumuganda wurubyiruko', 9),
(20, 'jkll', '2023-01-12', 'Amasengesho \r\n', 9);

-- --------------------------------------------------------

--
-- Table structure for table `expence`
--

CREATE TABLE `expence` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `resoan` varchar(500) NOT NULL,
  `expense` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `parish` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expence`
--

INSERT INTO `expence` (`id`, `date`, `amount`, `resoan`, `expense`, `category`, `parish`, `CreationDate`) VALUES
(67, '2021-05-02', 700000, 'Water: buying water', 'Water', '2', 0, '2021-05-02 01:18:27'),
(68, '2021-05-02', 300000, ' Power: electricity bill', ' Power', '3', 0, '2021-05-02 01:22:01'),
(69, '2021-05-02', 500000, ' Papers: papers for printing letters', ' Papers', '2', 0, '2021-05-02 01:26:43'),
(70, '2021-05-21', 200000, ' Fuel: fueling church cars', ' Fuel', '3', 0, '2021-05-21 19:54:01'),
(71, '2021-08-25', 100000, 'Water: water payment', 'Water', '2', 0, '2021-08-25 14:33:15'),
(72, '2022-10-10', 123, ' Power: Transport from Kigali to Kayonza', ' Power', '3', 0, '2022-10-17 14:39:46'),
(73, '2023-01-07', 123, ' Transport: kjgk.', ' Transport', '3', 0, '2023-01-06 06:41:49');

-- --------------------------------------------------------

--
-- Table structure for table `expensecategory`
--

CREATE TABLE `expensecategory` (
  `id` int(11) NOT NULL,
  `categoryname` varchar(255) CHARACTER SET latin1 NOT NULL,
  `details` varchar(255) CHARACTER SET latin1 NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expensecategory`
--

INSERT INTO `expensecategory` (`id`, `categoryname`, `details`, `creation_date`) VALUES
(2, ' Utilities', 'Expense to support office', '2020-12-01 12:54:19'),
(3, ' Operations', 'Expenses during activities', '2020-12-01 12:54:19'),
(4, ' Others', 'other expenses', '2021-04-25 17:52:36');

-- --------------------------------------------------------

--
-- Table structure for table `expensename`
--

CREATE TABLE `expensename` (
  `id` int(11) NOT NULL,
  `categoryname` varchar(255) CHARACTER SET latin1 NOT NULL,
  `expensename` varchar(255) CHARACTER SET latin1 NOT NULL,
  `registeredby` varchar(255) CHARACTER SET latin1 NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expensename`
--

INSERT INTO `expensename` (`id`, `categoryname`, `expensename`, `registeredby`, `creation_date`) VALUES
(1, '2', 'Water', 'CEO', '2020-12-01 12:38:14'),
(2, '3', ' Power', 'CEO', '2020-12-01 12:38:14'),
(3, '2', ' Papers', 'CEO', '2020-12-01 12:38:14'),
(4, '2', ' Pens', 'CEO', '2020-12-01 12:38:14'),
(5, '3', ' Fuel', 'CEO', '2020-12-01 12:38:14'),
(6, '3', ' Airtime', 'CEO', '2020-12-01 12:38:14'),
(7, '3', ' Transport', 'CEO', '2020-12-01 12:52:47');

-- --------------------------------------------------------

--
-- Table structure for table `giving`
--

CREATE TABLE `giving` (
  `givingid` int(10) NOT NULL,
  `Amount` varchar(100) DEFAULT NULL,
  `phone_used` varchar(13) NOT NULL,
  `Trcode` varchar(100) DEFAULT NULL,
  `paytime` timestamp NULL DEFAULT current_timestamp(),
  `christian_username` varchar(10) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT '''pending''',
  `parish` int(11) NOT NULL,
  `ya` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `giving`
--

INSERT INTO `giving` (`givingid`, `Amount`, `phone_used`, `Trcode`, `paytime`, `christian_username`, `status`, `parish`, `ya`) VALUES
(35, '123', '0725172665', 'CB1F243E0242DB9A', '2023-01-10 21:17:02', '0725172665', 'paid', 8, 'yimh'),
(36, '123', '0783530924', '26562F6116C58969', '2023-01-10 22:10:34', '0725172665', 'paid', 8, 'yimh'),
(37, '123', '0725172665', 'B0AB54511750AB9A', '2023-01-10 22:51:41', '0789081737', 'paid', 8, 'yimh'),
(38, '123', '0725172665', '9741377567BCF35F', '2023-01-10 22:52:43', '0725172665', 'paid', 8, 'yimh');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `christian_id` int(10) NOT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `sname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Birthday` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `baptism_parish` varchar(200) NOT NULL,
  `Residence` varchar(100) DEFAULT NULL,
  `pob` varchar(100) DEFAULT NULL,
  `subparish` int(11) NOT NULL,
  `community` int(11) NOT NULL,
  `ministry` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `id` varchar(10) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`christian_id`, `fname`, `sname`, `lname`, `Gender`, `Birthday`, `mobile`, `password`, `baptism_parish`, `Residence`, `pob`, `subparish`, `community`, `ministry`, `email`, `thumbnail`, `id`, `date`) VALUES
(6, 'John', '', 'Habineza', 'Male', '1998-01-15', '078121212', '1234', '', '9', 'Nyamagana', 1, 3, 'abasikuti', 'mugabukomeye@gmail.com', 'uploads/none.png', '078121212', '2022-05-16 17:51:05'),
(18, 'Blaise', 'NINDENKIMANA', 'RUNGEZEKURE', 'Female', '2022-07-10', '+250783530967', '1234', '', NULL, 'Inventore atque atqu', 2, 1, 'Abasangiye Urukundo', 'bnindenki2@gmail.com', 'uploads/none.png', '+250783530', '2022-07-15 12:44:44'),
(19, 'nyracyjux', '', 'voxidezer', 'Male', '1993-02-04', '675', 'Pa$$w0rd!', 'wezehy', 'kosukozu', 'hocibipyga', 3, 1, 'Abasangiye Urukundo', 'biqe@mailinator.com', 'uploads/none.png', '675', '2022-08-06 07:48:48'),
(20, 'Joseph', '', 'Habiyaremye', 'Male', '2022-08-15', '0725172665', '1234', 'Kabasengerezi', '8', 'Rusizi', 2, 2, 'Abasangiye urukundo', 'jdjd@gmail.com', 'uploads/Amos (2).jpg', '0725172665', '2022-08-15 14:46:24'),
(21, 'Jeannette', '', 'Uwiringiyimana', 'Female', '2022-08-27', '0783530924', '1234', 'wezehy', '9', 'Nyamagana', 2, 2, 'Abasangiye Urukundo', 'jeantte@gmail.com', 'uploads/none.png', '0783530924', '2022-08-17 17:05:13'),
(22, 'Nshizirungu', '', 'Dieudonne', 'Male', '2022-08-26', '0780689285', '1234', 'Masizi', '8', 'Nyarugenge', 1, 1, 'Abasangiye Urukundo', 'nshizirungu203@gmail.com', 'uploads/none.png', '0780689285', '2022-08-25 14:13:26'),
(23, 'Pauline', 'RUNGEZEKURE', 'Abineza', 'Male', '1988-09-08', '0789081737', '1235', 'Kabasengerezi', '8', 'kigali', 4, 4, 'Abasangiye urukundo', 'rungezekurepauline@gmail.com', 'uploads/none.png', '0789081737', '2022-09-02 12:23:18'),
(24, 'Fils', '', 'Habimana', 'Male', '1998-06-23', '0788493498', '123', 'Karoli Lwanga', '8', 'Nyamagana', 2, 2, 'Abasangiye Urukundo', 'bnindenkimana2@gmail.com', 'uploads/none.png', '0788493498', '2022-09-29 14:32:55'),
(25, 'paci', '', 'Ibyimana', 'Male', '2022-12-15', '', '1234', 'Karoli Lwanga', '8', 'kim', 2, 2, 'SAVERI', '0788989032', 'uploads/none.png', '', '2022-12-31 10:33:37'),
(26, 'Celestin', '', 'Habineza', 'Male', '2023-01-03', '0788967579', '1234', 'Karoli Lwanga', '8', 'Nyamagana', 1, 2, 'SAVERI', 'cele@gmail.com', 'uploads/none.png', '0788967579', '2023-01-06 08:59:17'),
(27, 'Rachel', '', 'Duterimbere', 'Female', '2023-01-04', '0783843054', '1234', 'Karoli Lwanga', '9', 'Nyamagana', 3, 2, 'De Kigali', 'rachel@gmail.com', 'uploads/none.png', '0783843054', '2023-01-06 10:16:15'),
(28, 'Rachel', 'qwe', 'Duterimbere', 'Female', '2023-01-02', '0725956961', '1234', 'Karoli Lwanga', '17', 'Nyamagana', 6, 6, 'Scouts', 'dut@gmail.com', 'uploads/none.png', '0725956961', '2023-01-11 17:43:54'),
(29, 'Iddy', '', 'Kajeguhakwa', 'Male', '1985-05-14', '0788530929', '1234', 'st Micheal', '9', 'Nyarugenge', 2, 2, 'De Kigali', 'bnindenkimana2@gmail.com', 'uploads/none.png', '0788530929', '2023-01-13 15:38:59'),
(30, '', '', '', '', '', '', '', '', '', '', 0, 0, '', 'email', 'uploads/none.png', NULL, '2023-01-17 08:47:26'),
(31, '', '', '', '', '', '', '', '', '', '', 0, 0, '', 'email', 'uploads/none.png', NULL, '2023-01-17 10:22:26'),
(32, 'Sylivan', '', 'Rukundo', 'Male', '1995-06-22', '0781944437', '1234', 'Mushaka', '9', 'Rusizi', 2, 2, 'SAVERI', 'rukundo@gmail.com', 'uploads/none.png', '0781944437', '2023-01-17 10:25:36');

-- --------------------------------------------------------

--
-- Table structure for table `non_registered_user_offering`
--

CREATE TABLE `non_registered_user_offering` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `offeringtype` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `parish` int(11) NOT NULL,
  `trcode` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'pending',
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `non_registered_user_offering`
--

INSERT INTO `non_registered_user_offering` (`id`, `firstname`, `lastname`, `offeringtype`, `amount`, `mobile`, `parish`, `trcode`, `status`, `date`) VALUES
(1, 'Blaise', 'NINDENKIMANA', '9', 0, '123', 783530924, '', 'pending', '2022-09-20 22:59:29'),
(2, 'Blaise', 'NINDENKIMANA', 'Select Gender', 123, '0783530924', 0, '', 'paid', '2022-09-24 10:01:51'),
(3, 'Blaise', 'NINDENKIMANA', 'Select Gender', 123, '0783530924', 0, '', 'paid', '2022-09-24 10:01:43'),
(4, 'Blaise', 'NINDENKIMANA', 'Select Gender', 123, '0783530924', 12, '', 'pending', '2022-09-20 22:59:29'),
(5, 'Blaise', 'NINDENKIMANA', 'giving', 123, '0783530924', 9, '', 'pending', '2022-09-20 22:59:29'),
(6, 'Blaise', 'NINDENKIMANA', 'giving', 123, '0783530924', 8, '2D5D0E7F5BC9D535DA753DBD49307763', 'paid', '2023-01-06 09:02:32'),
(7, 'Blaise', 'NINDENKIMANA', 'offering', 123, '0783530924', 8, 'ADCD26470BAA070DF651BCE8AB11EED8', 'paid', '2022-09-24 10:44:21'),
(8, 'Blaise', 'NINDENKIMANA', 'offering', 2500, '0783530924', 9, 'F360468203E6FB148E19C55BAEE2B1AE', 'pending', '2022-12-24 07:37:45'),
(9, 'Blaise', 'NINDENKIMANA', 'offering', 123, '0783530924', 9, 'B85EA12E276D5C0C2F46FE5795859DEA', 'pending', '2022-12-24 07:38:24'),
(10, 'Blaise', 'NINDENKIMANA', 'giving', 4500, '0783530924', 9, 'FC3257C7232529A27A2E424D86E8C253', 'paid', '2023-01-24 22:09:11');

-- --------------------------------------------------------

--
-- Table structure for table `offering`
--

CREATE TABLE `offering` (
  `offeringid` int(10) NOT NULL,
  `year` int(11) NOT NULL,
  `Amount` varchar(100) DEFAULT NULL,
  `phone_used` varchar(13) DEFAULT NULL,
  `Trcode` varchar(100) DEFAULT NULL,
  `paytime` timestamp NULL DEFAULT current_timestamp(),
  `christian_username` varchar(10) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `parish` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offering`
--

INSERT INTO `offering` (`offeringid`, `year`, `Amount`, `phone_used`, `Trcode`, `paytime`, `christian_username`, `status`, `parish`) VALUES
(74, 2023, '123', '0780559733', '8766936AEA1C120E', '2023-01-10 21:00:20', '0725172665', 'paid', 8),
(75, 2023, '100', '0780559733', '589F84DEA872A345', '2023-01-10 21:00:47', '0725172665', 'paid', 8),
(76, 2023, '123', '0780559733', '9BD00621A33D7C0C', '2023-01-10 21:02:54', '0725172665', 'paid', 8),
(77, 2023, '123', '0783530924', '1917517C0B04A872', '2023-01-10 21:03:16', '0725172665', 'paid', 8),
(78, 2023, '123', '0783530924', '67478308DAA04C07', '2023-01-10 21:04:09', '0725172665', 'paid', 8),
(80, 2023, '123', '0780559733', 'D1B5F80BF898BE8D', '2023-01-10 22:09:22', '0725172665', 'paid', 8),
(81, 0, '123', '0725172665', '760DBC6829C6013E2FB4ED73C90A2C1E', '2023-01-10 22:44:56', '0725172665', 'paid', 8),
(82, 0, '123', '0725172665', 'AF23408B5C30ED905ABFC485A69FED61', '2023-01-10 22:45:21', '0725172665', 'paid', 8);

-- --------------------------------------------------------

--
-- Table structure for table `store_out`
--

CREATE TABLE `store_out` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `item` varchar(500) NOT NULL,
  `quantity` varchar(500) NOT NULL,
  `itemsoutvalue` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_out`
--

INSERT INTO `store_out` (`id`, `date`, `item`, `quantity`, `itemsoutvalue`) VALUES
(60, '2021-04-30', 'AC', '1', 100000),
(61, '2021-04-30', 'brooms', '2', 20000),
(62, '2021-05-11', 'brooms', '2', 20000),
(63, '2021-05-11', 'brooms', '1', 10000),
(64, '2021-08-01', 'liquid soap jellycans', '1', 20000),
(65, '2021-08-25', 'brooms', '5', 200000),
(66, '2022-12-16', 'soap', '23', 1288),
(67, '2023-01-14', 'soap', '12', 276);

-- --------------------------------------------------------

--
-- Table structure for table `store_stock`
--

CREATE TABLE `store_stock` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `item` varchar(500) NOT NULL,
  `quantity` varchar(500) NOT NULL,
  `rate` varchar(500) NOT NULL,
  `total` varchar(500) NOT NULL,
  `quantity_remaining` varchar(500) NOT NULL,
  `itemvalue` int(15) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_stock`
--

INSERT INTO `store_stock` (`id`, `date`, `item`, `quantity`, `rate`, `total`, `quantity_remaining`, `itemvalue`, `status`) VALUES
(12, '2021-08-25', 'brooms', '', '40000', '580000', '10', 400000, '1'),
(15, '2020-11-05', 'paint jellycans', '', '500000', '2500000', '3', 1500000, '1'),
(16, '2020-12-05', 'liquid soap jellycans', '', '20000', '200000', '6', 120000, '1'),
(17, '2020-12-07', 'AC', '', '100000', '1000000', '8', 800000, '1'),
(18, '2023-01-05', 'soap', '', '23', '603555', '70', 1610, '1');

-- --------------------------------------------------------

--
-- Table structure for table `subparish`
--

CREATE TABLE `subparish` (
  `id` int(11) NOT NULL,
  `subparish_name` varchar(238) NOT NULL,
  `representer` varchar(234) NOT NULL,
  `contact` varchar(23) NOT NULL,
  `parish` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subparish`
--

INSERT INTO `subparish` (`id`, `subparish_name`, `representer`, `contact`, `parish`) VALUES
(1, 'Tasha Ortega', 'Consectetur consequ', 'Dolor dolores pariat', 0),
(2, 'giti', 'A quia est incididun', 'Ipsum eu aspernatur', 0),
(3, 'Ursa Tillman', 'Laudantium tempora ', 'Praesentium qui do i', 0),
(4, 'Gisagara', 'Habimana Innocent', '0783530924', 8),
(5, 'Ntenyi', 'Gaspard', '07893847478', 8),
(6, 'Kabugo', 'Kim', '0783530924', 17),
(7, 'GIKOMERO', 'HYU', '0786764556', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tblitems`
--

CREATE TABLE `tblitems` (
  `id` int(11) NOT NULL,
  `item` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblitems`
--

INSERT INTO `tblitems` (`id`, `item`, `description`, `Creationdate`) VALUES
(1, 'brooms', 'sweeping brooms', '2021-04-30 01:15:55'),
(2, 'soap', 'washing soap', '2021-04-30 01:23:21'),
(3, 'Papers', 'Used in printing documents', '2021-07-26 03:51:14'),
(4, 'Car', 'RAA 345X', '2022-10-17 14:42:21'),
(5, 'Soap', 'jdkdjkdksdjkjkssddjk', '2023-01-06 06:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbltransfer`
--

CREATE TABLE `tbltransfer` (
  `id` int(11) NOT NULL,
  `christianId` varchar(110) NOT NULL,
  `previousParish` varchar(118) NOT NULL,
  `newParish` varchar(116) NOT NULL,
  `transfeReason` text NOT NULL,
  `transferCode` varchar(234) NOT NULL,
  `status` enum('incoming','outgoing','requested','wait_approval') NOT NULL,
  `requestDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sent_status` int(11) NOT NULL DEFAULT 0,
  `received_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbltransfer`
--

INSERT INTO `tbltransfer` (`id`, `christianId`, `previousParish`, `newParish`, `transfeReason`, `transferCode`, `status`, `requestDate`, `sent_status`, `received_status`) VALUES
(1, '0783530924', '8', '9', ' jioomokokl', '0F15922D', 'incoming', '2023-01-24 22:14:27', 1, 1),
(2, '0783530924', ' st_famille', 'Rulindo', ' jliupiokloioo;', 'AB759642', 'requested', '2023-01-24 21:13:05', 0, 0),
(3, '0725172665', ' mushaka', 'mushaka', ' 23456ygghj', '4D151C78', 'requested', '2023-01-24 22:10:04', 0, 0),
(4, '0725172665', ' mushaka', 'st_micheal', ' klkkkkkkkmkl', '02D4A055', 'requested', '2023-01-24 22:11:11', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tithe`
--

CREATE TABLE `tithe` (
  `titheid` int(10) NOT NULL,
  `Amount` varchar(100) DEFAULT NULL,
  `phone_used` varchar(13) DEFAULT NULL,
  `Trcode` varchar(100) DEFAULT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'pending',
  `paytime` timestamp NULL DEFAULT current_timestamp(),
  `christian_username` varchar(10) DEFAULT NULL,
  `year` varchar(46) NOT NULL,
  `parish` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tithe`
--

INSERT INTO `tithe` (`titheid`, `Amount`, `phone_used`, `Trcode`, `status`, `paytime`, `christian_username`, `year`, `parish`) VALUES
(1, '123', '10', 'B1CCDB1FDB57B34C', 'paid', '2023-01-24 16:40:21', '0725172665', '2023-07', 9),
(2, '78', '12', '0D362DB44FE826BA', 'paid', '2023-01-24 17:36:51', '0725172665', '2023-04', 18);

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(128) DEFAULT NULL,
  `admin_id` int(128) DEFAULT NULL,
  `member_id` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `admin_id`, `member_id`) VALUES
(10, 'admin', '2022-06-04 11:12:35', '2022-07-15 14:09:21', 5, NULL),
(11, 'admin', '2022-06-04 12:11:01', '2022-07-15 14:09:21', 5, NULL),
(13, 'admin', '2022-06-04 13:51:15', '2022-07-15 14:09:21', 5, NULL),
(14, 'admin', '2022-06-04 19:42:24', '2022-07-15 14:09:21', 5, NULL),
(15, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(16, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(17, 'admin', '2022-07-02 21:36:24', '2022-07-15 14:09:21', 5, NULL),
(18, 'admin', '2022-07-05 23:24:50', '2022-07-15 14:09:21', 5, NULL),
(19, '078121212', '', NULL, 78121212, NULL),
(20, 'admin', '2022-07-09 12:04:58', '2022-07-15 14:09:21', 5, NULL),
(21, '078121212', '', NULL, 78121212, NULL),
(22, 'admin', '2022-07-09 12:12:47', '2022-07-15 14:09:21', 5, NULL),
(23, '078121212', '', NULL, 78121212, NULL),
(24, 'admin', '2022-07-14 09:58:28', '2022-07-15 14:09:21', 5, NULL),
(25, 'admin', '2022-07-14 10:59:45', '2022-07-15 14:09:21', 5, NULL),
(26, 'admin', '2022-07-14 11:28:28', '2022-07-15 14:09:21', 5, NULL),
(27, '078121212', '', NULL, 78121212, NULL),
(28, 'admin', '2022-07-14 14:44:30', '2022-07-15 14:09:21', 5, NULL),
(29, '078121212', '', NULL, 78121212, NULL),
(30, 'admin', '2022-07-15 14:08:09', '2022-07-15 14:09:21', 5, NULL),
(31, 'admin', '2022-07-15 14:11:30', '2023-01-23 09:05:17', 6, NULL),
(32, '078121212', '', NULL, 78121212, NULL),
(33, 'admin', '2022-07-15 14:29:19', '2023-01-23 09:05:17', 6, NULL),
(34, 'admin', '2022-07-15 16:30:04', '2023-01-23 09:05:17', 6, NULL),
(35, '078121212', '', NULL, 78121212, NULL),
(36, 'admin', '2022-08-06 09:27:36', '2023-01-23 09:05:17', 6, NULL),
(37, 'admin', '2022-08-06 09:54:33', '2023-01-23 09:05:17', 6, NULL),
(38, 'admin', '2022-08-06 15:51:15', '2023-01-23 09:05:17', 6, NULL),
(39, 'admin', '2022-08-14 22:07:17', '2023-01-23 09:05:17', 6, NULL),
(40, '+250783530967', '', '2022-08-14', 250783530, NULL),
(41, '+250783530967', '', NULL, 250783530, NULL),
(42, '+250783530967', '', NULL, 250783530, NULL),
(43, 'admin', '2022-08-14 22:23:03', '2023-01-23 09:05:17', 6, NULL),
(44, '+250783530967', '', NULL, 250783530, NULL),
(45, 'admin', '2022-08-14 22:31:24', '2023-01-23 09:05:17', 6, NULL),
(46, '+250783530967', '', NULL, 250783530, NULL),
(47, 'admin', '2022-08-14 22:33:38', '2023-01-23 09:05:17', 6, NULL),
(48, 'admin', '2022-08-14 22:37:28', '2023-01-23 09:05:17', 6, NULL),
(49, '+250783530967', '', NULL, 250783530, NULL),
(50, 'admin', '2022-08-15 00:04:00', '2023-01-23 09:05:17', 6, NULL),
(51, '+250783530967', '', NULL, 250783530, NULL),
(52, 'admin', '2022-08-15 00:05:50', '2023-01-23 09:05:17', 6, NULL),
(53, '+250783530967', '', NULL, 250783530, NULL),
(54, '+250783530967', '', NULL, 250783530, NULL),
(55, 'developer', '2022-08-15 12:33:26', '2023-01-23 10:00:37', 11, NULL),
(56, 'developer', '2022-08-15 12:33:26', '2023-01-23 10:00:37', 11, NULL),
(57, 'developer', '2022-08-15 12:34:50', '2023-01-23 10:00:37', 11, NULL),
(58, 'mushaka', '2022-08-15 15:09:09', '2023-01-24 23:13:46', 8, NULL),
(59, 'admin', '2022-08-15 15:54:04', '2023-01-23 09:05:17', 6, NULL),
(60, 'mushaka', '2022-08-15 16:04:45', '2023-01-24 23:13:46', 8, NULL),
(61, 'mushaka', '2022-08-15 16:13:56', '2023-01-24 23:13:46', 8, NULL),
(62, 'mushaka', '2022-08-15 16:27:05', '2023-01-24 23:13:46', 8, NULL),
(63, 'mushaka', '2022-08-15 16:36:21', '2023-01-24 23:13:46', 8, NULL),
(64, '+250783530967', '', NULL, 250783530, NULL),
(65, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(66, '+250783530967', '', NULL, 250783530, NULL),
(67, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(68, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(69, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(70, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(71, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(72, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(73, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(74, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(75, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(76, 'mushaka', '2022-08-16 15:38:05', '2023-01-24 23:13:46', 8, NULL),
(77, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(78, 'mushaka', '2022-08-16 16:14:00', '2023-01-24 23:13:46', 8, NULL),
(79, 'Regina_pacis', '2022-08-17 18:53:14', '2022-08-17 18:53:42', 12, NULL),
(80, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(81, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(82, '0783530924', '', '2023-01-24 22:01:44', 783530924, NULL),
(83, 'mushaka', '2022-08-17 19:47:28', '2023-01-24 23:13:46', 8, NULL),
(84, 'mushaka', '2022-08-18 15:36:21', '2023-01-24 23:13:46', 8, NULL),
(85, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(86, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(87, 'mushaka', '2022-08-22 20:12:59', '2023-01-24 23:13:46', 8, NULL),
(88, 'Tchad', '2022-08-22 20:16:36', '2022-08-22 20:16:58', 13, NULL),
(89, 'mushaka', '2022-08-22 20:17:04', '2023-01-24 23:13:46', 8, NULL),
(90, 'st_famille', '2022-08-22 20:17:23', '2023-01-24 23:09:25', 9, NULL),
(91, 'mushaka', '2022-08-25 16:10:44', '2023-01-24 23:13:46', 8, NULL),
(92, '0780689285', '', NULL, 780689285, NULL),
(93, 'mushaka', '2022-08-25 16:20:10', '2023-01-24 23:13:46', 8, NULL),
(94, 'mushaka', '2022-09-02 14:15:24', '2023-01-24 23:13:46', 8, NULL),
(95, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(96, 'STANDREW', '2022-09-07 11:20:16', '2023-01-21 21:16:40', 14, NULL),
(97, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(98, 'mushaka', '2022-09-14 11:54:34', '2023-01-24 23:13:46', 8, NULL),
(99, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(100, 'mushaka', '2022-09-20 20:09:53', '2023-01-24 23:13:46', 8, NULL),
(101, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(102, 'mushaka', '2022-09-21 00:33:00', '2023-01-24 23:13:46', 8, NULL),
(103, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(104, 'STANDREW', '2022-09-21 21:09:40', '2023-01-21 21:16:40', 14, NULL),
(105, 'STANDREW', '2022-09-21 21:25:05', '2023-01-21 21:16:40', 14, NULL),
(106, 'mushaka', '2022-09-21 21:26:26', '2023-01-24 23:13:46', 8, NULL),
(107, 'mushaka', '2022-09-24 10:31:44', '2023-01-24 23:13:46', 8, NULL),
(108, 'mushaka', '2022-09-27 10:18:00', '2023-01-24 23:13:46', 8, NULL),
(109, '0788493498', '', NULL, 788493498, NULL),
(110, 'mushaka', '2022-09-29 16:36:19', '2023-01-24 23:13:46', 8, NULL),
(111, '0788493498', '', NULL, 788493498, NULL),
(112, 'STANDREW', '2022-09-29 16:39:04', '2023-01-21 21:16:40', 14, NULL),
(113, 'kacyiru', '2022-09-29 16:41:32', '2022-09-29 16:41:45', 16, NULL),
(114, 'mushaka', '2022-10-14 10:02:30', '2023-01-24 23:13:46', 8, NULL),
(115, '078121212', '', NULL, 78121212, NULL),
(116, 'mushaka', '2022-10-15 10:20:41', '2023-01-24 23:13:46', 8, NULL),
(117, 'mushaka', '2022-10-15 10:26:29', '2023-01-24 23:13:46', 8, NULL),
(118, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(119, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(120, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(121, '0725172665', '29/10/2022', '2023-01-22 14:51:41', 725172665, NULL),
(122, '0725172665', '29/10/2022', '2023-01-22 14:51:41', 725172665, NULL),
(123, '0725172665', '29/10/2022', '2023-01-22 14:51:41', 725172665, NULL),
(124, '0725172665', '29/10/2022', '2023-01-22 14:51:41', 725172665, NULL),
(125, '0725172665', '02/11/2022', '2023-01-22 14:51:41', 725172665, NULL),
(126, '0725172665', '20/11/2022', '2023-01-22 14:51:41', 725172665, NULL),
(127, '0725172665', '07/12/2022', '2023-01-22 14:51:41', 725172665, NULL),
(128, '0783530924', '07/12/2022', '2023-01-24 22:01:44', 783530924, NULL),
(129, 'mushaka', '2022-12-07 17:54:04', '2023-01-24 23:13:46', 8, NULL),
(130, '0725172665', '07/12/2022', '2023-01-22 14:51:41', 725172665, NULL),
(131, 'st_famille', '2022-12-07 18:02:29', '2023-01-24 23:09:25', 9, NULL),
(132, '0783530924', '07/12/2022', '2023-01-24 22:01:44', 783530924, NULL),
(133, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(134, '0725172665', '24/12/2022', '2023-01-22 14:51:41', 725172665, NULL),
(135, '0725172665', '24/12/2022', '2023-01-22 14:51:41', 725172665, NULL),
(136, 'st_famille', '2022-12-24 18:14:04', '2023-01-24 23:09:25', 9, NULL),
(137, '0725172665', '31/12/2022', '2023-01-22 14:51:41', 725172665, NULL),
(138, '0725172665', '06/01/2023', '2023-01-22 14:51:41', 725172665, NULL),
(139, 'mushaka', '2023-01-06 09:55:42', '2023-01-24 23:13:46', 8, NULL),
(140, '0788967579', '', '2023-01-06 10:07:04', 788967579, NULL),
(141, 'mushaka', '2023-01-06 10:01:09', '2023-01-24 23:13:46', 8, NULL),
(142, 'mushaka', '2023-01-06 10:03:36', '2023-01-24 23:13:46', 8, NULL),
(143, 'mushaka', '2023-01-06 10:05:01', '2023-01-24 23:13:46', 8, NULL),
(144, '0788967579', '', '2023-01-06 10:07:04', 788967579, NULL),
(145, 'st_famille', '2023-01-06 10:07:11', '2023-01-24 23:09:25', 9, NULL),
(146, '0783530924', '', '2023-01-24 22:01:44', 783530924, NULL),
(147, '0783530924', '', '2023-01-24 22:01:44', 783530924, NULL),
(148, 'st_famille', '2023-01-06 10:18:16', '2023-01-24 23:09:25', 9, NULL),
(149, '0783530924', '', '2023-01-24 22:01:44', 783530924, NULL),
(150, '0783530924', '', '2023-01-24 22:01:44', 783530924, NULL),
(151, '0783530924', '', '2023-01-24 22:01:44', 783530924, NULL),
(152, '0783530924', '06/01/2023', '2023-01-24 22:01:44', 783530924, NULL),
(153, '0783843054', '', NULL, 783843054, NULL),
(154, 'st_famille', '2023-01-06 11:23:21', '2023-01-24 23:09:25', 9, NULL),
(155, '0783843054', '', NULL, 783843054, NULL),
(156, 'st_famille', '2023-01-08 12:37:07', '2023-01-24 23:09:25', 9, NULL),
(157, 'st_famille', '2023-01-08 12:37:21', '2023-01-24 23:09:25', 9, NULL),
(158, 'st_famille', '2023-01-08 12:39:12', '2023-01-24 23:09:25', 9, NULL),
(159, 'st_famille', '2023-01-08 17:18:51', '2023-01-24 23:09:25', 9, NULL),
(160, 'st_famille', '2023-01-08 18:57:26', '2023-01-24 23:09:25', 9, NULL),
(161, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(162, 'st_famille', '2023-01-08 22:20:13', '2023-01-24 23:09:25', 9, NULL),
(163, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(164, 'st_famille', '2023-01-09 21:21:34', '2023-01-24 23:09:25', 9, NULL),
(165, 'mushaka', '2023-01-10 21:42:01', '2023-01-24 23:13:46', 8, NULL),
(166, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(167, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(168, 'mushaka', '2023-01-10 23:29:30', '2023-01-24 23:13:46', 8, NULL),
(169, 'mushaka', '2023-01-11 14:42:29', '2023-01-24 23:13:46', 8, NULL),
(170, 'rugunga', '2023-01-11 18:38:59', '2023-01-11 18:52:09', 17, NULL),
(171, '0725956961', '', NULL, 725956961, NULL),
(172, 'Rugunga', '2023-01-11 18:51:06', '2023-01-11 18:52:09', 17, NULL),
(173, '0725956961', '', NULL, 725956961, NULL),
(174, 'kigali', '2023-01-12 07:20:19', '2023-01-23 09:05:17', 6, NULL),
(175, 'mushaka', '2023-01-12 07:23:21', '2023-01-24 23:13:46', 8, NULL),
(176, 'kigali', '2023-01-12 07:27:08', '2023-01-23 09:05:17', 6, NULL),
(177, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(178, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(179, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(180, '0788530929', '', NULL, 788530929, NULL),
(181, 'st_famille', '2023-01-13 16:52:11', '2023-01-24 23:09:25', 9, NULL),
(182, '0788530929', '', NULL, 788530929, NULL),
(183, 'kigali', '2023-01-13 17:14:30', '2023-01-23 09:05:17', 6, NULL),
(184, 'kamabuye', '2023-01-13 17:16:38', '2023-01-13 17:17:53', 20, NULL),
(185, 'developer', '2023-01-13 17:18:04', '2023-01-23 10:00:37', 11, NULL),
(186, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(187, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(188, '0781944437', '', NULL, 781944437, NULL),
(189, 'st_famille', '2023-01-17 11:28:09', '2023-01-24 23:09:25', 9, NULL),
(190, '0781944437', '', NULL, 781944437, NULL),
(191, 'st_famille', '2023-01-17 11:34:22', '2023-01-24 23:09:25', 9, NULL),
(192, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(193, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(194, 'mushaka', '2023-01-21 16:54:54', '2023-01-24 23:13:46', 8, NULL),
(195, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(196, 'mushaka', '2023-01-21 17:15:01', '2023-01-24 23:13:46', 8, NULL),
(197, 'mushaka', '2023-01-21 18:23:43', '2023-01-24 23:13:46', 8, NULL),
(198, 'mushaka', '2023-01-21 18:24:33', '2023-01-24 23:13:46', 8, NULL),
(199, 'mushaka', '2023-01-21 18:25:03', '2023-01-24 23:13:46', 8, NULL),
(200, 'mushaka', '2023-01-21 18:26:33', '2023-01-24 23:13:46', 8, NULL),
(201, 'st_famille', '2023-01-21 18:31:17', '2023-01-24 23:09:25', 9, NULL),
(202, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(203, 'STANDREW', '2023-01-21 21:16:18', '2023-01-21 21:16:40', 14, NULL),
(204, 'st_famille', '2023-01-21 21:16:48', '2023-01-24 23:09:25', 9, NULL),
(205, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(206, 'st_famille', '2023-01-21 21:27:05', '2023-01-24 23:09:25', 9, NULL),
(207, 'mushaka', '2023-01-21 21:27:58', '2023-01-24 23:13:46', 8, NULL),
(208, 'st_famille', '2023-01-21 21:28:57', '2023-01-24 23:09:25', 9, NULL),
(209, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(210, 'st_famille', '2023-01-21 21:30:29', '2023-01-24 23:09:25', 9, NULL),
(211, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(212, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(213, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(214, 'mushaka', '2023-01-22 14:18:47', '2023-01-24 23:13:46', 8, NULL),
(215, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(216, '0725172665', '', '2023-01-22 14:51:41', 725172665, NULL),
(217, 'mushaka', '2023-01-22 14:51:48', '2023-01-24 23:13:46', 8, NULL),
(218, '0725172665', '', NULL, 725172665, NULL),
(219, '0725172665', '', NULL, 725172665, NULL),
(220, 'mushaka', '2023-01-22 18:05:33', '2023-01-24 23:13:46', 8, NULL),
(221, 'st_famille', '2023-01-22 18:06:50', '2023-01-24 23:09:25', 9, NULL),
(222, 'mushaka', '2023-01-23 07:05:26', '2023-01-24 23:13:46', 8, NULL),
(223, 'kigali', '2023-01-23 08:33:23', '2023-01-23 09:05:17', 6, NULL),
(224, 'kigali', '2023-01-23 08:42:06', '2023-01-23 09:05:17', 6, NULL),
(225, 'developer', '2023-01-23 09:05:24', '2023-01-23 10:00:37', 11, NULL),
(226, 'mushaka', '2023-01-23 11:18:18', '2023-01-24 23:13:46', 8, NULL),
(227, '0725172665', '2023-01-23 11:22:42', NULL, NULL, '725172665'),
(228, 'mushaka', '2023-01-23 14:28:21', '2023-01-24 23:13:46', 8, NULL),
(229, '0725172665', '', NULL, 725172665, NULL),
(230, '0725172665', '', NULL, 725172665, NULL),
(231, '0725172665', '', NULL, 725172665, NULL),
(232, 'mushaka', '2023-01-23 14:46:10', '2023-01-24 23:13:46', 8, NULL),
(233, '0725172665', '', NULL, 725172665, NULL),
(234, '0725172665', '', NULL, 725172665, NULL),
(235, '0725172665', '', NULL, 725172665, NULL),
(236, '0725172665', '', NULL, 725172665, NULL),
(237, '0725172665', '', NULL, 725172665, NULL),
(238, '0725172665', '', NULL, 725172665, NULL),
(239, '0725172665', '', NULL, 725172665, NULL),
(240, 'mushaka', '2023-01-24 09:34:26', '2023-01-24 23:13:46', 8, NULL),
(241, '0725172665', '', NULL, 725172665, NULL),
(242, 'st_famille', '2023-01-24 09:50:20', '2023-01-24 23:09:25', 9, NULL),
(243, 'mushaka', '2023-01-24 09:50:42', '2023-01-24 23:13:46', 8, NULL),
(244, 'st_famille', '2023-01-24 09:51:07', '2023-01-24 23:09:25', 9, NULL),
(245, '0725172665', '', NULL, 725172665, NULL),
(246, 'mushaka', '2023-01-24 16:49:40', '2023-01-24 23:13:46', 8, NULL),
(247, 'st_famille', '2023-01-24 16:50:12', '2023-01-24 23:09:25', 9, NULL),
(248, '0725172665', '', NULL, 725172665, NULL),
(249, 'mushaka', '2023-01-24 17:17:25', '2023-01-24 23:13:46', 8, NULL),
(250, 'st_famille', '2023-01-24 17:18:15', '2023-01-24 23:09:25', 9, NULL),
(251, '0725172665', '', NULL, 725172665, NULL),
(252, '0725172665', '', NULL, 725172665, NULL),
(253, '0725172665', '', NULL, 725172665, NULL),
(254, 'st_famille', '2023-01-24 17:41:59', '2023-01-24 23:09:25', 9, NULL),
(255, 'Rulindo', '2023-01-24 17:42:50', '2023-01-24 18:38:37', 18, NULL),
(256, 'Rulindo', '2023-01-24 17:43:20', '2023-01-24 18:38:37', 18, NULL),
(257, '0725172665', '', NULL, 725172665, NULL),
(258, 'st_famille', '2023-01-24 18:38:02', '2023-01-24 23:09:25', 9, NULL),
(259, 'Rulindo', '2023-01-24 18:38:19', '2023-01-24 18:38:37', 18, NULL),
(260, 'st_famille', '2023-01-24 18:38:44', '2023-01-24 23:09:25', 9, NULL),
(261, '0725172665', '', NULL, 725172665, NULL),
(262, 'st_famille', '2023-01-24 18:45:53', '2023-01-24 23:09:25', 9, NULL),
(263, 'mushaka', '2023-01-24 18:46:21', '2023-01-24 23:13:46', 8, NULL),
(264, '0725172665', '', NULL, 725172665, NULL),
(265, '0725172665', '', NULL, 725172665, NULL),
(266, '0783530924', '', '2023-01-24 22:01:44', 783530924, NULL),
(267, 'st_famille', '2023-01-24 21:08:14', '2023-01-24 23:09:25', 9, NULL),
(268, '0783530924', '', '2023-01-24 22:01:44', 783530924, NULL),
(269, 'st_famille', '2023-01-24 21:59:16', '2023-01-24 23:09:25', 9, NULL),
(270, '0783530924', '', '2023-01-24 22:01:44', 783530924, NULL),
(271, 'st_famille', '2023-01-24 22:01:52', '2023-01-24 23:09:25', 9, NULL),
(272, '0725172665', '', NULL, 725172665, NULL),
(273, 'mushaka', '2023-01-24 23:11:53', '2023-01-24 23:13:46', 8, NULL),
(274, '0783530924', '', NULL, 783530924, NULL),
(275, 'mushaka', '2023-01-24 23:13:31', '2023-01-24 23:13:46', 8, NULL),
(276, 'st_famille', '2023-01-24 23:13:52', NULL, 9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `id` int(10) NOT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Birthday` varchar(100) DEFAULT NULL,
  `Residence` varchar(100) DEFAULT NULL,
  `host_parish` int(11) NOT NULL,
  `pob` varchar(100) DEFAULT NULL,
  `ministry` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`id`, `fname`, `lname`, `Gender`, `Birthday`, `Residence`, `host_parish`, `pob`, `ministry`, `mobile`, `thumbnail`) VALUES
(6, 'JadaKabera', 'Nasim kim', 'male', '1994-12-06', 'Accusamus cupiditate', 12, 'Lorem perspiciatis ', 'ki', 'Molestiae aliquam ma', 'uploads/none.png'),
(7, 'Blaise', 'NINDENKIMANA', '', '2022-07-22', 'Mushaka', 0, 'Kigali', 'Sacrament celebrations', '+250783530924', 'uploads/none.png'),
(8, 'Unity Mcfarland', 'Molly Bolton', 'Female', '1990-02-07', 'Et in distinctio Se', 0, 'Reiciendis amet eaq', 'Sacrament celebrations', 'Officiis suscipit an', 'uploads/none.png'),
(9, 'Blaise', 'NINDENKIMANA', 'male', '2022-08-26', 'Mushaka', 9, 'Kigali', '', '+250783530924', 'uploads/none.png'),
(10, 'abimana', 'NINDENKIMANA', 'male', '2022-08-26', 'Kigali', 8, 'Rusizi', '', '+250783530924', 'uploads/none.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`announcement_id`),
  ADD KEY `parish` (`parish`);

--
-- Indexes for table `associations`
--
ALTER TABLE `associations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parish` (`parish`);

--
-- Indexes for table `choirs`
--
ALTER TABLE `choirs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parish` (`parish`);

--
-- Indexes for table `community`
--
ALTER TABLE `community`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subparish` (`subparish`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expence`
--
ALTER TABLE `expence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parish` (`parish`);

--
-- Indexes for table `expensecategory`
--
ALTER TABLE `expensecategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expensename`
--
ALTER TABLE `expensename`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giving`
--
ALTER TABLE `giving`
  ADD PRIMARY KEY (`givingid`),
  ADD UNIQUE KEY `Trcode` (`Trcode`),
  ADD UNIQUE KEY `Trcode_2` (`Trcode`),
  ADD KEY `na` (`christian_username`),
  ADD KEY `parish` (`parish`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`christian_id`),
  ADD KEY `subparish` (`subparish`),
  ADD KEY `community` (`community`),
  ADD KEY `Residence` (`Residence`);

--
-- Indexes for table `non_registered_user_offering`
--
ALTER TABLE `non_registered_user_offering`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parish` (`parish`);

--
-- Indexes for table `offering`
--
ALTER TABLE `offering`
  ADD PRIMARY KEY (`offeringid`),
  ADD UNIQUE KEY `Trcode` (`Trcode`),
  ADD KEY `parish` (`parish`);

--
-- Indexes for table `store_out`
--
ALTER TABLE `store_out`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_stock`
--
ALTER TABLE `store_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subparish`
--
ALTER TABLE `subparish`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parish` (`parish`);

--
-- Indexes for table `tblitems`
--
ALTER TABLE `tblitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltransfer`
--
ALTER TABLE `tbltransfer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `christianId` (`christianId`);

--
-- Indexes for table `tithe`
--
ALTER TABLE `tithe`
  ADD PRIMARY KEY (`titheid`),
  ADD UNIQUE KEY `Trcode` (`Trcode`),
  ADD KEY `parish` (`parish`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `host_parish` (`host_parish`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `associations`
--
ALTER TABLE `associations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `choirs`
--
ALTER TABLE `choirs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `community`
--
ALTER TABLE `community`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `expence`
--
ALTER TABLE `expence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `expensecategory`
--
ALTER TABLE `expensecategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expensename`
--
ALTER TABLE `expensename`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `giving`
--
ALTER TABLE `giving`
  MODIFY `givingid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `christian_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `non_registered_user_offering`
--
ALTER TABLE `non_registered_user_offering`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `offering`
--
ALTER TABLE `offering`
  MODIFY `offeringid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `store_out`
--
ALTER TABLE `store_out`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `store_stock`
--
ALTER TABLE `store_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `subparish`
--
ALTER TABLE `subparish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblitems`
--
ALTER TABLE `tblitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbltransfer`
--
ALTER TABLE `tbltransfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tithe`
--
ALTER TABLE `tithe`
  MODIFY `titheid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
