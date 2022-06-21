-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2022 at 02:25 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `country`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_name` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `state_id`, `city_name`, `status`) VALUES
(1, 1, 'Sydney', 1),
(2, 1, 'Newcastle', 1),
(3, 1, 'Central Coast', 1),
(4, 2, 'Brisbane', 1),
(5, 2, 'Gold Coast', 1),
(6, 2, 'Townsville', 1),
(7, 3, 'Melbourne', 1),
(8, 3, 'Geelong', 1),
(9, 4, 'Bern', 1),
(10, 5, 'Geneve', 1),
(11, 6, 'Lausanne', 1),
(12, 7, 'Oviedo', 1),
(13, 8, 'Barcelona', 1),
(14, 8, 'Sabadell', 1),
(15, 8, 'Tarragona', 1),
(16, 9, 'Madrid', 1),
(17, 9, 'Fuenlabrada', 1),
(18, 9, 'Getafe', 1),
(19, 10, 'London', 1),
(20, 10, 'Liverpool', 1),
(21, 11, 'Newark', 1),
(22, 12, 'Glasgow', 1),
(23, 13, 'Miami', 1),
(24, 14, 'Atlanta', 1),
(25, 15, 'Salina', 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`, `status`) VALUES
(1, 'Australia', 1),
(2, 'Switzerland', 1),
(3, 'Spain', 1),
(4, 'United Kingdom', 1),
(5, 'United States', 1);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_name` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`state_id`, `country_id`, `state_name`, `status`) VALUES
(1, 1, 'New South Wales', 1),
(2, 1, 'Queensland', 1),
(3, 1, 'Victoria', 1),
(4, 2, 'Bern', 1),
(5, 2, 'Geneve', 1),
(6, 2, 'Vaud', 1),
(7, 3, 'Asturia', 1),
(8, 3, 'Katalonia', 1),
(9, 3, 'Madrid', 1),
(10, 4, 'England', 1),
(11, 4, 'Jersey', 1),
(12, 4, 'Scotland', 1),
(13, 5, 'Florida', 1),
(14, 5, 'Georgia', 1),
(15, 5, 'Kansas', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`state_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
