-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 14, 2021 at 11:37 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auth_user`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_models`
--

CREATE TABLE `admin_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_models`
--

INSERT INTO `admin_models` (`id`, `name`, `password`, `email`, `user_type`) VALUES
(1, 'Admin', '123', 'admin@gmail.com', 'Admin'),
(2, 'Mainul', '12345', 'mainul@gmail.com', NULL),
(3, 'Babu', '$2y$10$pu7E8jt108oRHI.0jnwhAOB/2eoSue94KH1JY46xTgRdhUbwD1NL2', 'touhidalm82@gmail.com', 'Customer'),
(4, 'Central Warehouse', '202cb962ac59075b964b07152d234b70', 'cw@gmail.com', 'Admin'),
(5, 'Chittagong CTG', '58eef294b54847752782276ffad32967', 'ctg@gmail.com', 'Admin'),
(6, 'Oni', '$2y$10$HQj9uQR7WHpg17DqNVfKW.3n7n/xdqb7H0KLSCh3.TLo.3LF0mRSW', 'oni@gmail.com', 'Admin'),
(7, 'Sarwar', '202cb962ac59075b964b07152d234b70', 'sarwar@gmail.com', 'Admin'),
(8, 'ss', '9f6e6800cfae7749eb6c486619254b9c', 'sumanjuly1980@gmail.com', 'Admin'),
(9, 'ss', '9f6e6800cfae7749eb6c486619254b9c', 'sumanjuly1980@gmail.com', 'Admin'),
(10, 'Babu', '4e447c2e164c0c18ea225bddab3fbca7', 'touhidalm82@gmail.com', 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_07_30_074537_create_photo_models_table', 1),
(2, '2020_07_30_074934_create_admin_models_table', 1),
(3, '2021_01_14_151849_token_table', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_models`
--
ALTER TABLE `admin_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_models`
--
ALTER TABLE `admin_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
