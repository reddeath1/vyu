-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2018 at 12:36 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vyu`
--

-- --------------------------------------------------------

--
-- Table structure for table `enterpr_acc`
--

CREATE TABLE `enterpr_acc` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `busness` varchar(100) NOT NULL,
  `main_busnes` varchar(100) NOT NULL,
  `other_busness` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enterpr_acc`
--

INSERT INTO `enterpr_acc` (`id`, `user_id`, `busness`, `main_busnes`, `other_busness`, `region`) VALUES
(1, 23, '', 'Stationaries', 'Eggs Sells', 'Dar-es-Salaam');

-- --------------------------------------------------------

--
-- Table structure for table `parent_acc`
--

CREATE TABLE `parent_acc` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `stu_fullname` varchar(250) NOT NULL,
  `schoolname` varchar(500) NOT NULL,
  `region` varchar(250) NOT NULL,
  `verify_person_id` int(11) NOT NULL,
  `levelOrStandard` varchar(70) NOT NULL,
  `facultOrComb_taken` varchar(70) NOT NULL,
  `level_identify` enum('k','p','o','a','h') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post` text NOT NULL,
  `media` text NOT NULL,
  `time_posted` datetime NOT NULL,
  `priviledge` enum('0','1','2','3') NOT NULL,
  `section` enum('0','1','2','3','4','5') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `user_id`, `post`, `media`, `time_posted`, `priviledge`, `section`) VALUES
(1, 28, 'bbhj', '', '2018-07-08 15:26:14', '0', '0'),
(2, 28, 'sfdsfsf', '', '2018-07-08 16:20:28', '0', '0'),
(3, 28, 'xxcvxcvxc', '', '2018-07-08 16:20:40', '0', '0'),
(4, 28, 'soo unafanya nini sasa', '', '2018-07-08 16:21:21', '0', '0'),
(5, 28, 'sdrfsfd', '', '2018-07-08 16:35:25', '0', '0'),
(6, 28, 'cvccxv', '', '2018-07-08 16:37:25', '0', '0'),
(7, 28, 'ghgh', '', '2018-07-08 16:38:35', '0', '0'),
(8, 28, 'sdfsdf', '', '2018-07-08 16:40:08', '0', '0'),
(9, 28, 'hjg', '', '2018-07-08 16:42:46', '0', '0'),
(10, 28, 'niambien magey', '', '2018-07-08 16:43:28', '0', '0'),
(11, 28, 'sdfsdf', '', '2018-07-08 16:44:30', '0', '0'),
(12, 28, 'dkfjdkfdfdk', '', '2018-07-08 16:46:55', '0', '0'),
(13, 28, 'safari yang imeanzia hapa', '', '2018-07-09 09:14:10', '0', '0'),
(14, 28, 'nataka nitengeneze reply saiv', '', '2018-07-09 09:15:10', '0', '0'),
(15, 28, 'kama inarefresh iv', '', '2018-07-09 09:15:46', '0', '0'),
(16, 28, 'kk', '', '2018-07-09 11:03:25', '0', '0'),
(17, 28, 'james kalinga', '', '2018-07-10 09:33:54', '0', '0'),
(18, 28, 'naa,m', '', '2018-07-10 09:34:16', '0', '0'),
(19, 28, 'safar ndo inaanza apa nw', '', '2018-07-10 09:35:34', '0', '0'),
(20, 1, 'am another man post her', '', '2018-07-10 14:17:07', '0', '0'),
(21, 28, 'dfgds', '', '2018-07-10 17:09:47', '0', '0'),
(22, 28, 'live', '', '2018-07-10 18:01:39', '0', '0'),
(23, 28, 'xvcbcxvb', '', '2018-07-11 03:24:51', '0', '0'),
(24, 28, 'desc imekubali nw', '', '2018-07-11 03:28:18', '0', '0'),
(25, 28, 'ks sawa sawa', '', '2018-07-11 12:28:33', '0', '0'),
(26, 28, 'sdf', '', '2018-07-11 13:07:07', '0', '0'),
(27, 28, 'sdfgdsfg', '', '2018-07-11 15:09:17', '0', '0'),
(28, 28, 'busness', '', '2018-07-11 15:10:22', '0', '0'),
(29, 28, 'from page work', '', '2018-07-11 15:14:28', '0', ''),
(30, 28, 'next trial', '', '2018-07-11 15:18:42', '0', '4'),
(31, 28, 'ok it work mow', '', '2018-07-11 15:19:26', '0', '1'),
(32, 28, 'hj', '', '2018-07-15 09:30:09', '0', '0'),
(33, 28, 'zero  is empty', '', '2018-07-15 09:31:39', '0', '1'),
(34, 28, 'This is main page', '', '2018-07-15 09:36:41', '0', '1'),
(35, 28, 'biashara is so nice', '', '2018-07-15 09:36:59', '0', '4'),
(36, 28, 'jhkj', '', '2018-07-15 11:09:42', '0', '1'),
(37, 28, 'mmms', '', '2018-07-15 12:00:35', '0', '4'),
(38, 28, 'ajfasdf', '', '2018-07-15 12:07:03', '0', '4'),
(39, 28, 'asdfasd', '', '2018-07-15 12:07:18', '0', '1'),
(40, 28, 'sdf', '', '2018-07-15 12:23:36', '0', '4'),
(41, 28, 'msms', '', '2018-07-15 12:35:13', '0', '1'),
(42, 28, 'mamamaa science', '', '2018-07-15 14:42:01', '0', '2'),
(43, 28, 'my name is fucjer', '', '2018-07-15 15:40:25', '0', '1'),
(44, 28, 'Am enterprenuer', '', '2018-07-15 17:59:00', '0', '4'),
(45, 28, 'am enter prenuar now', '', '2018-07-15 18:10:10', '0', '5'),
(46, 28, 'hshhshs', '', '2018-07-16 06:57:37', '0', '1'),
(47, 28, 'urembo na sanaa', '', '2018-07-16 06:58:11', '0', '3'),
(48, 28, 'CFBV', '', '2018-07-16 15:38:04', '0', '1'),
(49, 1, 'saasa', '', '2018-07-16 19:30:27', '0', '1'),
(50, 23, 'msms', '', '2018-07-19 08:04:57', '0', '1'),
(51, 28, 'ssdfdfd', '', '2018-07-19 19:21:37', '0', '4'),
(52, 28, 'sfl;askfld;saf', '', '2018-07-19 19:34:46', '0', '4'),
(53, 28, 'dfgdsfgd', '', '2018-07-19 23:54:58', '0', '2'),
(54, 28, 'hahahaaa', '', '2018-07-20 23:49:18', '0', '1'),
(55, 28, 'enterprenuaer', '', '2018-07-21 08:29:25', '0', '4'),
(56, 28, 'hahhahaa', '', '2018-07-24 09:24:40', '0', '1'),
(57, 28, 'so wat is real goiing on', '', '2018-07-26 09:34:29', '0', '1'),
(58, 28, 'ok', '', '2018-07-26 09:35:11', '0', '2'),
(59, 28, 'dfgdgdf', '', '2018-07-26 09:36:12', '0', '5'),
(60, 28, 'mamamamammammaa', '', '2018-07-26 09:36:25', '0', '5'),
(61, 23, 'yaaaa no record', '', '2018-07-29 10:21:57', '0', '1'),
(62, 28, 'school leo ilikuwa soo amizing', '', '2018-08-01 12:30:59', '0', '1'),
(63, 28, 'school leo ilikuwa soo amizing', '', '2018-08-01 12:30:59', '0', '1'),
(64, 28, 'about time', '', '2018-08-01 13:40:46', '0', '1'),
(65, 28, 'hgjkhghj', '', '2018-08-01 13:50:46', '0', '1'),
(66, 23, 'hahaha', '', '2018-08-01 14:16:28', '0', '1'),
(67, 28, 'hjkhk', '', '2018-08-01 15:06:20', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `p_acc`
--

CREATE TABLE `p_acc` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `st_fname` varchar(100) NOT NULL,
  `st_uname` varchar(100) NOT NULL,
  `schoolname` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `verify_person_id` int(11) NOT NULL,
  `levelOrStandard` varchar(70) NOT NULL,
  `mkondo` varchar(2) NOT NULL,
  `facultOrComb_taken` varchar(70) NOT NULL,
  `level_identify` enum('k','p','o','a','h') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_acc`
--

INSERT INTO `p_acc` (`id`, `user_id`, `st_fname`, `st_uname`, `schoolname`, `region`, `verify_person_id`, `levelOrStandard`, `mkondo`, `facultOrComb_taken`, `level_identify`) VALUES
(1, 4, 'James Kalinga', 'Atwabi', 'Tusiime Primary School', 'Dar es Salaam', 0, 'Standard 7', '', '', 'p'),
(2, 23, 'Amida', 'amyy', 'UDSM', '', 0, '', '', 'Procurement', 'h'),
(3, 31, '30', 'mohamed', 'filbety By', 'Dar es Salaam', 0, 'Form 1', '', '', 'o'),
(4, 35, 'james', 'das', 'filbety By', 'Dar es Salaam', 0, 'Form 1', 'B', '', 'o');

-- --------------------------------------------------------

--
-- Table structure for table `student_acc`
--

CREATE TABLE `student_acc` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `acc_belong_id` int(11) NOT NULL,
  `subjects` text NOT NULL,
  `schoolname` varchar(70) DEFAULT NULL,
  `region` varchar(70) DEFAULT NULL,
  `verify_person_id` int(11) NOT NULL,
  `levelOrStandard` varchar(50) DEFAULT NULL,
  `mkondo` varchar(2) NOT NULL,
  `facultOrComb_taken` varchar(70) DEFAULT NULL,
  `level_identify` enum('k','p','o','a','h','r','q') DEFAULT NULL,
  `st_fname` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_acc`
--

INSERT INTO `student_acc` (`id`, `user_id`, `acc_belong_id`, `subjects`, `schoolname`, `region`, `verify_person_id`, `levelOrStandard`, `mkondo`, `facultOrComb_taken`, `level_identify`, `st_fname`) VALUES
(1, 1, 0, '', 'UDSM', 'Dar es Salaam', 0, 'Certifiate', '', 'Computer Sceince', 'h', ''),
(2, 3, 0, '', 'UDSM', 'Dar es Salaam', 0, 'Certifiate', '', 'Computer Sceince', 'h', ''),
(3, 4, 0, '', 'Buguruni Moto Primary School', 'Dar es Salaam', 0, 'Standard 5', '', '', 'p', ''),
(4, 9, 0, '', 'Bugurun Primary School', 'Dar es Salaam', 0, 'Standard 7', '', '', 'p', ''),
(5, 10, 0, '68,70,72,', 'HappySkillfull International School', 'Dar es Salaam', 0, 'Form 4', '', 'PCB', 'o', ''),
(6, 11, 0, '', 'UDSM', 'Dar es Salaam', 0, 'Certifiate', '', 'Computer Sceince', 'h', ''),
(7, 12, 0, '15,16,17,18,19,20,21,22,,23,24,25,26,27,28,', 'HappySkillfull International School', 'Dar es Salaam', 0, 'Form 1', '', '', 'o', ''),
(8, 13, 0, '15,16,17,18,19,20,21,22,,23,24,25,26,27,28,', 'HappySkillfull International School', 'Dar es Salaam', 0, 'Form 1', '', '', 'o', ''),
(9, 14, 0, '29,30,31,32,33,34,35,36,,37,38,39,40,41,42,', 'benjamin secondary school', 'Dar es Salaam', 0, 'Form 2', '', '', 'o', ''),
(10, 15, 0, '29,30,31,32,33,34,35,36,,37,38,39,40,41,42,', 'jangwani Secondary School', 'Dar es Salaam', 0, 'Form 2', '', '', 'o', ''),
(11, 16, 0, '44,46,48,', 'Azania Secondary School', '', 0, 'Form 3', '', 'HKL', 'o', ''),
(12, 21, 0, '15,16,17,18,19,20,21,22,,23,24,25,26,27,28,', 'Agape Secondary Shool', 'Dar es Salaam', 0, 'Form 1', '', '', 'o', ''),
(13, 22, 0, '15,16,17,18,19,20,21,22,,23,24,25,26,27,28,', 'Zindo secondary School', 'Dar es Salaam', 0, 'Form 1', '', '', 'o', ''),
(14, 23, 0, '15,16,17,18,19,20,21,22,,23,24,25,26,27,28,', 'agape', 'Dar es Salaam', 0, 'Form 1', '', '', 'o', ''),
(15, 27, 0, '29,30,31,32,33,34,35,36,,37,38,39,40,41,42,', 'Jangwani secondary school', 'Dar es Salaam', 0, 'Form 2', '', 'HGE', 'o', ''),
(16, 29, 0, '15,16,17,18,19,20,21,22,,23,24,25,26,27,28,', 'firbet By', 'Dar es Salaam', 0, 'Form 1', '', '', 'o', ''),
(17, 30, 0, '15,16,17,18,19,20,21,22,,23,24,25,26,27,28,', 'filbety By', 'Dar es Salaam', 0, 'Form 1', '', '', 'o', ''),
(18, 32, 0, '15,16,17,18,19,20,21,22,,23,24,25,26,27,28,', 'filbety By', 'Dar es Salaam', 0, 'Form 1', '', '', 'o', ''),
(19, 33, 0, '', 'secondary', 'Dar es Salaam', 0, 'A', '', '', 'o', ''),
(20, 34, 0, '', 'secondary', 'Dar es Salaam', 0, 'Form 1', 'B', '', 'o', ''),
(21, 36, 0, '', 'zom zom collage', 'Dar es Salaam', 0, 'Certifiate', '', 'Procurement', 'h', ''),
(22, 37, 0, '', 'zom zom collage', 'Dar es Salaam', 0, 'Certifiate', '', 'Procurement', 'h', ''),
(23, 38, 0, '109,111,113,', 'Jangwani secondary school', 'Dar es Salaam', 0, 'Form 6', 'B', 'PCB', 'a', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_acc`
--

CREATE TABLE `teacher_acc` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subjects` text NOT NULL,
  `schoolname` varchar(50) DEFAULT NULL,
  `verify_person_id` int(11) DEFAULT NULL,
  `levelOrStandard` varchar(70) DEFAULT NULL,
  `mkondo` varchar(1) NOT NULL,
  `facultOrComb_taken` varchar(50) DEFAULT NULL,
  `region` varchar(70) DEFAULT NULL,
  `prof_subject_1` varchar(70) NOT NULL,
  `prof_subject_2` varchar(70) NOT NULL,
  `level_identify` enum('k','p','o','a','h') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_acc`
--

INSERT INTO `teacher_acc` (`id`, `user_id`, `subjects`, `schoolname`, `verify_person_id`, `levelOrStandard`, `mkondo`, `facultOrComb_taken`, `region`, `prof_subject_1`, `prof_subject_2`, `level_identify`) VALUES
(1, 2, '', 'UDSM', NULL, 'Certifiate', '', 'Computer Science', 'Dar es Salaam', 'Math', 'Alogarith', 'h'),
(2, 5, '', 'UDSM', NULL, 'Diploma 1year', '', 'Human resource', 'Dar es Salaam', 'Geo', 'artScine', 'h'),
(3, 7, '', 'IFM', NULL, 'Diploma 3year', '', 'Human resource', 'Arusha', 'History', 'Busness Mangement', 'h'),
(4, 8, '', 'ifm', NULL, 'Masters 1year', '', 'IT', 'Dar es Salaam', 'MATH', 'PHYICS', 'h'),
(5, 17, '', 'HappySkillfull International School', NULL, 'Form 4', '', 'CBG', 'Dar es Salaam', '', 'biology', 'o'),
(6, 18, '', 'happyskillfull International School', NULL, 'Form 1', '', '', 'Dar es Salaam', '', 'Physics', 'o'),
(7, 19, '', 'happyskillfull International School', NULL, 'Form 1', '', '', 'Dar es Salaam', '', '', 'o'),
(8, 20, ',16,', 'happyskillfull International School', NULL, 'Form 1', '', '', 'Dar es Salaam', '', 'history', 'o'),
(9, 21, ',38,', 'Tusiime secondary', NULL, 'Form 2', '', '', '', '', 'Chemistry', 'o'),
(10, 22, '18,16,', 'SIck Secondary School', NULL, 'Form 1', '', '', 'Dar es Salaam', 'kiswahili', 'history', 'o'),
(11, 23, '18,20,24', 'agape', NULL, 'Form 1', '', '', 'Dar es Salaam', '', 'mathematics', 'o'),
(12, 24, '19,20,24', 'agape ', NULL, 'Form 1', '', NULL, 'Dar es Salaam', '', '', 'o'),
(14, 25, ',23,', 'happyskillfull International School', NULL, 'Form 1', '', '', 'Dar es Salaam', '', 'Physics', 'o'),
(15, 26, '24,23', 'agape', NULL, 'Form 1', '', '', 'Dar es Salaam', 'chemistry', 'Physics', 'o'),
(16, 28, '19,18,', 'filbety By', NULL, 'Form 1', '', '', 'Dar es Salaam', 'English', 'Kiswahili', 'o');

-- --------------------------------------------------------

--
-- Table structure for table `vyu_notf`
--

CREATE TABLE `vyu_notf` (
  `id` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `initiator` varchar(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `did_read` enum('0','1') NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vyu_notf`
--

INSERT INTO `vyu_notf` (`id`, `user`, `initiator`, `app`, `note`, `did_read`, `date_time`) VALUES
(1, '28', '1', 'idont know', 'Aked question', '0', '2018-07-02 00:00:00'),
(2, '28', '3', '', 'change profile', '0', '2018-07-05 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vy_frnds`
--

CREATE TABLE `vy_frnds` (
  `frnds_id` int(11) NOT NULL,
  `user_one` int(11) NOT NULL,
  `user_two` int(11) NOT NULL,
  `frnd_status` enum('v','f') NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vy_frnds`
--

INSERT INTO `vy_frnds` (`frnds_id`, `user_one`, `user_two`, `frnd_status`, `date`) VALUES
(18, 2, 1, 'f', '0000-00-00 00:00:00'),
(19, 4, 1, 'f', '0000-00-00 00:00:00'),
(20, 2, 3, 'f', '0000-00-00 00:00:00'),
(21, 3, 1, 'f', '0000-00-00 00:00:00'),
(22, 2, 6, 'f', '0000-00-00 00:00:00'),
(23, 13, 12, 'v', '0000-00-00 00:00:00'),
(24, 24, 23, 'v', '0000-00-00 00:00:00'),
(25, 31, 28, 'v', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vy_group`
--

CREATE TABLE `vy_group` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vy_groups`
--

CREATE TABLE `vy_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vy_msg`
--

CREATE TABLE `vy_msg` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `recv_id` int(11) NOT NULL,
  `msj` longtext NOT NULL,
  `date` datetime NOT NULL,
  `msg_status` enum('a','b','c') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vy_msg`
--

INSERT INTO `vy_msg` (`id`, `sender_id`, `recv_id`, `msj`, `date`, `msg_status`) VALUES
(1, 3, 0, ';ll;lkl;', '2018-01-15 14:37:27', 'a'),
(2, 3, 0, ';ll;lkl;', '2018-01-15 14:37:31', 'a'),
(3, 3, 0, ';ll;lkl;', '2018-01-15 14:37:35', 'a'),
(4, 3, 0, ';ll;lkl;', '2018-01-15 14:37:39', 'a'),
(5, 3, 0, 'kjkjjkjlk', '2018-01-15 14:47:46', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `vy_photo`
--

CREATE TABLE `vy_photo` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `p_status` enum('a','b') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vy_photo`
--

INSERT INTO `vy_photo` (`id`, `user_id`, `photo`, `p_status`) VALUES
(16, 1, 'profile_pct/yriMXdjuUj49vHa/IMG-20170210-WA001.jpg', 'a'),
(17, 1, 'profile_cover/9mtvwqCQijBToaP/IMG-20170210-WA001.jpg', 'b'),
(18, 3, 'profile_pct/XL2RiYerI8hTPAB/WIN_20160123_021220.JPG', 'a'),
(19, 3, 'profile_cover/UQnGlLDVP3t8HMf/IMG-20170210-WA002.jpg', 'b'),
(20, 5, 'profile_pct/RX86jen1ql5ZyHT/IMG-20170210-WA003.jpg', 'a'),
(21, 5, 'profile_pct/SlFJ2ByeNr4dmfi/WIN_20160123_021220.JPG', 'a'),
(22, 5, 'profile_pct/e7R8zdU3ikTaEWo/IMG-20170210-WA001.jpg', 'a'),
(23, 5, 'profile_pct/Vjz8T9KjqN7uJBm/WIN_20160122_225319.JPG', 'a'),
(24, 5, 'profile_cover/iTqpf5t7O8LxaKh/WIN_20160123_021153.JPG', 'b'),
(25, 1, 'profile_pct/348e6FLMhPXQwIK/WIN_20160123_021153.JPG', 'a'),
(26, 1, 'profile_pct/GxJljh6BnkTSrpC/WIN_20160201_080427.JPG', 'a'),
(27, 1, 'profile_pct/2D6SyilFaUIn1fE/IMG-20170210-WA006.jpg', 'a'),
(28, 10, 'profile_pct/Tm9UcFzldurvxEZ/WIN_20160123_021220.JPG', 'a'),
(29, 12, 'profile_pct/AerMj2SQzOmTBDy/WIN_20160122_225316.JPG', 'a'),
(30, 23, 'profile_pct/YLlQHFDWSba7MB1/IMG-20151218-WA0002.jpg', 'a'),
(31, 27, 'profile_pct/HvpWayYXtjZ2TMA/8e6af612856b5f51412016cb0bd57819.jpg', 'a'),
(32, 27, 'profile_cover/ZBYelHty2NTjOKW/images.jpg', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `vy_qustion`
--

CREATE TABLE `vy_qustion` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `qstn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vy_reply`
--

CREATE TABLE `vy_reply` (
  `id` int(11) NOT NULL,
  `msg_id` int(11) NOT NULL,
  `send_id` int(11) NOT NULL,
  `replier_id` int(11) NOT NULL,
  `msg` longtext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vy_reply`
--

INSERT INTO `vy_reply` (`id`, `msg_id`, `send_id`, `replier_id`, `msg`, `date`) VALUES
(1, 43, 1, 27, 'what the point ya ww kuuliza jina lako.......?', '2018-07-15 00:00:00'),
(2, 45, 29, 29, 'hahahaha it woooooork mother fucker', '2018-07-25 00:00:00'),
(3, 45, 7, 15, 'this is gona work', '2018-07-15 00:00:00'),
(4, 0, 1, 28, 'ime work au', '2018-07-16 20:03:30'),
(5, 49, 1, 28, 'hahaa', '2018-07-16 20:06:26'),
(6, 48, 28, 28, 'inakuwa jeeee', '2018-07-16 20:07:11'),
(7, 0, 28, 28, 'oooyyy', '2018-07-16 20:07:54'),
(8, 37, 28, 28, 'hahha', '2018-07-17 09:54:17'),
(9, 49, 1, 36, 'hahahhahaha', '2018-07-17 19:09:12'),
(10, 50, 23, 28, 'hop imeenda now', '2018-07-19 19:05:25'),
(11, 50, 23, 28, 'yaa it work fine', '2018-07-19 19:06:00'),
(12, 49, 1, 28, 'unafanya nn nw', '2018-07-19 19:07:30'),
(13, 48, 28, 28, 'unakaa wap ss', '2018-07-19 19:07:54'),
(14, 48, 28, 28, 'unakaa wap ss', '2018-07-19 19:07:54'),
(15, 50, 23, 28, 'unafany nn nw', '2018-07-19 19:08:36'),
(16, 49, 1, 28, 'usernamproblem', '2018-07-19 19:09:08'),
(17, 50, 23, 28, 'youu changfe', '2018-07-19 19:12:52'),
(18, 50, 23, 28, 'youu changfe', '2018-07-19 19:12:52'),
(19, 50, 23, 28, 'sdf', '2018-07-19 19:14:15'),
(20, 51, 28, 28, 'msyoo', '2018-07-19 19:33:35'),
(21, 51, 28, 28, 'dfsdfsdfs', '2018-07-19 19:34:14'),
(22, 53, 28, 28, 'cbxcbvbxbcxb', '2018-07-19 23:55:12'),
(23, 35, 28, 28, 'ghjgj', '2018-07-20 00:00:17'),
(24, 53, 28, 28, 'maeneo fulan iv ya kujidai', '2018-07-21 08:24:09'),
(25, 55, 28, 28, 'dfgdgfd', '2018-07-21 18:03:59'),
(26, 55, 28, 28, 'wats hapen', '2018-07-23 15:54:19'),
(27, 45, 28, 28, 'klasdlfka;lsfk;ladsf', '2018-07-25 18:15:59'),
(28, 54, 28, 28, 'kjhkjhhkjbkjhjkhkj', '2018-07-25 18:17:54'),
(29, 53, 28, 28, 'jhkjhkhkhkkj', '2018-07-25 18:18:29'),
(30, 51, 28, 28, 'jhkjhkhkjk', '2018-07-25 18:18:53'),
(31, 56, 28, 28, 'ghkjghjgj', '2018-07-25 19:04:55'),
(32, 56, 28, 28, 'hey', '2018-07-26 09:33:57'),
(33, 53, 28, 28, 'mamma', '2018-07-27 12:06:09'),
(34, 53, 28, 28, 'mamma', '2018-07-27 12:06:09'),
(35, 60, 28, 28, 'mama', '2018-07-27 12:07:31'),
(36, 56, 28, 28, 'mamam', '2018-07-27 12:07:49'),
(37, 50, 23, 28, 'hhjh  gg  gg', '2018-07-28 20:29:57'),
(38, 7, 28, 28, 'hkjkh', '2018-07-28 20:33:25'),
(39, 61, 23, 28, 'nehemia mwansasu', '2018-08-01 12:29:10'),
(40, 53, 28, 28, 'am in sceance life', '2018-08-01 12:29:52'),
(41, 50, 23, 28, 'hallow aa', '2018-08-01 14:31:49'),
(42, 66, 23, 28, 'kjkasdjlkfa', '2018-08-03 18:46:19');

-- --------------------------------------------------------

--
-- Table structure for table `vy_req`
--

CREATE TABLE `vy_req` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `recv_id` int(11) NOT NULL,
  `state` enum('v','f') DEFAULT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vy_req`
--

INSERT INTO `vy_req` (`id`, `user_id`, `recv_id`, `state`, `status`) VALUES
(16, 2, 5, 'f', '0'),
(17, 2, 7, 'f', '0'),
(18, 2, 7, 'f', '0'),
(19, 11, 3, 'v', '0'),
(21, 19, 18, 'v', '0'),
(22, 12, 2, 'f', '0'),
(23, 20, 19, 'v', '0'),
(24, 23, 21, 'v', '0'),
(26, 25, 20, 'v', '0'),
(27, 26, 24, 'v', '0'),
(28, 23, 2, 'f', '0'),
(29, 23, 25, 'f', '0'),
(30, 27, 2, 'f', '0'),
(32, 28, 5, 'f', '0'),
(33, 37, 36, 'v', '0');

-- --------------------------------------------------------

--
-- Table structure for table `vy_subjects`
--

CREATE TABLE `vy_subjects` (
  `id` int(11) NOT NULL,
  `suubject_name` varchar(50) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vy_subjects`
--

INSERT INTO `vy_subjects` (`id`, `suubject_name`, `level`) VALUES
(1, 'civics', 0),
(2, 'history', 0),
(3, 'geography', 0),
(4, 'kiswahili', 0),
(5, 'english', 0),
(6, 'literature', 0),
(7, 'chinise', 0),
(8, 'french', 0),
(9, 'physics', 0),
(10, 'chemistry', 0),
(11, 'biology', 0),
(12, 'Bookkeeping', 0),
(13, 'Commerce', 0),
(14, 'accounts', 0),
(15, 'civics', 1),
(16, 'history', 1),
(17, 'geography', 1),
(18, 'kiswahili', 1),
(19, 'english', 1),
(20, 'literature', 1),
(21, 'chinise', 1),
(22, 'french', 1),
(23, 'physics', 1),
(24, 'chemistry', 1),
(25, 'biology', 1),
(26, 'Bookkeeping', 1),
(27, 'Commerce', 1),
(28, 'accounts', 1),
(29, 'civics', 2),
(30, 'history', 2),
(31, 'geography', 2),
(32, 'kiswahili', 2),
(33, 'english', 2),
(34, 'literature', 2),
(35, 'chinise', 2),
(36, 'french', 2),
(37, 'physics', 2),
(38, 'chemistry', 2),
(39, 'biology', 2),
(40, 'Bookkeeping', 2),
(41, 'Commerce', 2),
(42, 'accounts', 2),
(43, 'civics', 3),
(44, 'history', 3),
(45, 'geography', 3),
(46, 'kiswahili', 3),
(47, 'english', 3),
(48, 'literature', 3),
(49, 'chinise', 3),
(50, 'french', 3),
(51, 'physics', 3),
(52, 'physics practical', 3),
(53, 'chemistry', 3),
(54, 'chemistry practical', 3),
(55, 'biology', 3),
(56, 'biology practical', 3),
(57, 'Bookkeeping', 3),
(58, 'Commerce', 3),
(59, 'accounts', 3),
(60, 'civics', 4),
(61, 'history', 4),
(62, 'geography', 4),
(63, 'kiswahili', 4),
(64, 'english', 4),
(65, 'literature', 4),
(66, 'chinise', 4),
(67, 'french', 4),
(68, 'physics', 4),
(69, 'physics practical', 4),
(70, 'chemistry', 4),
(71, 'chemistry practical', 4),
(72, 'biology', 4),
(73, 'biology practical', 4),
(74, 'Bookkeeping', 4),
(75, 'Commerce', 4),
(76, 'accounts', 4),
(77, 'general Study', 5),
(78, 'history', 5),
(79, 'history two', 5),
(80, 'kiswahili', 5),
(81, 'kiswahili two', 5),
(82, 'geography', 5),
(83, 'physical geography', 5),
(84, 'english', 5),
(85, 'literature', 5),
(86, 'chinise', 5),
(87, 'french', 5),
(88, 'physics', 5),
(89, 'physics practical', 5),
(90, 'chemistry', 5),
(91, 'chemistry practical', 5),
(92, 'biology', 5),
(93, 'biology practical', 5),
(94, 'economics', 5),
(95, 'Bookkeeping', 5),
(96, 'Commerce', 5),
(97, 'accounts', 5),
(98, 'general Study', 6),
(99, 'history', 6),
(100, 'history two', 6),
(101, 'kiswahili', 6),
(102, 'kiswahili two', 6),
(103, 'geography', 6),
(104, 'physical geography', 6),
(105, 'english', 6),
(106, 'literature', 6),
(107, 'chinise', 6),
(108, 'french', 6),
(109, 'physics', 6),
(110, 'physics practical', 6),
(111, 'chemistry', 6),
(112, 'chemistry practical', 6),
(113, 'biology', 6),
(114, 'biology practical', 6),
(115, 'economics', 6),
(116, 'Bookkeeping', 6),
(117, 'Commerce', 6),
(118, 'accounts', 6);

-- --------------------------------------------------------

--
-- Table structure for table `vy_subjecttopics`
--

CREATE TABLE `vy_subjecttopics` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `topic_title` varchar(100) NOT NULL,
  `titleContent` text NOT NULL,
  `auther` varchar(200) DEFAULT NULL,
  `shoolname` varchar(200) NOT NULL,
  `region` varchar(150) NOT NULL,
  `level` varchar(150) NOT NULL,
  `date` datetime NOT NULL,
  `topic_covered` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vy_subjecttopics`
--

INSERT INTO `vy_subjecttopics` (`id`, `user_id`, `subject_id`, `topic_title`, `titleContent`, `auther`, `shoolname`, `region`, `level`, `date`, `topic_covered`) VALUES
(1, 23, 18, 'FASIHI SIMULIZI', 'ni kaz ya sanaa inayo wasilishwa kwa masimuliz ..\r\n\r\nfasihi simuliz imegawika katika sehem kuu mbili fashi simuli ya usiku  na fasih simuliz ya muchana', 'Nehemia Mwansasu', '', '', '', '0000-00-00 00:00:00', ''),
(2, 0, 18, 'Historia ya Lugha', 'hapo mwanzo kulikuwa na midomo midomo nay ilkuweko kwa watu watu nao waliumbwa na mungu mungu nae akaumba maneno maneno nayo yakatamkika napo kukatengenezeka', NULL, '', '', '', '0000-00-00 00:00:00', ''),
(3, 0, 18, 'unyambulishaji', 'kkjhasdfasdfafd', NULL, '', '', '', '0000-00-00 00:00:00', ''),
(4, 23, 18, 'Nutrition', 'sdfsfsfsfsf sadsccasdcasdcadc', NULL, '', '', '', '0000-00-00 00:00:00', '0'),
(5, 23, 18, '', '', NULL, '', '', '', '0000-00-00 00:00:00', '0'),
(6, 23, 18, '', '', NULL, '', '', '', '0000-00-00 00:00:00', '0'),
(7, 23, 18, '', '', NULL, '', '', '', '0000-00-00 00:00:00', '0'),
(8, 23, 18, '', '', NULL, '', '', '', '0000-00-00 00:00:00', '0'),
(9, 23, 18, 'topicc', 'listrn', NULL, 'work', '', '', '0000-00-00 00:00:00', '0'),
(10, 23, 18, 'fanya faya bas', 'sdfsdfs', NULL, 'work', '', '', '0000-00-00 00:00:00', '0'),
(11, 23, 18, 'haya sasa', 'wewe', NULL, 'work', '', '', '0000-00-00 00:00:00', '0'),
(12, 23, 18, 'Viwakilish', 'Viwakilish ni maneno yanayo simama badala ya neno', NULL, 'work', '', '', '0000-00-00 00:00:00', '0'),
(13, 23, 18, 'Aina Za maneno', 'Neno ni neono', NULL, 'work', '', '', '0000-00-00 00:00:00', '0'),
(14, 23, 18, 'History', 'historia ya lugha', NULL, 'work', '', '', '0000-00-00 00:00:00', '0'),
(15, 23, 18, 'Hidith 1', 'hadith body', NULL, 'work', '', '', '0000-00-00 00:00:00', '0'),
(16, 23, 18, 'Dad 1', 'dad 1 body', NULL, 'work', '', '', '0000-00-00 00:00:00', '0'),
(17, 23, 18, 'haha1', 'haha1 body', NULL, 'work', '', '', '0000-00-00 00:00:00', '0'),
(18, 23, 18, 'saved One', 'Saved One body', NULL, 'work', '', '', '0000-00-00 00:00:00', '0'),
(19, 23, 18, 'kiswahili', 'ni maneno yeny silabi', NULL, '', '', '', '0000-00-00 00:00:00', '0'),
(20, 23, 18, 'weya waya', 'Riwaya', NULL, 'Agape Mama', '', '', '0000-00-00 00:00:00', '0'),
(21, 26, 24, 'Chemistry', 'Is a branch of science which deals with matters and decomposition of matters..', NULL, 'agape', '', '', '0000-00-00 00:00:00', '0'),
(22, 23, 18, 'fdsfsdfsd', 'sdfsdfsfsdfsfdfs', NULL, 'agape', 'Dar es Salaam', 'Form 1', '0000-00-00 00:00:00', '0'),
(23, 23, 24, 'Chemistry', 'Is a branch of science which deals with matters and decomposition of matters..', NULL, 'agap', 'Dar es Salaam', 'Form 1', '0000-00-00 00:00:00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `vy_subtpc`
--

CREATE TABLE `vy_subtpc` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `subtpc` varchar(200) NOT NULL,
  `subtpc_contct` text NOT NULL,
  `privacy` enum('0','1','2','3') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vy_subtpc`
--

INSERT INTO `vy_subtpc` (`id`, `user_id`, `topic_id`, `subject_id`, `subtpc`, `subtpc_contct`, `privacy`) VALUES
(1, 0, 1, 18, 'Fasihi Asubuhi', 'Fasih hasubuhi ni aina ya fasihi inayo zungumziwa asubuhi', '1'),
(5, 0, 2, 18, 'historia ya lugha apa', 'dsafdsfasdfassd', '1'),
(6, 0, 1, 18, 'Fasihi kendo', 'Hhahahhahabhhahhahhahha', '1'),
(7, 23, 0, 18, 'umeludi', 'umeludi vizuri', '1'),
(8, 23, 1, 18, 'fasihi Andishi', 'ni fasihi inayo wasilishwa kwa maamdishi', '1'),
(9, 23, 0, 18, ',hshhshs', ',nnbbnm', '1'),
(10, 23, 0, 18, ',topictopic tow', ',topictopic two', '1'),
(11, 23, 0, 18, 'topic One,topic 2,tpc 3,', 'tpc 1 bdy', '1'),
(12, 23, 0, 18, 'topic One,topic 2,tpc 3,', 'tpc 2 bdy', '1'),
(13, 23, 0, 18, 'topic One,topic 2,tpc 3,', 'tpc 3 bdy', '1'),
(14, 23, 0, 18, 'topic One,topic 2,tpc 3,', '', '1'),
(15, 23, 0, 18, 'topic One', 'tpc 1 bdy', '1'),
(16, 23, 0, 18, 'topic 2', 'tpc 2 bdy', '1'),
(17, 23, 0, 18, 'tpc 3', 'tpc 3 bdy', '1'),
(18, 23, 0, 18, '', '', '1'),
(19, 23, 0, 18, 'topic 1', 'topic 1 body', '1'),
(20, 23, 0, 18, 'topic 2 ', 'topic 2 body', '1'),
(21, 23, 0, 18, 'topic 3', 'topic 3 body', '1'),
(22, 23, 0, 18, '', '', '1'),
(23, 23, 0, 18, 'topic 1', 'topic 1 body', '1'),
(24, 23, 0, 18, 'topic 2 ', '', '1'),
(25, 23, 0, 18, 'topic 3', 'topic 3 body', '1'),
(26, 23, 0, 18, '', '', '1'),
(27, 23, 0, 18, '', '', '1'),
(28, 23, 4, 18, 'vitamin', 'sdfasdf', '1'),
(29, 23, 4, 18, '', '', '1'),
(30, 23, 11, 18, 'mimi', 'mimi na ww', '1'),
(31, 23, 11, 18, '', '', '1'),
(32, 23, 12, 18, 'Aina Za viwakilish', '1.viwakilish vya sifa\n2.viwakilish vya nafsi\n3.viwakilish vivumishi', '1'),
(33, 23, 12, 18, 'Viwakislish vya sifa', 'Ni aina za viwakilish znazo vumisha au sifia maneno', '1'),
(34, 23, 12, 18, 'viwakilishi vya nafsi', 'Ni aina za viwakilish vinavyo simamia nafsi au sifia maneno', '1'),
(35, 23, 12, 18, '', '', '1'),
(36, 23, 13, 18, 'Nomino ', 'sdfasdfa', '1'),
(37, 23, 13, 18, 'aina za nomin', 'sdfsdfsdf', '1'),
(38, 23, 13, 18, '', '', '1'),
(39, 23, 14, 18, 'lugha ni', 'kilinhala', '1'),
(40, 23, 14, 18, 'sdfa', 'asdfa', '1'),
(41, 23, 14, 18, '', '', '1'),
(42, 23, 18, 18, 'Saved One 2', 'Saved 2 body', '1'),
(43, 23, 18, 18, '', '', '1'),
(44, 23, 19, 18, 'aina za kiswahili', '1/ kiswahili cha mtaan\n2/ kiswahili cha darasani\n3/kswangilish', '1'),
(45, 23, 19, 18, 'kiswahili cha mtaaani', 'ni regester inayo tumika mtaan', '1'),
(46, 23, 19, 18, '', '', '1'),
(47, 23, 20, 18, 'Maudhui', '1/werwer\n2.jsjsjjssss\n3.kjksdfksjfksf\n3m', '0'),
(48, 23, 20, 18, 'hahha', 'jndsfjadfadf', '0'),
(49, 23, 20, 18, '', '', '0'),
(50, 26, 21, 24, 'types Of Chemistry', '1. analytical chemistry\n2.organic chemistry\n3.physical chemistry', '0'),
(51, 26, 21, 24, 'Impotance of chemistry', '1.to identify miners\n2.to identify type of differnt oranic and in orgam=ninc', '0'),
(52, 26, 21, 24, '', '', '0'),
(53, 23, 22, 20, 'sdfsfsfsdfsfsdsd', 'sdfdsfdssffsfsdfs', '0'),
(54, 23, 22, 20, '', '', '0'),
(55, 23, 23, 24, 'branches of chemistry', '1/ Analyitical chemistry\n2/ physical chemistry\n', '0'),
(56, 23, 23, 24, 'Importance of Chemistry', '1. to improve agriculture in term of fartilaztaion\n2/ help in mining activities\n3/extration of oils', '0'),
(57, 23, 23, 24, '', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `vy_subtpccover`
--

CREATE TABLE `vy_subtpccover` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subj_id` int(11) NOT NULL,
  `subtpc_id` int(11) NOT NULL,
  `checkCover` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vy_subtpccover`
--

INSERT INTO `vy_subtpccover` (`id`, `user_id`, `teacher_id`, `subj_id`, `subtpc_id`, `checkCover`) VALUES
(1, 23, 23, 18, 7, '1'),
(2, 23, 23, 18, 8, '0'),
(3, 23, 23, 18, 9, '0'),
(4, 23, 23, 18, 10, '0'),
(5, 23, 23, 18, 11, '1'),
(6, 23, 23, 18, 12, '0'),
(7, 23, 23, 18, 13, '0'),
(8, 23, 23, 18, 14, '0'),
(9, 23, 23, 18, 15, '0'),
(10, 23, 23, 18, 16, '0'),
(11, 23, 23, 18, 17, '0'),
(12, 23, 23, 18, 18, '0'),
(13, 23, 23, 18, 19, '0'),
(14, 23, 23, 18, 20, '0'),
(15, 23, 23, 18, 21, '0'),
(16, 23, 23, 18, 22, '0'),
(17, 23, 23, 18, 23, '0'),
(18, 23, 23, 18, 24, '0'),
(19, 23, 23, 18, 25, '0'),
(20, 23, 23, 18, 26, '0'),
(21, 23, 23, 18, 27, '0'),
(22, 23, 23, 18, 28, '0'),
(23, 23, 23, 18, 29, '1'),
(24, 23, 23, 18, 30, '0'),
(25, 23, 23, 18, 31, '0'),
(26, 23, 23, 18, 32, '0'),
(27, 23, 23, 18, 33, '0'),
(28, 23, 23, 18, 34, '0'),
(29, 23, 23, 18, 35, '0'),
(30, 23, 23, 18, 36, '1'),
(31, 23, 23, 18, 37, '1'),
(32, 23, 23, 18, 38, '1'),
(33, 23, 23, 18, 39, '0'),
(34, 23, 23, 18, 40, '0'),
(35, 23, 23, 18, 41, '0'),
(36, 23, 23, 18, 42, '0'),
(37, 23, 23, 18, 43, '0'),
(38, 23, 23, 18, 44, '0'),
(39, 23, 23, 18, 45, '0'),
(40, 23, 23, 18, 46, '0'),
(41, 23, 23, 18, 47, '0'),
(42, 23, 23, 18, 48, '0'),
(43, 23, 23, 18, 49, '0'),
(44, 23, 23, 18, 0, '0'),
(45, 12, 0, 18, 1, '0'),
(46, 12, 0, 18, 5, '0'),
(47, 12, 0, 18, 6, '0'),
(48, 12, 0, 18, 0, '0'),
(49, 12, 0, 17, 0, '0'),
(50, 23, 0, 17, 0, '0'),
(51, 27, 0, 29, 0, '0'),
(52, 27, 0, 32, 0, '0'),
(53, 29, 0, 19, 0, '0'),
(54, 30, 0, 19, 0, '0'),
(55, 38, 0, 109, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `vy_summaries`
--

CREATE TABLE `vy_summaries` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `topic_title` varchar(20) NOT NULL,
  `subtpc_list` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `photo` varchar(999) NOT NULL,
  `datePosted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vy_themsg`
--

CREATE TABLE `vy_themsg` (
  `id` int(11) NOT NULL,
  `u_one` int(11) NOT NULL,
  `u_two` int(11) NOT NULL,
  `msj` text NOT NULL,
  `photo` varchar(9999) NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vy_timtable`
--

CREATE TABLE `vy_timtable` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `dayTopic` varchar(200) NOT NULL,
  `daySubtpc` varchar(200) NOT NULL,
  `date_period` varchar(50) NOT NULL,
  `start_period` varchar(50) NOT NULL,
  `end_period` varchar(50) NOT NULL,
  `school_name` varchar(200) NOT NULL,
  `Level` varchar(30) NOT NULL,
  `category` varchar(10) NOT NULL,
  `region` varchar(200) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vy_timtable`
--

INSERT INTO `vy_timtable` (`id`, `user_id`, `subject_id`, `dayTopic`, `daySubtpc`, `date_period`, `start_period`, `end_period`, `school_name`, `Level`, `category`, `region`, `date`) VALUES
(1, 23, 18, '12', '34', '2018-04-01', '12:02', '12:59', 'agape', 'FORM 2', 'A', 'Dar es Salaam', '2018-04-02 10:48:51'),
(2, 23, 18, '12', '32', '2018-04-01', '23:59', '12:59', 'agape', 'FORM 1', 'A', 'Dar es Salaam', '2018-04-02 10:57:19'),
(3, 23, 18, '12', '33', '2018-04-02', '00:58', '12:57', 'agape', 'FORM 2', 'B', 'Dar es Salaam', '2018-04-02 10:57:19'),
(4, 23, 18, '1', '', '2018-06-05', '12:59', '12:59', 'agape', 'FORM 1', 'A', 'Dar es Salaam', '2018-06-23 16:01:06'),
(5, 23, 18, '12', '', '2018-06-05', '12:59', '12:59', 'agape', 'FORM 1', 'A', 'Dar es Salaam', '2018-06-23 16:15:31'),
(6, 23, 18, '1', '', '2018-06-13', '12:59', '12:59', 'agape', 'FORM 1', 'A', 'Dar es Salaam', '2018-06-23 16:31:19'),
(7, 23, 18, '1', '', '2018-06-21', '23:59', '01:00', 'agape', 'FORM 1', 'A', 'Dar es Salaam', '2018-06-23 16:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `vy_users`
--

CREATE TABLE `vy_users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `phoneNo` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `student_acc` int(11) DEFAULT NULL,
  `parent_acc` int(11) DEFAULT NULL,
  `enterprenuer_acc` int(11) DEFAULT NULL,
  `teacher_acc` int(11) DEFAULT NULL,
  `Main_account` varchar(100) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `joined` datetime NOT NULL,
  `profile` varchar(300) NOT NULL,
  `p_status` enum('a','b','c') NOT NULL,
  `grouped` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vy_users`
--

INSERT INTO `vy_users` (`id`, `username`, `phoneNo`, `password`, `fullname`, `student_acc`, `parent_acc`, `enterprenuer_acc`, `teacher_acc`, `Main_account`, `salt`, `joined`, `profile`, `p_status`, `grouped`) VALUES
(1, 'jery', '', 'f58b1bbc8ffc124edfea8362d78f92dabc80e3c240fbb9283664a2894c17baf1', 'nehemia Mwansasu', 1, 0, 0, 0, 'student_acc', 'þ5g‘òÞMÀÚÔÇYÚ€t÷Z\'JG\Z… w\Z–', '0000-00-00 00:00:00', 'profile_pct/2D6SyilFaUIn1fE/IMG-20170210-WA006.jpg', '', 1),
(2, 'mwakaboko', '', '25caaa217b542ac0e5da9e6667a3b9545c6e6a88834581c073586295df602903', 'Amani mwakaboko', 0, 0, 0, 1, 'teacher_acc', 'a	R›Îù¥\0zR]<SØ7Á´‡á\'ñ²bPMZì', '0000-00-00 00:00:00', '', '', 1),
(3, 'nelyc', '', 'eca3c2337f264b8175367d5627ae1f0a77aaa18363173facf14c6aa3ebbca362', 'neema Mwansasu', 1, 0, 0, 0, 'student_acc', 'Nxug…µ\"o3öØÆ¡´ññØ[õrsVtåAPäð', '0000-00-00 00:00:00', '', '', 1),
(4, 'salome', '', '5888e3a3e17585f48eca2d26d519337e734f5665ee439e46daa7673592cce3e0', 'salome Mkwatako', 1, 1, 0, 0, 'p_acc', 'ˆm,õ¨ÇPÒ‰íVb0®±Ê:E¢Aty}lhßÑÁ', '0000-00-00 00:00:00', '', '', 1),
(5, 'nick', '', '9cc0a45650e8e681c07dc6345bdd886509272609e65831cab827ac0b27da6c34', 'nickson', 1, 0, 1, 1, '', '»}›ÇÕd6D€PÄÆ¶‚«ôÂ	`Ä7}g‚ÙÕêXÎ’öì', '0000-00-00 00:00:00', 'profile_pct/Vjz8T9KjqN7uJBm/WIN_20160122_225319.JPG', '', 1),
(6, 'myname', '', '3066a0e96db934d28d5831ebe32e3baf779f37fc9721fda1968321995556e044', 'myname', 0, 0, 0, 0, '', 'Ú/hMÅ…þVÒhf‹:çžuÝ6ãÛž‹rìjûˆ…C', '0000-00-00 00:00:00', '', 'a', 1),
(7, 'MYuu', '', '5991cc12c205b9f803c1117bf9f8c6b916f22106b5aa1d0845fbfd806e5ff724', 'Nehemia Daud', 0, 0, 0, 1, '', 'ˆ«3D­–¤ã\',Ð>þí¤úÎÞ}A ®KVø', '0000-00-00 00:00:00', '', 'a', 1),
(8, 'MYoo', '', '229d1d39f0bc9984cc96ce874dc29a302c51ebe42f658c54b30bde18dde8b367', 'Nehemia Daud', 0, 0, 0, 1, 'teacher_acc', '2]Nì\Z°“®sMdT1›8n\'QÓÌŽp ¥ 7žŽr', '0000-00-00 00:00:00', '', 'a', 1),
(9, 'Ery', '', '9af709e7cd26d2d79517f41aad11704423af847cb38cc300973c95a9c7368a75', 'Ery Mwansasu', 1, 0, 0, 0, 'student_acc', 'tÏ2ÉNÐ°‹|ÂhbÛUðŒ#dÀŸ§íàÛµh]€', '0000-00-00 00:00:00', '', 'a', 1),
(10, 'dija', '', '2d61a1df1c63082066280962e9375c5d7387aa69b002b7050deb317802af8165', 'hadija', 1, 0, 0, 0, 'student_acc', 'ö±ËuòÝn¢=2¤o²^uÌmõršè¬ºÀc¤…', '0000-00-00 00:00:00', 'profile_pct/Tm9UcFzldurvxEZ/WIN_20160123_021220.JPG', 'a', 1),
(11, 'neno', '', 'e12f4fec337da6317e637cb99f83227b8bdf24349ea8dfec25680f272ecc3996', 'Nehemia', 1, 0, 0, 0, 'student_acc', 'Z%§­#D¬˜#zŸTÂÅ”¿V/>ºŒÅæ<V•È', '0000-00-00 00:00:00', '', 'a', 1),
(12, 'fomOne', '', '8bb46440cb1064d377f45b51324b7593f9cb33bfcfc2c922cf832d42a58701ed', 'form One', 1, 0, 0, 0, 'student_acc', ')®S’}:ÐO…%º[:‘_á©ˆ~Pˆœ;!³xK', '0000-00-00 00:00:00', 'profile_pct/AerMj2SQzOmTBDy/WIN_20160122_225316.JPG', 'a', 1),
(13, 'jjery', '', 'd1687ae3a42edb31699ff11c30bc21bcdcb870365a275e6be8fa88a5a6c9c8a3', 'janson', 1, 0, 0, 0, 'student_acc', ',ÂêS²Tu„ÓRÐrƒZÕü¯råøÝß¤Ó3Ô\0»p.', '0000-00-00 00:00:00', '', 'a', 1),
(14, 'mwak', '', '759d3325e7792debd3c32ccb6981e385291fcb73d1498c5a978d2b63a8170cd4', 'mwakipe', 1, 0, 0, 0, 'student_acc', 'EçKÓì(à´_ùÒQ}P¿öÕFeá‚`AÉôþ¯', '0000-00-00 00:00:00', '', 'a', 1),
(15, 'husese', '', '9281e326dca406bc137b6fe513102b70e115e8394355fa349dc571b82e5bdbaf', 'hamias husesen', 1, 0, 0, 0, 'student_acc', 'ð`ÀÂ™•Û´i»¶Ä&˜¤²«»‚¢1´:EPF¤w7iØ', '0000-00-00 00:00:00', '', 'a', 1),
(16, 'gaga', '', 'f722d7248061ada799f1552bdca5357c02c21e01320406342cfc8b1cb042656c', 'gaga', 1, 0, 0, 0, 'student_acc', 'Êê¸VãÏŸ½}aA`<˜ÍÕ)?({ü‡™#É;', '0000-00-00 00:00:00', '', 'a', 1),
(17, 'tech', '', '5203113c04ab2b3e62cfbb2d7a6acca6ef199d56d9053cbfb2f9b663652564cd', 'teacher', 0, 0, 0, 1, 'teacher_acc', '.n2æÉ¯¿5n›ü¡ýW…ý|Ìª[#\'ÞËÚlaÜÇD¨^', '0000-00-00 00:00:00', '', 'a', 1),
(18, 'jameK', '', '3b5a8f7be8f75df5fe1dca30ca546a7c8df4e297485bea32f787f56284b64b22', 'james Opole', 0, 0, 0, 1, 'teacher_acc', 'ÕÈ¼ÂUš+q»Ý¨\'í¼‰ªpÒ…Q›JÑU%Tñ', '0000-00-00 00:00:00', '', 'a', 1),
(19, 'kinya', '', 'bdb5150d7e5f735f8f67ac334fe2c1c7f535a99b1127187f2227aa08d7795030', 'kinnyaia', 0, 0, 0, 1, 'teacher_acc', 'yí¾·¨	”1é—ØÍûAÊU}]\"»º®¤|I&*Ü¹À', '0000-00-00 00:00:00', '', 'a', 1),
(20, 'teach', '', '1a6eed26c6d63f7f97a3e8df0c6dd9e347c0cf6c08a83c1f37b4a43702124562', 'teacher', 0, 0, 0, 1, 'teacher_acc', '«=ÔªÃnèU—›Õ€XGó¤†„x9´KµR%íd¬=', '0000-00-00 00:00:00', '', 'a', 1),
(21, 'two Acc', '', '197d936ca1e3abf7f95a8e09bdded01e366463f66e9b4ada7791b76147c193a2', 'twoAcount', 1, 0, 0, 1, 'student_acc', '’\'ß¹½í~õ‘S« €ØÚ‡OmôËØv8Â£ˆ§\n¦Pšy', '0000-00-00 00:00:00', '', 'a', 1),
(22, 'checkTwo', '', '552283a5c99984cf6125bb1f64568bd3d416cc6c790b7010637adcf3775f60c1', 'checkTwo', 1, 0, 0, 1, 'teacher_acc', '4ü)\r¡¶Ñ\0E,EJeˆ¦7Ý,O­òYŠ~*:à°', '0000-00-00 00:00:00', '', 'a', 1),
(23, 'baraka', '', 'bc93bba87dfa5bffcd6f50c087eb2e71aae06237fc6e8ccac4b1ce440bacdeac', 'Bx', 1, 1, 1, 1, 'p_acc', 'Q‰Ô.Cæ0“+ÓÏ<(ç_†H¿áP—ð‰²\"WÚ', '0000-00-00 00:00:00', 'profile_pct/YLlQHFDWSba7MB1/IMG-20151218-WA0002.jpg', 'a', 1),
(24, 'chacha', '', '2e15adc4e0d660c6f9f443af8de813282648ea1220f540ce4dd9e62b7e8e704a', 'chacha Mwansasu', 0, 0, 0, 1, 'teacher_acc', '‹7!HÛ´±5Í¸ÌªTìHSiw–eä§x½ûöjV', '0000-00-00 00:00:00', '', 'a', 1),
(25, 'cheche', '', '8fb7af4d5a0663a0010b7413d4653be2166e5c9d45ec9e49e2432d962f31cd1b', 'hahaa', 0, 0, 0, 1, 'teacher_acc', '„sçF/n‰: |E[”0·uªìN&šì[Û!íDh°', '0000-00-00 00:00:00', '', 'a', 1),
(26, 'ttmwa', '', '923fae9ec04bce71102eba560ae820e938cb4415146ceac2c5ac00d7299b8e65', 'trial', 0, 0, 0, 1, 'teacher_acc', 'ƒ¦«\0#ƒðF†˜Üø<:=¶v£	uÝ\" !<\rQ‚Ž', '0000-00-00 00:00:00', '', 'a', 1),
(27, 'james ', '', 'e5a18fd4b9920815b31602250c8ce0f69ecdd52618db406f1752c90db98f99ec', 'james kalinga', 1, 0, 0, 0, 'student_acc', '`Ùœë„Â½–†Op¢a\"ý{ùíÈÕeL3TÁ¼pöŸ', '0000-00-00 00:00:00', 'profile_pct/HvpWayYXtjZ2TMA/8e6af612856b5f51412016cb0bd57819.jpg', 'a', 1),
(28, 'Mr Mwansasu', '', '96be312746a0ae90617d749e1830ac58774987831028e1b1b0af33ec78ac1d60', 'John Mwansasu', 0, 0, 0, 1, 'teacher_acc', '9q²÷Âðm¡.á™¸ÍÒz$É°á#Îž¨\ZJ-¿ÂVžU', '0000-00-00 00:00:00', '', 'a', 1),
(29, 'Queens', '', 'bf3502b11d5a9b11de8aefed813a85f736c2badaff6b1329666b912e5be67837', 'Queens mwakabanga', 1, 0, 0, 0, 'student_acc', '»0\'3ëÖ­ÏóœÄ•æÀq]{‚ºE.×Š}ò”%ÌŽ', '0000-00-00 00:00:00', '', 'a', 1),
(30, 'hashimu', '', '92dbafeb4de05afd0e6e16f9e87736d51de7e11e9c5dd40e51a2f86179fe81eb', 'hashim Challo', 1, 0, 0, 0, 'student_acc', 'ÕH»_úôß´¨}<øGbL“§†zNw?hrÓB¹', '0000-00-00 00:00:00', '', 'a', 1),
(31, 'jafary', '', '7198145c6ef08bc76bbf89b1caa782fb84d7f86ecacee51ef012e3c0094c7c18', 'jafary Mwakabanga', 0, 1, 0, 0, 'p_acc', 'I>MÅºEKøÔxMÄ.äû2«¯O`ê\\‡•^aør°´í', '0000-00-00 00:00:00', '', 'a', 1),
(32, 'test h', '', 'f7c238a875b305d30c9efb4774d66114c46f3c0c8e94a41feab413310a6b763a', 'test jj', 1, 0, 0, 0, 'student_acc', '(ÖÐö™Üâ0W~ü!†ÿoöÖB‡¿CŽò»“õ', '0000-00-00 00:00:00', '', 'a', 1),
(33, 'mkondo O', '', '92c83e2eaffe37c00357e997f9ef03c7468d62e434a5fe4c81c01e4dfa748d6c', 'mkondo', 1, 0, 0, 0, '', '´sçmì3ž:ðGý/*ˆuîš|œ@ÝŒ/˜ž¡y', '0000-00-00 00:00:00', '', 'a', 1),
(34, 'poz', '', 'a6c4a460d569629aaf726ce0f2c89d6d791085b85dd8fe5285d21f5608313e20', 'pooz', 1, 0, 0, 0, '', 'mãÂcR^”dÈÖe` b^\r7×\\ÚZÞ¶,jL\n®^H™', '0000-00-00 00:00:00', '', 'a', 1),
(35, 'semaa', '', 'd897e2acb5fdcadbf3c91e33d64a1a5905d760937956ccdf48e895e4cd9eb0f0', 'haha', 0, 1, 0, 0, '', 'frîÇ%ÝšK@ùË-ôƒ$*yÏ‡”>ÈQ\r]ˆÔÓ9', '0000-00-00 00:00:00', '', 'a', 1),
(36, 'k sym', '', '62a2e9402954fcb152508e7b73d9afb65929007fc6512eb6e5f2c974c320446a', 'kasim mganga', 1, 0, 0, 0, 'student_acc', 'Žà–êŒ*aESº’(G8bî|˜#ÅÀÞÇ<l0,', '0000-00-00 00:00:00', '', 'a', 1),
(37, 'gey', '', 'c8a0ac7212510087e526ab9db4a5c5c0838f7200e6b8aa10e749d9f77b149b69', 'gey jar', 1, 0, 0, 0, 'student_acc', 'ežWè5.ô¼‚çá0y¹à]~YîG«*NýËµ', '0000-00-00 00:00:00', '', 'a', 1),
(38, 'Mute', '', '22954c99282cc50d04ca40784d1e3b45262d69f120d1190aae6153565bdf8d93', 'Masayo Musa', 1, 0, 0, 0, 'student_acc', 'àG:I¨?§è«ñ<0ÐHyÇryb¦¸ŠŠû-_¬à', '0000-00-00 00:00:00', '', 'a', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vy_users_session`
--

CREATE TABLE `vy_users_session` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vy_wallsubject`
--

CREATE TABLE `vy_wallsubject` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `section` varchar(20) NOT NULL,
  `qstnNo` varchar(50) NOT NULL,
  `columNo` varchar(50) NOT NULL,
  `topics_title` varchar(150) NOT NULL,
  `sub_topic` varchar(200) NOT NULL,
  `ideaOrQstn` text NOT NULL,
  `match_a` varchar(300) DEFAULT NULL,
  `match_b` varchar(300) DEFAULT NULL,
  `match_c` varchar(300) DEFAULT NULL,
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `schoolnam` varchar(250) NOT NULL,
  `examdate` varchar(32) NOT NULL,
  `date` datetime NOT NULL,
  `status` enum('a','b') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vy_wallsubject`
--

INSERT INTO `vy_wallsubject` (`id`, `user_id`, `section`, `qstnNo`, `columNo`, `topics_title`, `sub_topic`, `ideaOrQstn`, `match_a`, `match_b`, `match_c`, `subject_id`, `subject_name`, `schoolnam`, `examdate`, `date`, `status`) VALUES
(3, 12, 'SECTION A', '1', '1.1', 'topic', 'subtopic', 'main question', 'match a', 'match b', NULL, 15, 'civics', 'Happyskillfull', '9/9', '2018-02-01 06:30:58', 'b'),
(4, 12, 'SECTION A', '1', '1.1', 'topic', 'subtopic', 'main question', 'match a', 'match b', 'match c', 15, 'civics', 'Happyskillfull', '9/9', '2018-02-01 06:31:01', 'b'),
(5, 12, 'SECTION A', '9', '1.3', 'Topic', 'Subtopic', 'main page', 'match a', 'match b', 'match c', 15, 'civics', 'Secondary School', '7/1', '2018-02-01 06:51:50', 'b'),
(6, 12, 'SECTION A', '9', '1.1', 'Topics', 'subtopic', 'main page test for  c', 'match a', 'match b', 'match c', 15, 'civics', 'Happyskill', '5/5', '2018-02-01 07:04:19', 'b'),
(7, 12, 'SECTION A', '15', '1.11', 'topic', 'subtopic', 'yeyooo', 'match a', 'match b', 'match c', 15, 'civics', 'agakhan', '3/3', '2018-02-01 07:06:22', 'b'),
(8, 12, 'SECTION A', '3', '1.3', '', '', 'vfbnvbvbnvnv', 'match a', 'match b', 'match c', 15, 'civics', 'feza boys', '', '2018-02-01 07:10:07', 'b'),
(9, 12, 'SECTION A', '6', '1.3', '', '', 'kuma la mamamamamammamaaaaa y6akooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo', 'match a', 'match b', 'match c', 15, 'civics', 'google secondary school', 'sdf', '2018-02-01 07:12:01', 'b'),
(13, 12, 'SECTION B', '10', '1.11', 'Citizen', 'type of citizen', 'what is citizenship', 'type of  citizen', 'tanzania', 'kenya', 15, '', 'Agape Secondary School', '', '2018-02-03 07:12:16', 'b'),
(14, 12, 'SECTION A', '7', '1.4', 'kazi', 'kazi kwa kazi', 'What is kaz kwa kazi', '', '', '', 15, '', 'Olymbio Secondary School', '3/2/2018', '2018-02-03 10:48:53', 'b'),
(15, 12, 'SECTION A', '4', '1.4', 'Human Right', 'respnsibiltity', 'what is  Human Right  yar yare', '', '', '', 15, 'civics', 'Mwenge Sec School', '3/2/2015', '2018-02-03 10:58:01', 'b'),
(16, 12, 'SECTION A', '14', '1.2', 'dfgdgdg', 'Zito', 'fgdgd', '', '', '', 15, 'civics', 'Shool Name', '34/6', '2018-02-03 11:07:56', 'b'),
(17, 12, 'SECTION A', '14', '1.2', 'dfgdgdg', 'Zito', 'fgdgd', '', '', '', 15, 'civics', 'Shool Name', '34/6', '2018-02-03 11:08:00', 'b'),
(18, 12, 'SECTION A', '0', '0', 're', 'erere', 'gggggg', '', '', '', 15, 'civics', 'ffff', '6/6', '2018-02-03 11:08:44', 'b'),
(19, 12, 'SECTION A', '6', '1.4', 'Archmedc Principal', 'Arch', 'fdhdh', '', '', '', 68, 'physics', 'rrrrrrrrrrrr', '2/2', '2018-02-03 11:13:39', 'b'),
(24, 12, 'SECTION A', '12', '1.2', 'matatisp', 'mata', 'mataso yatakwisha lini', '', '', '', 15, 'civics', '', '', '2018-02-03 16:50:41', 'b'),
(26, 12, 'SECTION A', '0', '0', '', '', 'adsfasf', '', '', '', 15, 'civics', '', '', '2018-02-03 16:51:16', 'b'),
(28, 13, 'SECTION A', '13', '1.1', 'Trible', 'Nyamwez', 'history time jamani', 'Hellow', 'asante', 'Them', 16, 'history', 'Samgen Sec School', '', '2018-02-04 20:17:36', 'b'),
(30, 12, 'SECTION C', '10', '1.9', 'hah', 'dfsf', 'maina haya sasa', '', '', '', 15, 'civics', '', '', '2018-02-06 09:22:24', 'b'),
(31, 12, 'SECTION A', '10', '1.3', 'AGRICULTURE', 'SMALL AGRIG', 'maeneo hayo', '', '', '', 17, 'geography', '', '', '2018-02-06 09:25:02', 'b'),
(32, 12, 'SECTION A', '14', '1.3', 'haha', 'hahaha', 'sasa post nw', '', '', '', 18, 'kiswahili', '', '', '2018-02-07 16:28:31', 'b'),
(33, 23, 'SECTION A', '0', '0', 'gggg', 'gj', 'lm,m,,,', 'kjjk', 'mm,', ',m,', 15, 'civics', '', '', '2018-02-09 19:31:16', 'b'),
(34, 23, 'SECTION A', '6', '1.2', 'Nehemia Mwansasu', 'SS', 'kjhjksaas', '', '', '', 18, 'kiswahili', '', '', '2018-02-10 18:47:53', 'b'),
(35, 23, 'SECTION A', '2', '1.3', 'Riwaya', 'watoto wa m ama ntilie', 'Ainisha aina za zima katika tamthilia hii', 'Nine dhima', '100 dhima', '50 dhima', 18, 'kiswahili', '', '', '2018-03-17 01:49:20', 'b'),
(36, 23, 'SECTION A', '1', '1.1', 'dfgdgfd', 'dgdfgdfg', 'fghjgjhfg', 'dfgdfgdfg', 'dfgdgdf', 'dfgdgfdg', 18, 'kiswahili', 'dfgdgd', '345', '2018-07-21 16:39:28', 'b'),
(37, 28, 'SECTION B', '0', '0', '', '', 'dfgdfgdfg hahah yyaaa leo', 'd', 'f', 'v', 18, 'kiswahili', 'sdfsdfsdfs', 'sdf', '2018-07-22 15:02:49', 'b'),
(38, 28, 'SECTION B', '0', '1.4', '', '', 'sasa now it worik', 'd', 'f', 'v', 18, 'kiswahili', 'sdfsdfsdfs', '23/23/23', '2018-07-22 15:06:01', 'b'),
(39, 28, 'SECTION B', '3', '1.3', '2323', '2323', 'sadfkjkas yayayayyayayyayayya', '', '', '', 18, 'kiswahili', '2323', '2323', '2018-07-22 15:21:44', 'b'),
(40, 28, 'SECTION C', '5', '1.2', 'kjflkasjlkf', 'asdfasd', 'dsgfsfsgsg', 'asdf', 'adsf', 'asdf', 18, 'kiswahili', 'dfg', 'jdfkajkdfad', '2018-07-22 15:50:21', 'b'),
(41, 28, 'SECTION A', '13', '1.3', 'qwewe', 'wewer', 'sdfsaf asdfa fasdfa', 'w', 'd', 'f', 18, 'kiswahili', '12/12/sdfsf', '12/12/12', '2018-07-22 17:03:45', 'b'),
(42, 28, 'SECTION A', '0', '0', '', '', 'asdfasfaf', '', '', '', 18, 'kiswahili', 'dsafasasdfa', '23/23/23', '2018-07-22 17:05:56', 'b'),
(43, 28, 'SECTION B', '0', '0', 'dfgdfgf', 'dfgdgd', 'sfdgdsdgfsfgsg sdfgsdgsdfg', '', '', '', 18, 'kiswahili', 'fdddffgd', 'dfgdfgdg', '2018-07-22 17:12:39', 'b'),
(44, 28, 'SECTION B', '0', '0', 'dfgdfgf', 'dfgdgd', 'dfsdfsf sdfsfsf s dfsf sd fsf', '', '', '', 18, 'kiswahili', 'fdddffgd', 'dfgdfgdg', '2018-07-22 17:20:10', 'b'),
(45, 28, 'SECTION A', '0', '1.7', 'hvhjhj', 'hghjgjh', 'jjhjjjhgjgh', '', '', '', 18, 'kiswahili', 'hghj', 'ghjghj', '2018-07-23 02:04:38', 'b'),
(46, 28, 'SECTION A', '0', '0', 'sdf', 'sdfsdfsfs', 'sdfsdfs', '', '', '', 18, 'kiswahili', 'sdf', 'sdf', '2018-07-23 02:07:26', 'b'),
(47, 28, 'SECTION A', '2', '0', 'Fasihi', 'Fasihi Simulizi', 'fasihi ni nini', 'Kazi ya sanaa', 'kaz ya ujenzi', 'kazi ya raha', 18, 'kiswahili', 'Kibasila sec ndary school', '2/2/212', '2018-07-23 11:10:52', 'b'),
(48, 28, 'SECTION A', '2', '0', 'Fasihi', 'Fasihi Simulizi', 'Maisha ya kwahili ni sawa na mapenz ya baharini Explain', 'kaz  ni kaz tu', 'Maswali ya kbwege', 'kazi ya karaha', 18, 'kiswahili', 'Kibasila sec ndary school', '2/2/212', '2018-07-23 11:16:16', 'b'),
(49, 28, 'SECTION A', '1', '0', 'misemo', 'aina za maeno', 'Nini maana ya kbwagizo', '', '', '', 18, 'kiswahili', 'twapendwa', '', '2018-07-24 01:10:12', 'b'),
(50, 28, 'SECTION A', '0', '0', 'asdfasdf', 'asdfasdf', 'asdfasdfD', '', '', '', 19, 'english', 'sdfsdfsd', 'dsfdsf', '2018-07-25 13:13:39', 'b'),
(51, 28, 'SECTION A', '0', '0', 'asdfasdf', 'asdfasdf', 'eNGLISH', '', '', '', 19, 'english', 'sdfsdfsd', 'dsfdsf', '2018-07-25 13:14:00', 'b'),
(52, 28, 'SECTION B', '0', '1.8', 'asdfadsfsa dsfadf', 'lkmjlsadkladsf', 'mamam nenenen a,a,,a', '', '', '', 19, 'english', 'sdfsdfsd', '1212', '2018-07-25 16:00:51', 'b'),
(53, 28, 'SECTION B', '0', '1.8', 'asdfadsfsa dsfadf', 'lkmjlsadkladsf', 'dsfsdfsdf', '', '', '', 19, 'english', 'sdfsdfsd', '1212', '2018-07-25 16:01:54', 'b'),
(54, 28, 'SECTION C', '0', '0', 'asdfafa', '', 'sasa iv', '', '', '', 18, 'kiswahili', 'sadfasfaa', 'asdfaa', '2018-07-25 16:52:21', 'b'),
(55, 28, 'SECTION B', '0', '0', 'Topic', 'sd', 'Match item', 'Aa', 'CC', 'BB', 18, 'kiswahili', 'Buguruni', '2/2/2', '2018-07-25 17:00:23', 'b'),
(56, 28, 'SECTION B', '0', '0', 'Topic', 'sd', 'not have items', 'Aa', 'CC', 'BB', 18, 'kiswahili', 'Buguruni', '2/2/2', '2018-07-25 17:00:57', 'b'),
(57, 28, 'SECTION B', '0', '0', 'Topic', 'sd', 'ook', '', '', '', 18, 'kiswahili', 'Buguruni', '2/2/2', '2018-07-25 17:01:37', 'b'),
(58, 28, 'SECTION A', '0', '1.6', 'furtaha', 'kamas', 'maswali conc', 's', 'df', 'g', 18, 'kiswahili', 'dfgdfgdf', 'dfgdgdfg', '2018-07-27 10:17:07', 'b'),
(59, 28, 'SECTION A', '0', '0', 'sdfgsdfs', 'dsfgsdfgs', 'sdfgsgsdgfs', '', '', '', 18, 'kiswahili', 'sdfgsdgsdfsg', 'sdfssfgs', '2018-07-27 10:35:31', 'b'),
(60, 23, 'SECTION C', '9', '1.10', 'topic', 'sub name sasa', 'Inaweza kukusanya fedha now', 'gagaa', 'ni hatari', 'cfaaa', 18, 'kiswahili', 'Buguruni', '2/2/2012', '2018-07-30 08:25:43', 'b'),
(61, 28, 'SECTION B', '13', '1.2', 'Fasihi', 'fasihi Andisho', 'fasihi nin noin', 'kjlfdkajsd', 'aksdjflkjasdf', 'aksdfklasdfasd', 18, 'kiswahili', 'Buguruno', '2/2/2', '2018-07-30 18:39:18', 'b'),
(62, 28, 'SECTION C', '5', '1.3', 'Fashi', 'fasihi leoi', 'Fasihi ni ninii', 'kjlfdsjljfksa', 'lkjfakljflkd', 'lkaksldfjkladsjflsa', 18, 'kiswahili', 'Green Acres', '2/2/2', '2018-07-31 16:36:39', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `vy_wallsubjectreply`
--

CREATE TABLE `vy_wallsubjectreply` (
  `id` int(11) NOT NULL,
  `wallsubject_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `replier_id` int(11) NOT NULL,
  `subj_id` int(11) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vy_wallsubjectreply`
--

INSERT INTO `vy_wallsubjectreply` (`id`, `wallsubject_id`, `sender_id`, `replier_id`, `subj_id`, `msg`, `date`) VALUES
(2, 27, 0, 12, 0, 'oooukey', '2018-02-04 20:04:19'),
(3, 23, 0, 12, 0, 'hahahahah So am gona be successs', '2018-02-04 20:07:36'),
(4, 23, 0, 13, 0, 'why uku napo imetokea', '2018-02-04 20:13:18'),
(5, 27, 0, 13, 0, 'jklkjflksdfgds', '2018-02-04 20:39:36'),
(6, 27, 0, 13, 0, 'wht abt this lige', '2018-02-04 20:41:37'),
(7, 25, 0, 13, 0, 'pote pote', '2018-02-05 05:40:44'),
(8, 22, 0, 13, 0, 'ndo umeandika nin sasa', '2018-02-05 06:00:01'),
(9, 27, 0, 12, 0, 'maeneeo furani', '2018-02-06 10:09:02'),
(10, 29, 0, 12, 0, 'semA  kaka', '2018-02-06 10:09:45'),
(11, 27, 0, 12, 0, 'ndo nini saasa', '2018-02-06 10:10:11'),
(12, 29, 0, 12, 0, 'kakaakakakakaaa', '2018-02-06 10:10:43'),
(13, 29, 0, 12, 0, 'sooo kwa hyo', '2018-02-06 10:11:08'),
(14, 29, 0, 12, 0, 'kwa iyo sasa ww', '2018-02-07 16:31:46'),
(17, 48, 28, 28, 0, 'A', '2018-07-24 00:32:37'),
(18, 45, 28, 28, 0, 'B', '2018-07-24 01:08:58'),
(20, 49, 28, 28, 0, 'g', '2018-07-25 07:51:54'),
(21, 46, 28, 28, 0, 'd', '2018-07-25 12:13:18'),
(22, 42, 28, 28, 0, 'ndo  nini be serious na masi=omo', '2018-07-25 14:33:38'),
(23, 44, 28, 28, 0, 'D', '2018-07-25 15:35:20'),
(24, 43, 28, 28, 0, 'g', '2018-07-25 15:37:38'),
(25, 47, 28, 28, 0, 'sd', '2018-07-25 15:47:50'),
(26, 50, 28, 28, 0, 'h', '2018-07-25 15:59:29'),
(27, 40, 28, 28, 0, 'b', '2018-07-25 16:14:36'),
(28, 39, 28, 28, 0, 'h', '2018-07-25 16:15:13'),
(29, 41, 28, 28, 0, 'b', '2018-07-25 16:31:36'),
(30, 38, 28, 28, 0, 'd', '2018-07-25 16:31:58'),
(31, 37, 28, 28, 0, 'A', '2018-07-25 16:32:11'),
(32, 54, 28, 28, 0, 'b', '2018-07-25 16:52:40'),
(33, 35, 23, 28, 0, 'B', '2018-07-25 16:58:40'),
(34, 32, 12, 28, 0, 'C', '2018-07-25 16:58:58'),
(35, 55, 28, 28, 0, 'x', '2018-07-25 17:00:35'),
(36, 56, 28, 28, 0, 'd', '2018-07-25 17:01:08'),
(37, 57, 28, 28, 0, 'l', '2018-07-25 17:01:46'),
(38, 36, 23, 28, 0, 'B', '2018-07-25 17:14:01'),
(39, 51, 28, 28, 0, 'jsjs', '2018-07-25 18:06:07'),
(40, 57, 28, 28, 0, 'a', '2018-07-27 08:12:40'),
(41, 58, 28, 28, 0, 'f', '2018-07-27 10:17:19'),
(42, 59, 28, 28, 0, 'jibu lang litakuwa soo ameizing', '2018-07-27 10:35:50'),
(43, 34, 23, 28, 0, 'B', '2018-07-27 10:40:59'),
(44, 59, 28, 23, 0, 'f', '2018-07-29 11:14:52'),
(45, 59, 28, 23, 0, 'ff', '2018-07-29 11:26:10'),
(46, 58, 28, 23, 0, 'B', '2018-07-29 11:42:18'),
(47, 57, 28, 23, 0, 'h', '2018-07-29 12:08:25'),
(48, 48, 28, 23, 0, 'E', '2018-07-30 07:19:44'),
(49, 60, 23, 23, 0, 'd', '2018-07-30 10:59:41'),
(50, 60, 23, 28, 0, 'C', '2018-07-30 18:34:43'),
(51, 62, 28, 28, 0, 'c', '2018-07-31 16:37:16'),
(52, 61, 28, 28, 0, 'C', '2018-07-31 16:38:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enterpr_acc`
--
ALTER TABLE `enterpr_acc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent_acc`
--
ALTER TABLE `parent_acc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_acc`
--
ALTER TABLE `p_acc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_acc`
--
ALTER TABLE `student_acc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_acc`
--
ALTER TABLE `teacher_acc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vyu_notf`
--
ALTER TABLE `vyu_notf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vy_frnds`
--
ALTER TABLE `vy_frnds`
  ADD PRIMARY KEY (`frnds_id`);

--
-- Indexes for table `vy_group`
--
ALTER TABLE `vy_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vy_groups`
--
ALTER TABLE `vy_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vy_msg`
--
ALTER TABLE `vy_msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vy_photo`
--
ALTER TABLE `vy_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vy_qustion`
--
ALTER TABLE `vy_qustion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vy_reply`
--
ALTER TABLE `vy_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vy_req`
--
ALTER TABLE `vy_req`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vy_subjects`
--
ALTER TABLE `vy_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vy_subjecttopics`
--
ALTER TABLE `vy_subjecttopics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vy_subtpc`
--
ALTER TABLE `vy_subtpc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vy_subtpccover`
--
ALTER TABLE `vy_subtpccover`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vy_summaries`
--
ALTER TABLE `vy_summaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vy_themsg`
--
ALTER TABLE `vy_themsg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vy_timtable`
--
ALTER TABLE `vy_timtable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vy_users`
--
ALTER TABLE `vy_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vy_users_session`
--
ALTER TABLE `vy_users_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vy_wallsubject`
--
ALTER TABLE `vy_wallsubject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vy_wallsubjectreply`
--
ALTER TABLE `vy_wallsubjectreply`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enterpr_acc`
--
ALTER TABLE `enterpr_acc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `parent_acc`
--
ALTER TABLE `parent_acc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `p_acc`
--
ALTER TABLE `p_acc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `student_acc`
--
ALTER TABLE `student_acc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `teacher_acc`
--
ALTER TABLE `teacher_acc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `vyu_notf`
--
ALTER TABLE `vyu_notf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `vy_frnds`
--
ALTER TABLE `vy_frnds`
  MODIFY `frnds_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `vy_group`
--
ALTER TABLE `vy_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vy_groups`
--
ALTER TABLE `vy_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vy_msg`
--
ALTER TABLE `vy_msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `vy_photo`
--
ALTER TABLE `vy_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `vy_qustion`
--
ALTER TABLE `vy_qustion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vy_reply`
--
ALTER TABLE `vy_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `vy_req`
--
ALTER TABLE `vy_req`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `vy_subjects`
--
ALTER TABLE `vy_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `vy_subjecttopics`
--
ALTER TABLE `vy_subjecttopics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `vy_subtpc`
--
ALTER TABLE `vy_subtpc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `vy_subtpccover`
--
ALTER TABLE `vy_subtpccover`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `vy_summaries`
--
ALTER TABLE `vy_summaries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vy_themsg`
--
ALTER TABLE `vy_themsg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vy_timtable`
--
ALTER TABLE `vy_timtable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `vy_users`
--
ALTER TABLE `vy_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `vy_users_session`
--
ALTER TABLE `vy_users_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vy_wallsubject`
--
ALTER TABLE `vy_wallsubject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `vy_wallsubjectreply`
--
ALTER TABLE `vy_wallsubjectreply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
