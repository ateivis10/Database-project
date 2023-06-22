-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2023 at 09:45 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nr1`
--

-- --------------------------------------------------------

--
-- Table structure for table `restaurant1`
--

CREATE TABLE `restaurant1` (
  `restaurantId` int(11) NOT NULL,
  `location` varchar(30) DEFAULT NULL,
  `restaurantName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant1`
--

INSERT INTO `restaurant1` (`restaurantId`, `location`, `restaurantName`) VALUES
(3, 'Bandar', 'Spice Bazaar'),
(4, 'Bandar', 'ThaiTanic'),
(5, 'Bandar', 'Spice of India'),
(6, 'Bandar', 'Pizza Palace'),
(7, 'Chasara', 'Sultans Dine'),
(8, 'Chasara', 'Crush Station'),
(9, 'Chasara', 'Kacchi Vai'),
(10, 'Chasara', 'Pizzaa Burg'),
(11, 'Khanpur', 'YM Food Zone'),
(12, 'Khanpur', 'Coffeeholic'),
(13, 'Khanpur', 'Kababi'),
(14, 'Kachpur', 'Spice Garden'),
(15, 'Kachpur', 'Steak House'),
(16, 'Adamjee EPZ', 'Spice Delight'),
(17, 'Adamjee EPZ', 'Sizzler House'),
(18, 'Signboard', 'Burger Junction'),
(19, 'Signboard', 'The One Restaurant'),
(20, 'Gawsia', 'Testy Treat'),
(21, 'Gawsia', 'Burger Place'),
(22, 'Green University', 'Food Banglow'),
(23, 'Green University', 'New Zom Zom'),
(24, 'Jatrabari', 'Spice Land'),
(25, 'Jatrabari', 'Bhooter Bari'),
(26, 'Jatrabari', 'Pasta Paradise'),
(27, 'Mugrapara Chowrasta', 'Kola Pata'),
(28, 'Mugrapara Chowrasta', 'NFC Restaurant & BBQ');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(30) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `username`, `mobile`, `password`, `status`) VALUES
('Fahim', 'ateivis', '01516061382', '12345', 'false'),
('Admin', 'admin', '01346257563', '1234', 'true');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `restaurant1`
--
ALTER TABLE `restaurant1`
  ADD PRIMARY KEY (`restaurantId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `restaurant1`
--
ALTER TABLE `restaurant1`
  MODIFY `restaurantId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
