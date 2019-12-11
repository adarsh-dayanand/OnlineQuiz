-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2019 at 05:18 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('admin@webproject.com', '12345'),
('admin1@webproject.com', '12345');

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
('5dd96a9668437', '5dd96a967c42f'),
('5dd96a96c8a14', '5dd96a96d640b'),
('5dd96a9712e14', '5dd96a9730bdd'),
('5dd96a974e313', '5dd96a975967a'),
('5dd96a977432e', '5dd96a9779bce');

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
  `date` varchar(10) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('5ddcdd9f9c851', 'Test', 'test@test.com', 'Feedback of the online quiz.', 'Good project', '26-11-2019', '09:09:03am');

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
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('test@test.com', '5dd9688951f2b', 3, 5, 3, 2, '2019-11-24 07:28:39'),
('testv@gmail.com', '5dd9688951f2b', 4, 5, 4, 1, '2019-11-24 12:54:05');

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
('5dd96a9668437', 'Programming', '5dd96a967c423'),
('5dd96a9668437', 'Scripting', '5dd96a967c42a'),
('5dd96a9668437', 'Server side ', '5dd96a967c42d'),
('5dd96a9668437', 'Hypertext markup', '5dd96a967c42f'),
('5dd96a96c8a14', 'Scripting', '5dd96a96d6400'),
('5dd96a96c8a14', 'Pragramming', '5dd96a96d6408'),
('5dd96a96c8a14', 'Server side', '5dd96a96d640b'),
('5dd96a96c8a14', 'Hacking', '5dd96a96d640d'),
('5dd96a9712e14', '11', '5dd96a9730bcf'),
('5dd96a9712e14', '101', '5dd96a9730bdd'),
('5dd96a9712e14', '10', '5dd96a9730be1'),
('5dd96a9712e14', 'Error', '5dd96a9730be2'),
('5dd96a974e313', '100', '5dd96a9759672'),
('5dd96a974e313', '101', '5dd96a9759679'),
('5dd96a974e313', '9', '5dd96a975967a'),
('5dd96a974e313', 'Error', '5dd96a975967b'),
('5dd96a977432e', 'Cascading Style Sheet', '5dd96a9779bce'),
('5dd96a977432e', 'Calculating Style Sheet', '5dd96a9779bd5'),
('5dd96a977432e', 'Creative Style Sheet', '5dd96a9779bd6'),
('5dd96a977432e', 'None of the above', '5dd96a9779bd8');

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
('5dd9688951f2b', '5dd96a9668437', 'HTML is a _________ language.', 4, 1),
('5dd9688951f2b', '5dd96a96c8a14', 'Php is a _________ language.', 4, 2),
('5dd9688951f2b', '5dd96a9712e14', '\"10\" + 1 = ? (in JavaScript)', 4, 3),
('5dd9688951f2b', '5dd96a974e313', '\"10\" - 1 = ? in (JavaScript)', 4, 4),
('5dd9688951f2b', '5dd96a977432e', 'Expand CSS', 4, 5);

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
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('5dd9688951f2b', 'Computer Science', 1, 0, 5, 20, 'Sample test for CSE', '#cs', '2019-11-23 17:12:41');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('test@test.com', 5, '2019-11-24 07:33:50'),
('testv@gmail.com', 8, '2019-11-24 12:54:06');

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
('Test', 'M', '4MC17CS001', 'test@test.com', 9874563210, '827ccb0eea8a706c4c34a16891f84e7b'),
('Testv', 'F', '4MC17CS002', 'testv@gmail.com', 9632587411, '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
