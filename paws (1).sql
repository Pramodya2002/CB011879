-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2024 at 05:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paws`
--

-- --------------------------------------------------------

--
-- Table structure for table `adopt`
--

CREATE TABLE `adopt` (
  `adopt_id` int(5) NOT NULL,
  `pet_id` int(5) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `district` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `phone_number` int(10) NOT NULL,
  `is_confirmed` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adopt`
--

INSERT INTO `adopt` (`adopt_id`, `pet_id`, `full_name`, `district`, `city`, `phone_number`, `is_confirmed`) VALUES
(42, 32, 'Pubudu', 'Colombo', 'Maharagama', 763425142, 0),
(43, 31, 'Anjana', 'Gampaha', 'Gampaha', 78352152, 1),
(45, 35, 'Amali Perera', 'Gampaha', 'Divulapitiya', 717047014, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pet`
--

CREATE TABLE `pet` (
  `pet_id` int(5) NOT NULL,
  `user_name` varchar(12) NOT NULL,
  `name` varchar(12) NOT NULL,
  `pet_type` varchar(16) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `district` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `phone_number` int(10) NOT NULL,
  `description` varchar(150) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_adopted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pet`
--

INSERT INTO `pet` (`pet_id`, `user_name`, `name`, `pet_type`, `age`, `gender`, `district`, `city`, `phone_number`, `description`, `photo`, `created_at`, `is_adopted`) VALUES
(39, 'Pramo', 'Sandy', 'Rescue Dog', 4, 'male', 'Gampaha', 'Mirigama', 753070672, 'A rescue dog with who listens to their owner well.', 'uploads/277f7bd1e9367181381e9439dd284294.jpeg', '2024-10-08 07:10:29', 1),
(40, 'Pramo', 'Cookie', 'Daschund', 2, 'male', 'Gampaha', 'Mirigama', 753070672, 'A daschund with proper training Behaves good with children.', 'uploads/f2690bad7449bf89376d84b1e6d0721c.jpeg', '2024-10-08 07:32:48', 0),
(45, 'Pramodya', 'Luna', 'Rescue dog', 2, 'Female', 'Gampaha', 'MIRIGAMA', 753070672, 'Dog', 'uploads/d6050e2af1de9f3cd1e49db516c7cb42.jpeg', '2024-10-08 17:32:48', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_name` varchar(12) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(16) NOT NULL,
  `is_admin` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_name`, `full_name`, `email`, `password`, `is_admin`) VALUES
('Amali', 'Amali Perera', 'straysaver10@gmail.com', 'Amali@2002', 0),
('Dananji', 'Dananji Bandara', 'dananji@gmail.com', 'Dana@2002', 0),
('Gihan', 'Gihan Fernando', 'gihanf@gmail.com', 'Gihan@2002', 0),
('Pramo', 'Pramodya Athauda', 'pramodya511@gmail.com', 'Pramo@2002', 0),
('Pramodya', 'Pramodya Athauda', 'pramodya511@gmail.com', 'Pramo@2002', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adopt`
--
ALTER TABLE `adopt`
  ADD PRIMARY KEY (`adopt_id`);

--
-- Indexes for table `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`pet_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adopt`
--
ALTER TABLE `adopt`
  MODIFY `adopt_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `pet`
--
ALTER TABLE `pet`
  MODIFY `pet_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
