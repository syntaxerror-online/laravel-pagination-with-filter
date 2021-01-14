-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 14, 2021 at 04:18 PM
-- Server version: 5.6.50-log
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `syntaxerror_tuttorial`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` mediumint(8) UNSIGNED NOT NULL,
  `state_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` mediumint(8) UNSIGNED NOT NULL,
  `country_code` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '2014-01-01 01:01:01',
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `flag` tinyint(1) NOT NULL DEFAULT '1',
  `wikiDataId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Rapid API GeoDB Cities'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `state_code`, `country_id`, `country_code`, `latitude`, `longitude`, `created_at`, `updated_on`, `flag`, `wikiDataId`) VALUES
(1, 'Andorra la Vella', 488, '07', 6, 'AD', '42.50779000', '1.52109000', '2019-10-05 18:28:06', '2019-10-05 18:28:06', 1, 'Q1863'),
(2, 'Arinsal', 493, '04', 6, 'AD', '42.57205000', '1.48453000', '2019-10-05 18:28:06', '2019-10-05 18:28:06', 1, 'Q24554'),
(3, 'Canillo', 489, '02', 6, 'AD', '42.56760000', '1.59756000', '2019-10-05 18:28:06', '2019-10-05 18:28:06', 1, 'Q24554'),
(4, 'El Tarter', 489, '02', 6, 'AD', '42.57952000', '1.65362000', '2019-10-05 18:28:06', '2019-10-05 18:28:06', 1, 'Q24413'),
(5, 'Encamp', 487, '03', 6, 'AD', '42.53474000', '1.58014000', '2019-10-05 18:28:06', '2019-10-05 18:28:06', 1, 'Q24413'),
(6, 'Ordino', 491, '05', 6, 'AD', '42.55623000', '1.53319000', '2019-10-05 18:28:06', '2019-10-05 18:28:06', 1, 'Q3885480'),
(7, 'Pas de la Casa', 487, '03', 6, 'AD', '42.54277000', '1.73361000', '2019-10-05 18:28:06', '2019-10-05 18:28:06', 1, 'Q24456'),
(8, 'Sant Julià de Lòria', 490, '06', 6, 'AD', '42.46372000', '1.49129000', '2019-10-05 18:28:06', '2020-05-01 13:22:33', 1, 'Q1120573'),
(9, 'la Massana', 493, '04', 6, 'AD', '42.54499000', '1.51483000', '2019-10-05 18:28:06', '2019-10-05 18:28:06', 1, 'Q3820973'),
(10, 'les Escaldes', 492, '08', 6, 'AD', '42.50729000', '1.53414000', '2019-10-05 18:28:06', '2019-10-05 18:28:06', 1, 'Q1050185'),
(11, 'Abu Dhabi Island and Internal Islands City', 3396, 'AZ', 231, 'AE', '24.45110000', '54.39690000', '2019-10-05 18:28:06', '2019-10-05 18:28:06', 1, 'Q1050185'),
(12, 'Abu Dhabi Municipality', 3396, 'AZ', 231, 'AE', '24.41361000', '54.43295000', '2019-10-05 18:28:06', '2019-10-05 18:28:06', 1, 'Q1050185'),
(13, 'Adh Dhayd', 3390, 'SH', 231, 'AE', '25.28812000', '55.88157000', '2019-10-05 18:28:06', '2019-10-05 18:28:06', 1, 'Q3492826'),
(14, 'Ajman', 3395, 'AJ', 231, 'AE', '25.40328000', '55.52341000', '2019-10-05 18:28:06', '2019-10-05 18:28:06', 1, 'Q3492826'),
(15, 'Ajman City', 3395, 'AJ', 231, 'AE', '25.40177000', '55.47878000', '2019-10-05 18:28:06', '2019-10-05 18:28:06', 1, 'Q530171'),
(16, 'Al Ain City', 3396, 'AZ', 231, 'AE', '24.19167000', '55.76056000', '2019-10-05 18:28:06', '2019-10-05 18:28:06', 1, 'Q234600'),
(17, 'Al Ain Municipality', 3396, 'AZ', 231, 'AE', '24.15223000', '55.82040000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q234600'),
(18, 'Al Batayih', 3390, 'SH', 231, 'AE', '25.22317000', '55.74272000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q234600'),
(19, 'Al Dhafra', 3396, 'AZ', 231, 'AE', '23.65745000', '53.72225000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q234600'),
(20, 'Al Fujairah City', 3393, 'FU', 231, 'AE', '25.11641000', '56.34141000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q234600'),
(21, 'Al Fujairah Municipality', 3393, 'FU', 231, 'AE', '25.13557000', '56.33279000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q234600'),
(22, 'Al Hamriyah', 3390, 'SH', 231, 'AE', '25.46121000', '55.54813000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q234600'),
(23, 'Al Madam', 3390, 'SH', 231, 'AE', '24.95536000', '55.76820000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q234600'),
(24, 'Al Shamkhah City', 3396, 'AZ', 231, 'AE', '24.39268000', '54.70779000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q234600'),
(25, 'Ar Ruways', 3396, 'AZ', 231, 'AE', '24.11028000', '52.73056000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q1023786'),
(26, 'Bani Yas City', 3396, 'AZ', 231, 'AE', '24.30978000', '54.62944000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q1023786'),
(27, 'Dhaid', 3390, 'SH', 231, 'AE', '25.26951000', '55.92024000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q1023786'),
(28, 'Dibba Al Fujairah Municipality', 3393, 'FU', 231, 'AE', '25.58580000', '56.24792000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q1023786'),
(29, 'Dibba Al Hesn', 3390, 'SH', 231, 'AE', '25.61593000', '56.26899000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q1023786'),
(30, 'Dibba Al-Fujairah', 3393, 'FU', 231, 'AE', '25.59246000', '56.26176000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q3696182'),
(31, 'Dibba Al-Hisn', 3393, 'FU', 231, 'AE', '25.61955000', '56.27291000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q6742405'),
(32, 'Dubai', 3391, 'DU', 231, 'AE', '25.06570000', '55.17128000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q6742405'),
(33, 'Kalba', 3390, 'SH', 231, 'AE', '24.99816000', '56.27207000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q6742405'),
(34, 'Khalifah A City', 3396, 'AZ', 231, 'AE', '24.42588000', '54.60500000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q6742405'),
(35, 'Khawr Fakkān', 3390, 'SH', 231, 'AE', '25.33132000', '56.34199000', '2019-10-05 18:28:07', '2020-05-01 13:23:20', 1, 'Q764279'),
(36, 'Khor Fakkan', 3390, 'SH', 231, 'AE', '25.33966000', '56.30280000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q764279'),
(37, 'Manama', 3395, 'AJ', 231, 'AE', '25.32568000', '56.00259000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q764279'),
(38, 'Masfout', 3395, 'AJ', 231, 'AE', '24.83982000', '56.05158000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q764279'),
(39, 'Milehah', 3390, 'SH', 231, 'AE', '25.10097000', '55.91282000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q764279'),
(40, 'Murbaḩ', 3390, 'SH', 231, 'AE', '25.27623000', '56.36256000', '2019-10-05 18:28:07', '2020-05-01 13:23:20', 1, 'Q764279'),
(41, 'Musaffah', 3396, 'AZ', 231, 'AE', '24.35893000', '54.48267000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q764279'),
(42, 'Muzayri‘', 3396, 'AZ', 231, 'AE', '23.14355000', '53.78810000', '2019-10-05 18:28:07', '2020-05-01 13:23:20', 1, 'Q21735810'),
(43, 'Ras Al Khaimah', 3394, 'RK', 231, 'AE', '25.46116000', '56.04058000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q21735810'),
(44, 'Ras Al Khaimah City', 3394, 'RK', 231, 'AE', '25.78953000', '55.94320000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q21735810'),
(45, 'Reef Al Fujairah City', 3393, 'FU', 231, 'AE', '25.14479000', '56.24764000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q21735810'),
(46, 'Sharjah', 3390, 'SH', 231, 'AE', '25.33737000', '55.41206000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q289693'),
(47, 'Umm AL Quwain', 3392, 'UQ', 231, 'AE', '25.49326000', '55.73520000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q289693'),
(48, 'Umm Al Quwain City', 3392, 'UQ', 231, 'AE', '25.56473000', '55.55517000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q289693'),
(49, 'Zayed City', 3396, 'AZ', 231, 'AE', '23.65416000', '53.70522000', '2019-10-05 18:28:07', '2019-10-05 18:28:07', 1, 'Q289693'),
(50, 'Andkhoy', 3889, 'FYB', 1, 'AF', '36.95293000', '65.12376000', '2019-10-05 18:28:07', '2020-06-14 11:59:05', 1, 'Q1054127');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
