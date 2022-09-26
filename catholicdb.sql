-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2022 at 09:30 PM
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
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `Bank_Name` varchar(200) DEFAULT NULL,
  `Account_Number` varchar(200) DEFAULT NULL,
  `Branch` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `Bank_Name`, `Account_Number`, `Branch`) VALUES
(1, 'LIPA NA MPESA', '11111110', 'Safaricom'),
(2, 'COPARATIVE BANK', '0213289993', 'Meru'),
(3, 'NATIONAL BANK', '099887765666', 'Meru'),
(4, 'COMMERCIAL BANK', '3476374654623', 'Meru'),
(5, 'STARDAND CHARTER', '345646332', 'Meru'),
(6, 'EQUIT BANK', '21242423432', 'Meru');

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
(95, 1, '2022-09-19 23:32:22', 'Add Subscriber Blaise');

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
  `status` int(11) NOT NULL DEFAULT 1,
  `adminthumbnails` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `firstname`, `lastname`, `username`, `password`, `status`, `adminthumbnails`) VALUES
(6, 'Blaise', 'NINDENKIMANA', 'admin', '1234', 1, ''),
(8, 'Baptiste', 'Bigirumwami', 'mushaka', '1234', 1, 'uploads/homepage.png'),
(9, 'Alfred', 'Bigirimana', 'st_famille', '1234', 1, ''),
(11, 'Bigirumwami', 'Jean Baptiste', 'developer', '1234', 1, 'uploads/cisco.JPG'),
(12, 'Blaise', 'NINDENKIMANA', 'Regina_pacis', '1234', 1, 'images/NO-ImAGE-AVAILABLE.jpg'),
(13, 'Oung-Vang', 'Moise', 'TChad', '1234', 1, 'images/NO-ImAGE-AVAILABLE.jpg'),
(14, 'Duterimbere', 'Rachel', 'STANDREW', '1234', 1, 'images/NO-ImAGE-AVAILABLE.jpg'),
(15, 'Blaise', 'NINDENKIMANA', 'mibirizi', '1234', 1, 'images/NO-ImAGE-AVAILABLE.jpg');

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
(6, 'Scouts', 'Kigali', 'Kimjong', '0783530924', 8);

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
(4, 'nyabihanga', 4, 'Theoneste Nzeyimana', 783530924);

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
(16, 'Baptism', '2022-06-08', 'celebrations of baptism', 8),
(17, 'Baptism', '2021-07-01', 'CHILDREN WILL BE BAPTISED ', 8);

-- --------------------------------------------------------

--
-- Table structure for table `giving`
--

CREATE TABLE `giving` (
  `givingid` int(10) NOT NULL,
  `Amount` varchar(100) DEFAULT NULL,
  `Trcode` varchar(100) DEFAULT NULL,
  `paytime` timestamp NULL DEFAULT current_timestamp(),
  `na` varchar(10) DEFAULT NULL,
  `ya` varchar(100) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `parish` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `giving`
--

INSERT INTO `giving` (`givingid`, `Amount`, `Trcode`, `paytime`, `na`, `ya`, `status`, `parish`) VALUES
(1, '500', 'qwer', '2022-05-21 17:46:38', '078121212', 'Ordinary Offering', 'paid', 0),
(4, '08760', 'yt7yh', '2022-06-04 14:55:29', '', 'ttuiui', 'paid', 0),
(6, '25000', 'mn', '2022-07-02 19:34:46', '0725172665', 'm,,m', 'pending', 0),
(7, '3500', 'kdjui8', '2022-08-06 18:28:59', '988899999', 'hdjfj', 'paid', 8),
(8, '25000', 'kjgut', '2022-08-06 18:43:38', '078121212', 'kyrkf', 'paid', 8),
(9, '25000', 'yitu7488', '2022-08-06 18:50:46', '078121212', 'Sacaments', 'paid', 8),
(10, '3500', 'yitu7488kjul', '2022-08-06 19:08:04', '078121212', 'jksdki', 'paid', 8),
(11, '25000', '20220816141035a025574ec77cb99450faa85a8257cde6', '2022-08-16 12:10:35', '0725172665', 'Sacaments', 'paid', 8),
(12, '25000', '202208161412122175373b832f6d4fbb0ca6697fa0a7c6', '2022-08-16 12:12:12', '0725172665', 'Baptism', 'paid', 8),
(13, '25000', '20220816141329066a13b6250afa63fcfba4215a3e9307', '2022-08-16 12:13:29', '0725172665', 'Sacaments', 'paid', 8),
(14, '25000', '202208161413594d35a065b97ba33f2115ba3ec99e331a', '2022-08-16 12:13:59', '0725172665', 'Baptism', 'paid', 8),
(15, '25000', '2022081614145187d057b6d9dc8bb47a19ff9196e15852', '2022-08-16 12:14:51', '0725172665', 'Baptism', 'paid', 8),
(16, '25000', '37E717677C145D2AAE921DDF44E9D5C8', '2022-08-16 13:35:53', '0725172665', 'Baptism', 'paid', 8),
(21, '25000', 'CA3C6E0A3F15AC59', '2022-08-16 15:17:12', '0725172665', 'Sacaments', 'paid', 8),
(22, '25000', 'D41383911965CC57', '2022-08-16 15:18:16', '0725172665', 'Sacaments', 'paid', 8),
(23, '25000', '3DE1B91193793625', '2022-08-16 15:19:22', '0725172665', 'Sacaments', 'paid', 8),
(24, '25000', '57CE5D4B3C3FE6F5', '2022-08-16 15:26:21', '0725172665', 'Baptism', 'paid', 8),
(25, '10', '7F774ED7A386B29D', '2022-08-17 16:57:12', '', '', 'pending', 8),
(26, '100', '0E96B6CCF60EB871', '2022-08-17 16:57:30', '', '', 'pending', 8),
(27, '10', '403D64FD9EF94D09', '2022-08-17 16:58:00', '', '', 'pending', 8),
(28, '25000', '360217983B809CD4', '2022-08-17 17:24:03', '', '', 'pending', 9),
(29, '25000', '263A2C906C047B22', '2022-08-22 18:11:20', '', '', 'pending', 8),
(30, '123', '03F8467F119A9DF8', '2022-09-14 09:58:33', '0725172665', 'llllk', 'pending', 8);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `keyu` int(10) NOT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `sname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Birthday` varchar(100) DEFAULT NULL,
  `baptism_parish` varchar(200) NOT NULL,
  `Residence` varchar(100) DEFAULT NULL,
  `pob` varchar(100) DEFAULT NULL,
  `subparish` int(11) NOT NULL,
  `community` int(11) NOT NULL,
  `ministry` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `id` varchar(10) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`keyu`, `fname`, `sname`, `lname`, `Gender`, `Birthday`, `baptism_parish`, `Residence`, `pob`, `subparish`, `community`, `ministry`, `mobile`, `email`, `thumbnail`, `password`, `id`, `date`) VALUES
(6, 'John', '', 'Habineza', 'Male', '1998-01-15', '', '9', 'Nyamagana', 1, 3, 'abasikuti', '078121212', 'mugabukomeye@gmail.com', 'uploads/none.png', '1234', '078121212', '2022-05-16 17:51:05'),
(13, 'Wanda Maldonado', 'Iona Davidson', 'Skyler Powell', 'Male', '2010-02-06', '', '2', 'Quis est fugiat aliq', 3, 3, 'Abasangiye Urukundo', 'Ab omnis hic sit duc', 'myzoja@mailinator.com', 'uploads/none.png', 'Pa$$w0rd!', 'Ab omnis h', '2022-07-02 20:59:54'),
(16, 'Maile', 'Blaise', 'Aidan Moreno', 'Female', '2003-01-21', '', '8', 'Non nostrud sint est', 2, 1, 'De Kigali', '078121212', 'cilutelugo@mailinator.com', 'uploads/none.png', 'Pa$$w0rd!', 'Reprehende', '2022-07-02 21:15:19'),
(18, 'Blaise', 'NINDENKIMANA', 'RUNGEZEKURE', 'Female', '2022-07-10', '', NULL, 'Inventore atque atqu', 2, 1, 'Abasangiye Urukundo', '+250783530967', 'bnindenki2@gmail.com', 'uploads/none.png', '1234', '+250783530', '2022-07-15 12:44:44'),
(19, 'nyracyjux', '', 'voxidezer', 'Male', '1993-02-04', 'wezehy', 'kosukozu', 'hocibipyga', 3, 1, 'Abasangiye Urukundo', '675', 'biqe@mailinator.com', 'uploads/none.png', 'Pa$$w0rd!', '675', '2022-08-06 07:48:48'),
(20, 'Joseph', '', 'Habiyaremye', 'Male', '2022-08-15', 'Kabasengerezi', '8', 'Rusizi', 2, 2, 'Abasangiye urukundo', '0725172665', 'jdjd@gmail.com', 'uploads/none.png', '1234', '0725172665', '2022-08-15 14:46:24'),
(21, 'Jeannette', '', 'Uwiringiyimana', 'Female', '2022-08-27', 'wezehy', '9', 'Nyamagana', 2, 2, 'Abasangiye Urukundo', '0783530924', 'jeantte@gmail.com', 'uploads/none.png', '1234', '0783530924', '2022-08-17 17:05:13'),
(22, 'Nshizirungu', '', 'Dieudonne', 'Male', '2022-08-26', 'Masizi', '8', 'Nyarugenge', 1, 1, 'Abasangiye Urukundo', '0780689285', 'nshizirungu203@gmail.com', 'uploads/none.png', '1234', '0780689285', '2022-08-25 14:13:26'),
(23, 'Pauline', 'RUNGEZEKURE', '6uiu', 'Male', '1988-09-08', 'Kabasengerezi', '8', 'kigali', 4, 4, 'Abasangiye urukundo', '0789081737', 'rungezekurepauline@gmail.com', 'uploads/none.png', '1235', '0789081737', '2022-09-02 12:23:18');

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
(2, 'Blaise', 'NINDENKIMANA', 'Select Gender', 123, '0783530924', 0, '', 'pending', '2022-09-20 22:59:29'),
(3, 'Blaise', 'NINDENKIMANA', 'Select Gender', 123, '0783530924', 0, '', 'pending', '2022-09-20 22:59:29'),
(4, 'Blaise', 'NINDENKIMANA', 'Select Gender', 123, '0783530924', 12, '', 'pending', '2022-09-20 22:59:29'),
(5, 'Blaise', 'NINDENKIMANA', 'giving', 123, '0783530924', 9, '', 'pending', '2022-09-20 22:59:29'),
(6, 'Blaise', 'NINDENKIMANA', 'giving', 123, '0783530924', 8, '2D5D0E7F5BC9D535DA753DBD49307763', 'pending', '2022-09-20 23:15:12'),
(7, 'Blaise', 'NINDENKIMANA', 'offering', 123, '0783530924', 8, 'ADCD26470BAA070DF651BCE8AB11EED8', 'pending', '2022-09-21 19:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `offering`
--

CREATE TABLE `offering` (
  `offeringid` int(10) NOT NULL,
  `year` int(11) NOT NULL,
  `Amount` varchar(100) DEFAULT NULL,
  `Trcode` varchar(100) DEFAULT NULL,
  `paytime` timestamp NULL DEFAULT current_timestamp(),
  `na` varchar(10) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `parish` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offering`
--

INSERT INTO `offering` (`offeringid`, `year`, `Amount`, `Trcode`, `paytime`, `na`, `status`, `parish`) VALUES
(1, 0, '25000', 'yitu7488', '2022-05-21 17:42:57', '0786242351', 'pending', 0),
(5, 2020, '25000', 'oertuipp4678', '2022-06-04 18:40:27', '0725172665', 'pending', 0),
(6, 0, '25000', 'yitu7488u', '2022-07-14 08:00:00', '0725172665', 'paid', 0),
(7, 2020, '25000', 'yitu7488jh', '2022-07-15 16:38:22', '078121212', 'paid', 0),
(8, 2020, '7878', 'yuuuui', '2022-07-15 16:39:26', '078121212', 'paid', 8),
(10, 0, '25000', 'yitu748kk8', '2022-08-06 19:04:39', '078121212', 'paid', 8),
(11, 0, '25000', 'yitu7488oi', '2022-08-06 19:07:26', '078121212', 'paid', 8),
(12, 2020, '30000', '34566', '2022-08-14 20:22:25', '+250783530', 'paid', 0),
(13, 2020, '6700', '47786', '2022-08-14 20:30:55', '+250783530', 'paid', 0),
(14, 2020, '3500', '45trgd', '2022-08-14 21:56:36', '+250783530', 'pending', 0),
(15, 2020, '25000', 'yitu7488kj', '2022-08-14 22:02:07', '+250783530', 'pending', 0),
(16, 2020, '6789', 'kjh', '2022-08-14 22:02:59', '+250783530', 'pending', 0),
(17, 2020, '25000', 'khlj78789jh', '2022-08-14 22:05:14', '+250783530', 'pending', 0),
(18, 2020, '3600', '879695958785959', '2022-08-14 22:33:31', '+250783530', 'pending', 0),
(19, 2020, '25000', '0976878uj', '2022-08-14 22:38:26', '+250783530', 'pending', 0),
(20, 2020, '3500', 'oertuipp4678k', '2022-08-15 14:59:06', '0725172665', 'paid', 8),
(21, 2020, '25000', 'oertuipp4678m,', '2022-08-15 15:09:39', '0725172665', 'paid', 8),
(22, 2020, '5000', 'yitu7488iuy', '2022-08-15 15:14:06', '0725172665', 'paid', 8),
(23, 2020, '25000', 'oertuipp4678jk', '2022-08-15 19:39:32', '0725172665', 'paid', 8),
(24, 2020, '25000', 'jk', '2022-08-15 19:48:24', '0725172665', 'paid', 8),
(25, 2020, '25000', 'yitu7488f', '2022-08-15 21:03:59', '0725172665', 'paid', 8),
(26, 2020, '5000', 'uiuuiui23j', '2022-08-15 21:26:05', '0725172665', 'paid', 8),
(27, 2020, '25000', 'yitu7488kkl', '2022-08-15 21:32:57', '0725172665', 'paid', 8),
(28, 2020, '25000', 'uyyyyyyyyyyyy', '2022-08-16 08:14:10', '0725172665', 'paid', 8),
(29, 2020, '25000', '35', '2022-08-16 11:09:33', '0725172665', 'paid', 8),
(30, 2020, '25000', '83', '2022-08-16 11:44:06', '0725172665', 'paid', 8),
(31, 2020, '25000', '61', '2022-08-16 11:45:19', '0725172665', 'paid', 8),
(32, 2020, '25000', '20220816135256c1e99c93ca7aadbec216621817f21f04', '2022-08-16 11:52:56', '0725172665', 'paid', 8),
(33, 2020, '25000', '2022081613544792d4d2f69b988a79ad9fc3218c1a9ffa', '2022-08-16 11:54:47', '0725172665', 'paid', 8),
(34, 2020, '25000', '202208161415160994f7f52bf0ae85aae5b1eeca730a0d', '2022-08-16 12:15:16', '0725172665', 'paid', 8),
(35, 2020, '3500', '20220816141843012a023cb55bafb70886a4aef999cf98', '2022-08-16 12:18:43', '0725172665', 'paid', 8),
(36, 2020, '25000', '20220816141939d81929b1549f69ea28b13de82002af89', '2022-08-16 12:19:39', '0725172665', 'paid', 8),
(37, 2020, '25000', '202208161422001fb4c5729504532c30d442e175150c76', '2022-08-16 12:22:00', '0725172665', 'paid', 8),
(38, 2020, '25000', '20220816142753d12462274dd47f04d1e2e5e50c349f4b', '2022-08-16 12:27:53', '0725172665', 'paid', 8),
(39, 2020, '25000', '20220816142922fc4513218a70e5506a05ab73d39f4a24', '2022-08-16 12:29:22', '0725172665', 'paid', 8),
(40, 2020, '3500', '2022081614304435234406bffbbc75fb5f3be4fc9ccf21', '2022-08-16 12:30:44', '0725172665', 'paid', 8),
(41, 2020, '123', '20220816143557ad86331de6abbc8ce2b90cc0046eb772', '2022-08-16 12:35:57', '', 'pending', 0),
(42, 2020, '123', '202208161435589c896d83c6014b43f6516fc8f375639d', '2022-08-16 12:35:58', '', 'pending', 0),
(43, 2020, '25000', '20220816143606b1869123bc9ea6b54b8931559aaf647d', '2022-08-16 12:36:06', '', 'pending', 0),
(44, 2020, '25000', '2022081614362601645f92d2cefdf13d676ebb88276263', '2022-08-16 12:36:26', '', 'pending', 0),
(45, 89, '3500', '20220816143636d2c1b6589f77581db87b81d999787d1d', '2022-08-16 12:36:36', '', 'pending', 0),
(46, 2020, '25000', '202208161437056d8f2e82c5d6308797b355aa34772002', '2022-08-16 12:37:05', '', 'pending', 0),
(47, 2020, '25000', '2022081614382425c611f7095b7be74318ef1691ad7ca1', '2022-08-16 12:38:24', '0725172665', 'paid', 8),
(48, 2020, '25000', '20220816143828570382a6e04a019ddfd7be9872cd8a67', '2022-08-16 12:38:28', '0725172665', 'paid', 8),
(49, 2020, '25000', '202208161438306ce24bab1f7cdc15d82a35aa578291e6', '2022-08-16 12:38:30', '0725172665', 'paid', 8),
(50, 2020, '25000', '20220816143834577582f856d90df376160c9ad19f7ffb', '2022-08-16 12:38:34', '0725172665', 'paid', 8),
(51, 2020, '25000', '202208161438355bad8c0c9a177f87d1458f19fd4aacde', '2022-08-16 12:38:35', '0725172665', 'paid', 8),
(52, 2020, '25000', '20220816143838b8f8b515e7da7a5d99f6368e01018b44', '2022-08-16 12:38:38', '0725172665', 'paid', 8),
(53, 2020, '25000', '202208161438392035dae3aa741f2aacfd9eae5e22beff', '2022-08-16 12:38:39', '0725172665', 'paid', 8),
(54, 2020, '25000', '20220816143841e4abb9df5a14c2b192f8937d275fcc1f', '2022-08-16 12:38:41', '0725172665', 'paid', 8),
(55, 2020, '25000', '20220816143843b9b238fdc1820ffaa940f12cdccdff66', '2022-08-16 12:38:43', '0725172665', 'paid', 8),
(56, 2020, '100', 'kuul', '2022-08-16 12:58:15', '0725172665', 'paid', 8),
(57, 2020, '3500', '202208161507568a880cfc37d423449fbae1524fe3a53b', '2022-08-16 13:07:56', '0725172665', 'paid', 8),
(58, 2020, '25000', '20220816150920ae71d92f01dada829f7be31e9d0aa29b', '2022-08-16 13:09:20', '0725172665', 'paid', 8),
(59, 2020, '25000', '2022081615141780c3e60cb05d6aa1b17c86a55cac836a', '2022-08-16 13:14:17', '0725172665', 'paid', 8),
(60, 2020, '25000', 'BA872C6A861C2F220A2FB24119078F09', '2022-08-16 13:18:29', '0725172665', 'paid', 8),
(61, 2020, '25000', '40BF4E64F7A93099', '2022-08-16 13:19:37', '0725172665', 'paid', 8),
(62, 2020, '25000', 'F5586B32C1C16354', '2022-08-16 13:20:21', '0725172665', 'paid', 8),
(63, 2020, '25000', 'E90AD2796AAA8CC22A296186F74751DC', '2022-08-16 13:21:45', '0725172665', 'paid', 8),
(64, 2020, '25000', 'DD42E06C230DDF7C73DDABAA53E354EB', '2022-08-16 13:25:23', '0725172665', 'paid', 8),
(65, 2020, '25000', 'B16D096AA8752C85B888DA5AC00437B3', '2022-08-16 13:26:29', '0725172665', 'paid', 8),
(66, 2020, '25000', '87083667CB4D0E3CB390B964871D64A3', '2022-08-16 13:26:51', '0725172665', 'paid', 8),
(67, 2020, '25000', 'F96607D479198F4600581BFD4806B73F', '2022-08-16 13:27:05', '0725172665', 'paid', 8),
(68, 0, '25000', 'D41020091CB394477CE1F61CF96196CD', '2022-08-16 14:44:06', '0725172665', 'paid', 8),
(69, 0, '3500', 'F9665611DA200221E38E40E5B8038F7C', '2022-08-16 15:00:20', '0725172665', 'paid', 8),
(70, 2022, '25000', '5B5C00099596D5D1', '2022-08-17 16:55:42', '0725172665', 'pending', 8),
(71, 2022, '25000', '4A00C01501BC1EC9', '2022-08-17 17:24:52', '0783530924', 'pending', 9);

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
(4, 'Gisagara', 'Habimana Innocent', '0783530924', 8);

-- --------------------------------------------------------

--
-- Table structure for table `sundays`
--

CREATE TABLE `sundays` (
  `keyu` int(10) NOT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `sname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Birthday` varchar(100) DEFAULT NULL,
  `Residence` varchar(100) DEFAULT NULL,
  `pob` varchar(100) DEFAULT NULL,
  `ministry` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teens`
--

CREATE TABLE `teens` (
  `keyu` int(10) NOT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `sname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Birthday` varchar(100) DEFAULT NULL,
  `Residence` varchar(100) DEFAULT NULL,
  `pob` varchar(100) DEFAULT NULL,
  `ministry` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tithe`
--

CREATE TABLE `tithe` (
  `titheid` int(10) NOT NULL,
  `Amount` varchar(100) DEFAULT NULL,
  `Trcode` varchar(100) DEFAULT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'pending',
  `paytime` timestamp NULL DEFAULT current_timestamp(),
  `na` varchar(10) DEFAULT NULL,
  `year` int(4) NOT NULL,
  `parish` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tithe`
--

INSERT INTO `tithe` (`titheid`, `Amount`, `Trcode`, `status`, `paytime`, `na`, `year`, `parish`) VALUES
(1, '2100', 'qw', 'paid', '2022-05-21 17:45:55', '078121212', 2020, 0),
(4, '6700', 'iuy78', 'pending', '2022-06-04 09:13:08', '0786242351', 0, 0),
(5, '6709', '978765', 'pending', '2022-06-04 14:09:45', '7097', 0, 0),
(6, '25000', '9iuii', 'paid', '2022-06-04 14:10:41', '0725172665', 0, 0),
(7, '7889', 'kkui', 'paid', '2022-06-04 14:15:09', '0725172665', 0, 0),
(9, '6700', '7878777777777RT', 'paid', '2022-07-09 10:12:15', '078121212', 2022, 8),
(10, '25000', '68iyj', 'paid', '2022-07-14 07:58:56', '0725172665', 0, 0),
(11, '3500', '576ujh', 'paid', '2022-07-14 07:59:30', '0725172665', 0, 0),
(12, '3500', 'yitu748889', 'paid', '2022-07-14 09:19:50', '0783530924', 0, 0),
(13, '3000', '0782121212', 'paid', '2022-07-14 12:43:20', '078121212', 2020, 0),
(14, '25000', 'yitu7488hik', 'paid', '2022-08-06 18:25:13', '0783530924', 0, 0),
(15, '3500', 'DEB6D777012A70C46EBAEE20B4D3D516', 'paid', '2022-08-16 13:30:34', '0725172665', 2020, 8),
(16, '5000', '747F8E10170F34E91221F1014580B6A2', 'paid', '2022-08-16 14:50:05', '0725172665', 0, 8),
(17, '25000', 'BE4DEE8AA083C7C23EDD0CAFAE291F3D', 'paid', '2022-08-16 15:06:07', '0725172665', 0, 8),
(18, '10', 'BF584E765173B0E6', 'paid', '2022-08-17 16:58:34', '0725172665', 2022, 8),
(19, '5', '3B6B15BB0290BAEE', 'pending', '2022-08-17 17:07:54', '0783530924', 2020, 9),
(20, '5', '3C488AA6702E47B3', 'pending', '2022-08-17 17:08:40', '0783530924', 2020, 9),
(21, '100', 'BFA9DE34C0844C17', 'paid', '2022-08-25 14:15:29', '0780689285', 2021, 8),
(22, '10', '4EFE03DDB5AD0A08', 'paid', '2022-08-25 14:16:45', '0780689285', 2020, 8),
(23, '123', '4CA208C128856821', 'pending', '2022-09-07 16:13:01', '0725172665', 2300, 8),
(24, '123', 'DD4D2A024C5D5571A694BC3924444D7C', 'pending', '2022-09-14 09:56:52', '0725172665', 0, 8),
(25, '123', '18D10AA6819A88B74B4E8EF3B5DEFCF4', 'pending', '2022-09-14 09:57:43', '0725172665', 0, 8);

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
(15, '0725172665', '', NULL, 725172665, NULL),
(16, '0725172665', '', NULL, 725172665, NULL),
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
(31, 'admin', '2022-07-15 14:11:30', '2022-08-15', 6, NULL),
(32, '078121212', '', NULL, 78121212, NULL),
(33, 'admin', '2022-07-15 14:29:19', '2022-08-15', 6, NULL),
(34, 'admin', '2022-07-15 16:30:04', '2022-08-15', 6, NULL),
(35, '078121212', '', NULL, 78121212, NULL),
(36, 'admin', '2022-08-06 09:27:36', '2022-08-15', 6, NULL),
(37, 'admin', '2022-08-06 09:54:33', '2022-08-15', 6, NULL),
(38, 'admin', '2022-08-06 15:51:15', '2022-08-15', 6, NULL),
(39, 'admin', '2022-08-14 22:07:17', '2022-08-15', 6, NULL),
(40, '+250783530967', '', '2022-08-14', 250783530, NULL),
(41, '+250783530967', '', NULL, 250783530, NULL),
(42, '+250783530967', '', NULL, 250783530, NULL),
(43, 'admin', '2022-08-14 22:23:03', '2022-08-15', 6, NULL),
(44, '+250783530967', '', NULL, 250783530, NULL),
(45, 'admin', '2022-08-14 22:31:24', '2022-08-15', 6, NULL),
(46, '+250783530967', '', NULL, 250783530, NULL),
(47, 'admin', '2022-08-14 22:33:38', '2022-08-15', 6, NULL),
(48, 'admin', '2022-08-14 22:37:28', '2022-08-15', 6, NULL),
(49, '+250783530967', '', NULL, 250783530, NULL),
(50, 'admin', '2022-08-15 00:04:00', '2022-08-15', 6, NULL),
(51, '+250783530967', '', NULL, 250783530, NULL),
(52, 'admin', '2022-08-15 00:05:50', '2022-08-15', 6, NULL),
(53, '+250783530967', '', NULL, 250783530, NULL),
(54, '+250783530967', '', NULL, 250783530, NULL),
(55, 'developer', '2022-08-15 12:33:26', '2022-09-21 21:26:20', 11, NULL),
(56, 'developer', '2022-08-15 12:33:26', '2022-09-21 21:26:20', 11, NULL),
(57, 'developer', '2022-08-15 12:34:50', '2022-09-21 21:26:20', 11, NULL),
(58, 'mushaka', '2022-08-15 15:09:09', '2022-09-21 01:39:04', 8, NULL),
(59, 'admin', '2022-08-15 15:54:04', '2022-08-15', 6, NULL),
(60, 'mushaka', '2022-08-15 16:04:45', '2022-09-21 01:39:04', 8, NULL),
(61, 'mushaka', '2022-08-15 16:13:56', '2022-09-21 01:39:04', 8, NULL),
(62, 'mushaka', '2022-08-15 16:27:05', '2022-09-21 01:39:04', 8, NULL),
(63, 'mushaka', '2022-08-15 16:36:21', '2022-09-21 01:39:04', 8, NULL),
(64, '+250783530967', '', NULL, 250783530, NULL),
(65, '0725172665', '', NULL, 725172665, NULL),
(66, '+250783530967', '', NULL, 250783530, NULL),
(67, '0725172665', '', NULL, 725172665, NULL),
(68, '0725172665', '', NULL, 725172665, NULL),
(69, '0725172665', '', NULL, 725172665, NULL),
(70, '0725172665', '', NULL, 725172665, NULL),
(71, '0725172665', '', NULL, 725172665, NULL),
(72, '0725172665', '', NULL, 725172665, NULL),
(73, '0725172665', '', NULL, 725172665, NULL),
(74, '0725172665', '', NULL, 725172665, NULL),
(75, '0725172665', '', NULL, 725172665, NULL),
(76, 'mushaka', '2022-08-16 15:38:05', '2022-09-21 01:39:04', 8, NULL),
(77, '0725172665', '', NULL, 725172665, NULL),
(78, 'mushaka', '2022-08-16 16:14:00', '2022-09-21 01:39:04', 8, NULL),
(79, 'Regina_pacis', '2022-08-17 18:53:14', '2022-08-17 18:53:42', 12, NULL),
(80, '0725172665', '', NULL, 725172665, NULL),
(81, '0725172665', '', NULL, 725172665, NULL),
(82, '0783530924', '', NULL, 783530924, NULL),
(83, 'mushaka', '2022-08-17 19:47:28', '2022-09-21 01:39:04', 8, NULL),
(84, 'mushaka', '2022-08-18 15:36:21', '2022-09-21 01:39:04', 8, NULL),
(85, '0725172665', '', NULL, 725172665, NULL),
(86, '0725172665', '', NULL, 725172665, NULL),
(87, 'mushaka', '2022-08-22 20:12:59', '2022-09-21 01:39:04', 8, NULL),
(88, 'Tchad', '2022-08-22 20:16:36', '2022-08-22 20:16:58', 13, NULL),
(89, 'mushaka', '2022-08-22 20:17:04', '2022-09-21 01:39:04', 8, NULL),
(90, 'st_famille', '2022-08-22 20:17:23', '2022-08-22 20:17:37', 9, NULL),
(91, 'mushaka', '2022-08-25 16:10:44', '2022-09-21 01:39:04', 8, NULL),
(92, '0780689285', '', NULL, 780689285, NULL),
(93, 'mushaka', '2022-08-25 16:20:10', '2022-09-21 01:39:04', 8, NULL),
(94, 'mushaka', '2022-09-02 14:15:24', '2022-09-21 01:39:04', 8, NULL),
(95, '0725172665', '', NULL, 725172665, NULL),
(96, 'STANDREW', '2022-09-07 11:20:16', '2022-09-21 21:25:10', 14, NULL),
(97, '0725172665', '', NULL, 725172665, NULL),
(98, 'mushaka', '2022-09-14 11:54:34', '2022-09-21 01:39:04', 8, NULL),
(99, '0725172665', '', NULL, 725172665, NULL),
(100, 'mushaka', '2022-09-20 20:09:53', '2022-09-21 01:39:04', 8, NULL),
(101, '0725172665', '', NULL, 725172665, NULL),
(102, 'mushaka', '2022-09-21 00:33:00', '2022-09-21 01:39:04', 8, NULL),
(103, '0725172665', '', NULL, 725172665, NULL),
(104, 'STANDREW', '2022-09-21 21:09:40', '2022-09-21 21:25:10', 14, NULL),
(105, 'STANDREW', '2022-09-21 21:25:05', '2022-09-21 21:25:10', 14, NULL),
(106, 'mushaka', '2022-09-21 21:26:26', NULL, 8, NULL);

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
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `giving`
--
ALTER TABLE `giving`
  ADD PRIMARY KEY (`givingid`),
  ADD UNIQUE KEY `Trcode` (`Trcode`),
  ADD UNIQUE KEY `Trcode_2` (`Trcode`),
  ADD KEY `na` (`na`),
  ADD KEY `parish` (`parish`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`keyu`),
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
-- Indexes for table `subparish`
--
ALTER TABLE `subparish`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parish` (`parish`);

--
-- Indexes for table `sundays`
--
ALTER TABLE `sundays`
  ADD PRIMARY KEY (`keyu`);

--
-- Indexes for table `teens`
--
ALTER TABLE `teens`
  ADD PRIMARY KEY (`keyu`);

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
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `associations`
--
ALTER TABLE `associations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `choirs`
--
ALTER TABLE `choirs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `community`
--
ALTER TABLE `community`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `giving`
--
ALTER TABLE `giving`
  MODIFY `givingid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `keyu` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `non_registered_user_offering`
--
ALTER TABLE `non_registered_user_offering`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `offering`
--
ALTER TABLE `offering`
  MODIFY `offeringid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `subparish`
--
ALTER TABLE `subparish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sundays`
--
ALTER TABLE `sundays`
  MODIFY `keyu` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teens`
--
ALTER TABLE `teens`
  MODIFY `keyu` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tithe`
--
ALTER TABLE `tithe`
  MODIFY `titheid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
