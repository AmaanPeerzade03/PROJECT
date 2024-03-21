-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2024 at 11:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company`
--

-- --------------------------------------------------------

--
-- Table structure for table `PROJECT`
--

CREATE TABLE `project` (
  `PNO` int(11) NOT NULL,
  `PNAME` varchar(20) DEFAULT NULL,
  `PLOCATION` varchar(20) DEFAULT NULL,
  `DNO` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PROJECT`
--

INSERT INTO `PROJECT` (`PNO`, `PNAME`, `PLOCATION`, `DNO`) VALUES
(1000, 'IOT', 'BENGALURU', '5'),
(1001, 'CLOUD', 'BENGALURU', '5'),
(1002, 'BIGDATA', 'BENGALURU', '5'),
(1003, 'SENSORS', 'BENGALURU', '3'),
(1004, 'BANK MANAGEMENT', 'BENGALURU', '1'),
(1005, 'SALARY MANAGEMENT', 'BANGALORE', '1'),
(1006, 'OPENSTACK', 'BENGALURU', '4'),
(1007, 'SMART CITY', 'BENGALURU', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `PROJECT`
--
ALTER TABLE `PROJECT`
  ADD PRIMARY KEY (`PNO`),
  ADD KEY `DNO` (`DNO`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `PROJECT`
--
ALTER TABLE `PROJECT`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`DNO`) REFERENCES `department` (`DNO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
