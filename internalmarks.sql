-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2024 at 12:39 AM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `internalmarks`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `password`) VALUES
('13331A1223', 'abcd');

-- --------------------------------------------------------

--
-- Table structure for table `regdfaculty`
--

CREATE TABLE IF NOT EXISTS `regdfaculty` (
  `id` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regdfaculty`
--

INSERT INTO `regdfaculty` (`id`, `name`, `dept`, `password`) VALUES
('1234567', 'Jai', 'B.Sc', 'abc'),
('13331A1223', 'Sai', 'B.SC', 'abc'),
('1234', 'Rao', 'B.Sc', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `regdusers`
--

CREATE TABLE IF NOT EXISTS `regdusers` (
  `id` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dept` varchar(10) NOT NULL,
  `year` int(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regdusers`
--

INSERT INTO `regdusers` (`id`, `name`, `dept`, `year`, `password`) VALUES
('133ksdlkfa', 'jai', 'B.Sc', 1, 'abc'),
('13331A1223', 'Krish', 'B.Sc', 1, 'abc'),
('13331A1214', 'laila', 'B.Sc', 4, 'laila');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE IF NOT EXISTS `results` (
  `id` int(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `internal marks` int(10) NOT NULL,
  `year` int(20) NOT NULL,
  `sem` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regdfaculty`
--
ALTER TABLE `regdfaculty`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regdusers`
--
ALTER TABLE `regdusers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
 ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
