-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 23, 2019 at 12:46 PM
-- Server version: 10.3.13-MariaDB-log
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vstalt_vsta`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_events`
--

CREATE TABLE `t_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `ename` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `edesc` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `egroup1` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `egroup2` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `egroup3` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `egroup4` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `egroup5` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `egroup6` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `egroup7` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `playerNo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `edate` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `charged` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_events`
--

INSERT INTO `t_events` (`id`, `ename`, `edesc`, `egroup1`, `egroup2`, `egroup3`, `egroup4`, `egroup5`, `egroup6`, `egroup7`, `playerNo`, `created_at`, `updated_at`, `edate`, `charged`) VALUES
(8, 'Žemaitijos regiono komandinės stalo teniso pirmenybės - I Lyga', '<p>&nbsp;Žemaitijos regiono komandinės stalo teniso pirmenybės - I Lyga</p>', 'I Lyga', NULL, NULL, NULL, NULL, NULL, NULL, '6', '2019-04-29 12:49:17', '2019-04-29 12:49:17', '2019-01-01', '0'),
(9, 'Žemaitijos regiono komandinės stalo teniso pirmenybės - II Lyga', '<p>&nbsp;Žemaitijos regiono komandinės stalo teniso pirmenybės - II Lyga</p>', 'II Lyga', NULL, NULL, NULL, NULL, NULL, NULL, '6', '2019-04-29 12:49:43', '2019-04-29 12:49:43', '2019-01-01', '0'),
(10, 'Žemaitijos regiono komandinės stalo teniso pirmenybės - Aukščiausia Lyga', '<p>&nbsp;Žemaitijos regiono komandinės stalo teniso pirmenybės - Auk&scaron;čiausia Lyga</p>', 'Aukščiausia Lyga', NULL, NULL, NULL, NULL, NULL, NULL, '6', '2019-04-29 13:33:34', '2019-04-29 13:33:34', '2019-01-01', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_events`
--
ALTER TABLE `t_events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_events`
--
ALTER TABLE `t_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
