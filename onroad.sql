-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2022 at 05:50 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onroad`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `shopname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` int(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `lat` varchar(50) NOT NULL,
  `longt` varchar(10) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `username` varchar(50) NOT NULL,
  `usermobile` int(50) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `id` int(255) NOT NULL,
  `rs` varchar(50) NOT NULL DEFAULT 'notpayed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`shopname`, `email`, `mobile`, `city`, `lat`, `longt`, `status`, `username`, `usermobile`, `useremail`, `time`, `id`, `rs`) VALUES
('kingMechs', 'shop4@gmail.com', 2147483647, 'kochi', '9.9669896', '76.2865185', 'approved', 'anazksunil', 2147483647, 'anazksunil2@gmail.com', '2022-1-17 16:1:57', 10, '500'),
('kingMechs', 'shop4@gmail.com', 2147483647, 'kochi', '9.9669896', '76.2865185', 'Rejected', 'anazksunil', 2147483647, 'anazksunil2@gmail.com', '2022-1-17 16:15:14', 11, 'not payed'),
('mechKing', 'shop3@gmail.com', 2147483647, 'kochi', '9.9669896', '76.2865185', 'approved', 'anazksunil', 2147483647, 'anazksunil2@gmail.com', '2022-1-17 16:38:56', 12, ''),
('RoyalMechz', 'shop@gmail.com', 2147483647, 'kochi', '9.9670502', '76.2865352', 'approved', 'anazksunil', 242121441, 'anazksunil2@gmail.com', '2022-1-19 15:37:51', 13, 'notpayed'),
('kingzShops', 'shop2@Gmail.com', 854512545, 'kochi', '9.9624244', '76.2826562', 'pending', 'anazksunil', 242121441, 'anazksunil2@gmail.com', '2022-2-1 8:24:2', 14, 'notpayed'),
('kingzShops', 'shop2@Gmail.com', 854512545, 'kochi', '9.9670471', '76.2865493', 'pending', 'anazksunil', 242121441, 'anazksunil2@gmail.com', '2022-2-23 10:9:53', 15, 'notpayed');

-- --------------------------------------------------------

--
-- Table structure for table `mechanics`
--

CREATE TABLE `mechanics` (
  `ShopName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `cpassword` varchar(100) NOT NULL,
  `id` int(10) NOT NULL,
  `city` varchar(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mechanics`
--

INSERT INTO `mechanics` (`ShopName`, `email`, `mobile`, `password`, `cpassword`, `id`, `city`, `status`) VALUES
('RoyalMechz', 'shop@gmail.com', 2147483647, '123', '123', 1, 'kochi', 'approved'),
('kingzShops', 'shop2@Gmail.com', 854512545, '123', '123', 2, 'kochi', 'approved'),
('mechKing', 'shop3@gmail.com', 2147483647, '123', '123', 3, 'kochi', 'pending'),
('kingMechs', 'shop4@gmail.com', 2147483647, '123', '123', 4, 'kochi', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `rider`
--

CREATE TABLE `rider` (
  `email` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `mobile` int(255) NOT NULL,
  `password` varchar(20) NOT NULL,
  `repassword2` varchar(255) NOT NULL,
  `id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rider`
--

INSERT INTO `rider` (`email`, `username`, `mobile`, `password`, `repassword2`, `id`) VALUES
('anazksunil2@gmail.com', 'anazksunil', 242121441, '123', '123', 2),
('anazksunil24@gmail.com', 'zanaks', 2147483647, '123', '123', 3),
('akash2@gmail.com', 'akash', 2147483647, '123', '123', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mechanics`
--
ALTER TABLE `mechanics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rider`
--
ALTER TABLE `rider`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mechanics`
--
ALTER TABLE `mechanics`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rider`
--
ALTER TABLE `rider`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
