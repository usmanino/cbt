-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 28, 2022 at 12:59 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `role` varchar(10) DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`, `role`) VALUES
('head@gmail.com', 'head', 'head'),
('teacher1@gmail.com', 'teacher1', 'admin'),
('teacher3@gmail.com', 'teacher2', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('63341b634ecf3', '63341b634f89b'),
('63341b634ffc4', '63341b635015d'),
('63341b6350e9c', '63341b6350fc8'),
('63341b6351678', '63341b6351985'),
('63341b6352141', '63341b635227b'),
('63341b6352b3f', '63341b6352c3c'),
('63341b63532f4', '63341b6353413'),
('63341b6353b50', '63341b6353c6f'),
('63341b63540e6', '63341b63541c3'),
('63341b6354600', '63341b63546ef'),
('63341b6354b64', '63341b6354c6b'),
('63341b6355172', '63341b63551b5'),
('63341b6355700', '63341b63557ea'),
('63341b6355d67', '63341b6355eed'),
('63341b635651f', '63341b6356615');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('usmaninobello@gmail.com', '633415bd8e245', -25, 15, 5, 10, '2022-09-28 10:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('63341b634ecf3', 'object-oriented programming', '63341b634f896'),
('63341b634ecf3', 'structured programming', '63341b634f899'),
('63341b634ecf3', 'functional programming', '63341b634f89a'),
('63341b634ecf3', 'all of the mentioned', '63341b634f89b'),
('63341b634ffc4', 'Yes', '63341b635015d'),
('63341b634ffc4', 'No', '63341b635015e'),
('63341b634ffc4', 'machine dependent', '63341b635015f'),
('63341b634ffc4', 'none of the mentioned', '63341b6350160'),
('63341b6350e9c', '.python', '63341b6350fc5'),
('63341b6350e9c', '.pl', '63341b6350fc7'),
('63341b6350e9c', '.py', '63341b6350fc8'),
('63341b6350e9c', '.p', '63341b6350fc9'),
('63341b6351678', 'Python code is both compiled and interpreted', '63341b6351981'),
('63341b6351678', 'Python code is neither compiled nor interpreted', '63341b6351983'),
('63341b6351678', 'Python code is only compiled', '63341b6351984'),
('63341b6351678', 'Python code is only interpreted', '63341b6351985'),
('63341b6352141', '7', '63341b635227b'),
('63341b6352141', '4', '63341b635227d'),
('63341b6352141', '2', '63341b635227e'),
('63341b6352141', '1', '63341b635227f'),
('63341b6352b3f', 'function', '63341b6352c3b'),
('63341b6352b3f', 'def', '63341b6352c3c'),
('63341b6352b3f', 'fun', '63341b6352c3d'),
('63341b6352b3f', 'define', '63341b6352c3e'),
('63341b63532f4', '//', '63341b6353412'),
('63341b63532f4', '#', '63341b6353413'),
('63341b63532f4', '!', '63341b6353414'),
('63341b63532f4', ' /*', '63341b6353415'),
('63341b6353b50', '1 2 3', '63341b6353c6d'),
('63341b6353b50', '1 2', '63341b6353c6e'),
('63341b6353b50', 'error', '63341b6353c6f'),
('63341b6353b50', 'none of the mentioned', '63341b6353c70'),
('63341b63540e6', '4', '63341b63541c3'),
('63341b63540e6', '2', '63341b63541c4'),
('63341b63540e6', '1', '63341b63541c5'),
('63341b63540e6', '8', '63341b63541c6'),
('63341b6354600', 'underscore and ampersand are the only two special characters allowed', '63341b63546ee'),
('63341b6354600', 'unlimited length', '63341b63546ef'),
('63341b6354600', 'all private members must have leading and trailing underscores', '63341b63546f0'),
('63341b6354600', 'none of the mentioned', '63341b63546f1'),
('63341b6354b64', '512, 64, 512', '63341b6354c6b'),
('63341b6354b64', '512, 512, 512', '63341b6354c6c'),
('63341b6354b64', '64, 512, 64', '63341b6354c6d'),
('63341b6354b64', '64, 64, 64', '63341b6354c6e'),
('63341b6355172', '[1, 0, 2, ‘hello’, ”, []]', '63341b63551b3'),
('63341b6355172', 'Error', '63341b63551b4'),
('63341b6355172', ' [1, 2, ‘hello’]', '63341b63551b5'),
('63341b6355172', ' [1, 0, 2, 0, ‘hello’, ”, []]', '63341b63551b6'),
('63341b6355700', 'factorial()', '63341b63557e9'),
('63341b6355700', 'print()', '63341b63557ea'),
('63341b6355700', 'seed()', '63341b63557eb'),
('63341b6355700', 'all of the above', '63341b63557ec'),
('63341b6355d67', '4 3 2 1', '63341b6355eed'),
('63341b6355d67', '1 2 3 4', '63341b6355eef'),
('63341b6355d67', 'error', '63341b6355ef0'),
('63341b6355d67', 'none of the mentioned', '63341b6355ef1'),
('63341b635651f', '*', '63341b6356614'),
('63341b635651f', '-', '63341b6356615'),
('63341b635651f', '+', '63341b6356616'),
('63341b635651f', 'All of the mentioned', '63341b6356617');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('633415bd8e245', '63341b634ecf3', 'Which type of Programming does Python support?', 4, 1),
('633415bd8e245', '63341b634ffc4', 'Is Python case sensitive when dealing with identifiers?', 4, 2),
('633415bd8e245', '63341b6350e9c', 'Which of the following is the correct extension of the Python file?', 4, 3),
('633415bd8e245', '63341b6351678', 'Is Python code compiled or interpreted?', 4, 4),
('633415bd8e245', '63341b6352141', 'What will be the value of the following Python expression?\r\n4 + 3 % 5', 4, 5),
('633415bd8e245', '63341b6352b3f', 'Which keyword is used for function in Python language?', 4, 6),
('633415bd8e245', '63341b63532f4', 'Which of the following character is used to give single-line comments in Python?', 4, 7),
('633415bd8e245', '63341b6353b50', 'What will be the output of the following Python code?\r\n\r\ni = 1\r\nwhile True:\r\n    if i%3 == 0:\r\n        break\r\n    print(i)\r\n \r\n    i + = 1', 4, 8),
('633415bd8e245', '63341b63540e6', 'What will be the output of the following Python code snippet if x=1?\r\nx<<2', 4, 9),
('633415bd8e245', '63341b6354600', 'Which of the following is true for variable names in Python?', 4, 10),
('633415bd8e245', '63341b6354b64', 'What are the values of the following Python expressions?\r\n\r\n 2**(3**2)\r\n (2**3)**2\r\n 2**3**2', 4, 11),
('633415bd8e245', '63341b6355700', 'Which of the following functions is a built-in function in python?', 4, 13),
('633415bd8e245', '63341b6355d67', 'What will be the output of the following Python code snippet?\r\n\r\nfor i in [1, 2, 3, 4][::-1]:\r\n    print (i)', 4, 14),
('633415bd8e245', '63341b635651f', 'What arithmetic operators cannot be used with strings in Python?', 4, 15);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`, `email`) VALUES
('633415bd8e245', 'Python', 5, 5, 15, 30, 'Best of luck', '', '2022-09-28 09:37:01', 'teacher1@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('usmaninobello@gmail.com', -23, '2022-09-28 10:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Usman Bello', 'M', 'Atiba', 'usmaninobello@gmail.com', 9030873899, 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
