-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2021 at 11:55 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookname` varchar(225) NOT NULL,
  `authorname` varchar(225) NOT NULL,
  `publishdate` varchar(225) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookname`, `authorname`, `publishdate`, `id`) VALUES
('Physics', 'kkk', '1-9-18', 4),
('English', 'ac', '1-9-19', 6),
('chemistry', 'a', '1-9-20', 8),
('Intro to Bangla', 'ac', '1-9-19', 11),
('story book', 'ac', '1-9-19', 12);

-- --------------------------------------------------------

--
-- Table structure for table `bookname`
--

CREATE TABLE `bookname` (
  `id` int(11) NOT NULL,
  `bookname` varchar(225) NOT NULL,
  `authorname` varchar(225) NOT NULL,
  `publishdate` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookname`
--

INSERT INTO `bookname` (`id`, `bookname`, `authorname`, `publishdate`) VALUES
(1, 'Into to English', 'ABC', '19-09-20');

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `bookname` varchar(225) NOT NULL,
  `borrowdate` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`id`, `name`, `bookname`, `borrowdate`) VALUES
(1, 'faria', 'Bangla', '9-10-19'),
(2, 'borna', 'Physics', '9-10-20'),
(3, 'liza', 'Math', '9-11-20'),
(4, 'afifa', 'Chemistry', '9-11-21'),
(5, 'faija', 'math', '2-2-20');

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `name` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `cpass` varchar(225) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`name`, `password`, `email`, `username`, `cpass`, `id`) VALUES
('Borna', '1234', 'fariahossain1409@gmail.com', 'borna', '1234', 1),
('Afifa', '111', 'afifa@gmail.com', 'Afifa', '111', 3),
('Faria Hossain Borna', '123', 'faria@gmail.com', 'faria', '123', 6),
('Aa A', '111', 'a@gmail.com', 'aa', '111', 8),
('arifa', '122', 'arifa@gmail.com', 'arifa', '111', 9);

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `id` int(11) NOT NULL,
  `librarian` varchar(225) NOT NULL,
  `day` varchar(225) NOT NULL,
  `time` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`id`, `librarian`, `day`, `time`) VALUES
(1, 'faria', 'Sat-Mon-Wed', '9-2'),
(2, 'arifa', 'Sat-Mon-Wed', '2-5'),
(3, 'Esha', 'Sun-Tue-Thu', '9-2'),
(4, 'Ria', 'Sun-Tue-Thu', '2-5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bookname` (`bookname`);

--
-- Indexes for table `bookname`
--
ALTER TABLE `bookname`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
