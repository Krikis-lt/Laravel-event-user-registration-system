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
-- Table structure for table `subscribe_users`
--

CREATE TABLE `subscribe_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscribe` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscribe_users`
--

INSERT INTO `subscribe_users` (`id`, `name`, `surname`, `birthday`, `email`, `subscribe`, `created_at`, `updated_at`) VALUES
(12, 'Kristina', 'Kazlauskaitė', '1997-02-12', 'kkazlauskaite97@gmail.com', '1', '2018-11-23 17:38:36', '2018-11-23 17:38:36'),
(13, 'Dovydas', 'Bagdonas', '1997-07-18', 'dovixas1@gmail.com', '1', '2018-11-23 19:18:35', '2018-11-23 19:18:35'),
(14, 'Laimonas', 'Vaivada', '1996-08-12', 'laimonas.vaivada@gmail.com', '1', '2018-11-24 13:09:08', '2018-11-24 13:09:08'),
(15, 'Arnas', 'Saparis', '2008-05-05', 'adelekalniute@gmail.com', '1', '2018-11-24 15:20:13', '2018-11-24 15:20:13'),
(16, 'Tomas', 'Kojelis', '1994-11-21', 'Tomaskojelis21@gmail.com', '1', '2018-11-24 16:15:37', '2018-11-24 16:15:37'),
(18, 'Romualdas Johnny', 'Franckaitis', '1998-03-08', 'rmsxxd@gmail.com', '1', '2018-11-25 17:26:40', '2018-11-25 17:26:40'),
(20, 'Marius', 'Vibrys', '1998-09-30', 'marius.vibrys@hugaas.lt', '1', '2018-11-28 06:52:09', '2018-11-28 06:52:09'),
(21, 'Marius', 'Bakanas', '1850-06-30', 'nebesvaik@gmail.com', '1', '2018-11-29 14:22:31', '2018-11-29 14:22:31'),
(22, 'Vytautas', 'Sagaitis', '1954-05-20', 'sagaitis@gmail.com', '1', '2018-11-29 17:14:48', '2018-11-29 17:14:48'),
(24, 'Ugnė', 'Bodrenkovaitė', '2002-09-14', 'ugnebodren2002@gmail.com', '1', '2018-11-30 19:25:46', '2018-11-30 19:25:46'),
(25, 'Artūras', 'Šertvytis', '1968-09-09', 'info@vsta.lt', '1', '2018-12-04 06:27:49', '2018-12-04 06:27:49'),
(26, 'Silverijus', 'Puotkalis', '1975-06-20', 'sp@vsta.lt', '1', '2018-12-04 06:30:59', '2018-12-04 06:30:59'),
(27, 'Simas', 'Žvirzdinas', '2008-06-05', 'gbudginas@gmail.com', '1', '2018-12-06 05:33:23', '2018-12-06 05:33:23'),
(28, 'Mindaugas', 'Stumbraitis', '1980-08-15', 'drhf@gmail.com', '1', '2018-12-06 17:02:12', '2018-12-06 17:02:12'),
(29, 'violeta', 'Reliūgė', '1962-11-28', 'tenisas.violeta@gmail.com', '1', '2018-12-08 14:29:30', '2018-12-08 14:29:30'),
(30, 'Dmitrij', 'Timofejev', '2006-07-26', '77malysh@gmail.com', '1', '2018-12-08 18:07:48', '2018-12-08 18:07:48'),
(31, 'Kristupas', 'Elvikis', '2005-12-09', 'Kristupas@gmail.com', '1', '2018-12-08 18:51:09', '2018-12-08 18:51:09'),
(32, 'Martynas', 'Lisovskij', '2001-07-27', 'martynaslisovskiss@gmail.com', '1', '2018-12-09 13:20:45', '2018-12-09 13:20:45'),
(33, 'Aleksej', 'Korabliov', '1987-01-21', 'golleht@mail.ru', '1', '2018-12-10 02:31:13', '2018-12-10 02:31:13'),
(34, 'Deividas', 'Razgus', '1986-11-09', 'deivirazg@gmail.com', '1', '2018-12-10 15:20:43', '2018-12-10 15:20:43'),
(35, 'Auksė', 'Arnašiūtė', '2004-05-14', 'jonaspiekautas@gmail.com', '1', '2018-12-11 06:06:39', '2018-12-11 06:06:39'),
(36, 'Marija', 'Mikalauskytė', '2005-06-04', 'feliksas.zemgulys@klaipedos-r.lt', '1', '2018-12-11 06:39:27', '2018-12-11 06:39:27'),
(37, 'Matas', 'Mažeikis', '2005-10-17', 'astamazeikiene79@gmail.com', '1', '2018-12-11 07:56:46', '2018-12-11 07:56:46'),
(38, 'Marija', 'Nemunytė', '1999-10-01', 'marija.nemunyte@gmail.com', '1', '2018-12-12 20:01:48', '2018-12-12 20:01:48'),
(39, 'Karina', 'Alkimavičiūtė', '2005-02-03', 'siliusa@gmail.com', '1', '2018-12-13 08:43:44', '2018-12-13 08:43:44'),
(40, 'Antanas Virginijus', 'Krištopaitis', '1948-10-15', 'gerrrrrrras@lt', '1', '2018-12-13 13:02:54', '2018-12-13 13:02:54'),
(41, 'Vilius', 'Milvydas', '1988-05-25', 'viliusm7@gmail.com', '1', '2018-12-14 04:16:53', '2018-12-14 04:16:53'),
(42, 'Nedas', 'Grigula', '2003-07-08', 'cerneckisa@gmail.com', '1', '2018-12-14 14:07:25', '2018-12-14 14:07:25'),
(43, 'Arnoldas', 'Joknys', '1985-05-22', 'ajoknys@yahoo.com', '1', '2018-12-16 09:51:33', '2018-12-16 09:51:33'),
(44, 'Dovilė', 'Račkauskaitė', '1999-01-26', 'dovilerack@gmail.com', '1', '2018-12-18 05:42:03', '2018-12-18 05:42:03'),
(45, 'Jevgenij', 'Jashin', '1961-08-02', 'aukse.geceviciute@gmail.com', '1', '2018-12-18 15:14:48', '2018-12-18 15:14:48'),
(50, 'Krikis', 'Skirmantas', '1992-04-19', 'kristijanask@gmail.com', '1', '2019-01-01 14:21:23', '2019-01-01 14:21:23'),
(51, 'Karolis', 'Butkevičius', '2007-01-01', 'kk@vsta.lt', '1', '2019-01-15 06:02:38', '2019-01-15 06:02:38'),
(52, 'Matas', 'Mažeikis', '2005-10-17', 'astamazeikiene@hotmail.com', '1', '2019-01-17 13:54:00', '2019-01-17 13:54:00'),
(53, 'Jevgenij', 'Jašin', '1961-08-02', 'tk@vsta.lt', '1', '2019-01-31 16:09:18', '2019-01-31 16:09:18'),
(54, 'Gintaras', 'Nagrockas', '2019-04-16', 'g.nagrockas@gmail.com', '1', '2019-02-07 07:24:36', '2019-02-07 07:24:36'),
(55, 'Darius', 'Aleknavičius', '1978-08-25', 'topsaslt@gmail.com', '1', '2019-02-12 16:42:56', '2019-02-12 16:42:56'),
(56, 'Gediminas', 'Jankus', '1956-04-23', 'jankus.g@gmail.com', '1', '2019-02-14 12:37:26', '2019-02-14 12:37:26'),
(57, 'jonas', 'petras', '1992-04-19', 'info@krikis.lt', '1', '2019-02-14 18:19:40', '2019-02-14 18:19:40'),
(58, 'Marija', 'Mikalauskytė', '2005-06-04', 'prof.konsultacija@gmail.com', '1', '2019-02-14 19:14:00', '2019-02-14 19:14:00'),
(59, 'Robertas', 'Bertašius', '1993-04-11', 'robertasbertasius20@gmail.com', '1', '2019-02-15 07:00:00', '2019-02-15 07:00:00'),
(60, 'Anželika', 'Petrauskienė', '1975-07-19', 'anzelikapetrauskiene@gmail.com', '1', '2019-02-15 15:05:04', '2019-02-15 15:05:04'),
(61, 'Danas', 'Skutas', '1982-01-02', 'uzsidengiam@gmail.com', '1', '2019-02-15 15:38:40', '2019-02-15 15:38:40'),
(62, 'Lukas', 'Šertvytis', '2004-10-30', 'vytisltu@gmail.com', '1', '2019-02-15 18:18:04', '2019-02-15 18:18:04'),
(63, 'Zigmas', 'Skaringa', '1985-05-21', 'kazimieras2@gmail.com', '1', '2019-02-20 11:54:48', '2019-02-20 11:54:48'),
(64, 'jonas', 'petras', '1992-04-19', 'info@info.lt', '1', '2019-02-23 14:32:11', '2019-02-23 14:32:11'),
(65, 'Algirdas', 'Reliūga', '1954-12-12', 'milgidas@gmail.com', '1', '2019-02-26 09:15:59', '2019-02-26 09:15:59'),
(66, 'Lukas', 'Rimkus', '2003-03-23', 'vytautas.barevicius@gmail.com', '1', '2019-02-27 17:32:35', '2019-02-27 17:32:35'),
(67, 'Eligijus', 'Jakštys', '1997-06-06', 'eligijus12@gmail.com', '1', '2019-02-28 13:04:16', '2019-02-28 13:04:16'),
(68, 'Irmantas', 'Daukontas', '2003-01-01', 'raimondas0616@gmail.com', '1', '2019-03-03 03:54:51', '2019-03-03 03:54:51'),
(69, 'Nerijus', 'Kreišmontas', '1994-12-05', 'jonasjuzaitis@gmail.com', '1', '2019-03-04 05:30:07', '2019-03-04 05:30:07'),
(70, 'Orestas', 'Bredelis', '1998-05-20', 'orestas98@gmail.com', '1', '2019-03-04 07:08:22', '2019-03-04 07:08:22'),
(71, 'Rimantas', 'Pronskus', '1971-08-09', 'uabelektrovoltas@gmail.com', '1', '2019-03-04 07:11:38', '2019-03-04 07:11:38'),
(72, 'Giedrius', 'Gudaitis', '1970-08-04', 'zigmas.skaringa@inbox.lt', '1', '2019-03-05 09:12:04', '2019-03-05 09:12:04'),
(73, 'VALDAS', 'ANTANAVIČIUS', '1966-08-11', 'trysmalunai@gmail.com', '1', '2019-03-05 10:39:40', '2019-03-05 10:39:40'),
(74, 'Kęstutis', 'Maščinskas', '1989-03-25', 'algirdas.samajauskas@jurbarkas.lt', '1', '2019-03-05 10:40:31', '2019-03-05 10:40:31'),
(75, 'Jonas', 'Ratkevicius', '1960-10-08', 'xxxxxx@xxxxxxx', '1', '2019-03-05 18:23:46', '2019-03-05 18:23:46'),
(76, 'Jonas', 'Čimkus', '1949-12-07', 'siuarenord@gmail.com', '1', '2019-03-05 19:11:55', '2019-03-05 19:11:55'),
(77, 'Kazys', 'Stankus', '1959-10-03', 'k.stankui@gmail.com', '1', '2019-03-07 03:55:51', '2019-03-07 03:55:51'),
(78, 'Viktoras', 'Dilinskis', '1992-08-27', 'vdilinskis@gmail.com', '1', '2019-03-07 06:25:43', '2019-03-07 06:25:43'),
(79, 'Romas', 'Liūnas', '1964-07-12', 'robidogaa@gmail.com', '1', '2019-03-07 07:15:14', '2019-03-07 07:15:14'),
(80, 'Evaldas', 'Šteinbergas', '1980-01-28', 'k.barauskas@gmail.com', '1', '2019-03-07 07:41:48', '2019-03-07 07:41:48'),
(81, 'Vytautas', 'Mejeras', '1955-10-03', 'arturas.preiksaitis@gmail.com', '1', '2019-03-07 08:35:08', '2019-03-07 08:35:08'),
(82, 'Renatas', 'Guščinas', '1987-08-22', 'r.guscinas@gmail.com', '1', '2019-03-07 10:40:21', '2019-03-07 10:40:21'),
(83, 'Nojus', 'Gustys', '2003-05-07', 'remigijus777@inbox.lt', '1', '2019-03-07 18:03:02', '2019-03-07 18:03:02'),
(84, 'Algimantas', 'Davidauskas', '1955-09-23', 'algimantasdavidauskas@gmail.com', '1', '2019-03-08 05:58:37', '2019-03-08 05:58:37'),
(85, 'Vytautas', 'Ročys', '1960-11-03', 'vytautas.rocys@vdi.lt', '1', '2019-03-08 09:03:02', '2019-03-08 09:03:02'),
(86, 'Edmundas', 'Naujokas', '1960-05-05', 'edm.naujokas@gmail.com', '1', '2019-03-08 11:12:28', '2019-03-08 11:12:28'),
(87, 'Mantas', 'Andruška', '1988-10-18', 'zibasandrius@gmail.com', '1', '2019-03-08 16:07:57', '2019-03-08 16:07:57'),
(88, 'Zigmas', 'Šikšnius', '1948-06-13', 'silutessetas@gmail.com', '1', '2019-03-08 17:44:35', '2019-03-08 17:44:35'),
(89, 'Saulius', 'Kutkaitis', '02/22/1968', 'saulius.kutkaitis@gmaail.om', '1', '2019-03-09 13:41:22', '2019-03-09 13:41:22'),
(90, 'Robertas', 'Mažrimas', '02/22/1965', 'robertas.mazrimas@gmail.com', '1', '2019-03-09 15:29:43', '2019-03-09 15:29:43'),
(91, 'Neringa', 'Misevičiūtė', '10/18/2007', 'ova.ovidijus@gmail.com', '1', '2019-03-09 19:32:20', '2019-03-09 19:32:20'),
(92, 'Marija', 'Mikalauskytė', '06/04/2005', 'petras197104@gamil.com', '1', '2019-03-12 18:14:47', '2019-03-12 18:14:47'),
(93, 'Oskaras', 'Gajauskas', '10/24/1984', 'zemgulysfeliksas@yahoo.com', '1', '2019-03-29 17:06:49', '2019-03-29 17:06:49'),
(94, 'Arėjas', 'Misevičius', '10/24/1984', 'ovidijus.ova@gmail.com', '1', '2019-03-30 16:53:00', '2019-03-30 16:53:00'),
(95, 'Andrej', 'Makarov', '06/13/2001', 'andrej2001makarov@gmail.com', '1', '2019-05-03 16:45:25', '2019-05-03 16:45:25'),
(96, 'Oleg', 'Zinovjev', '04/23/2002', 'ozinovjev58@gmail.com', '1', '2019-05-04 11:00:29', '2019-05-04 11:00:29'),
(97, 'Ivan', 'Gončarov', '01/10/2004', 'vlolosun@mail.ru', '1', '2019-05-10 08:21:44', '2019-05-10 08:21:44'),
(98, 'Andrius Fedosejevas', 'Fedosejevas', '10/24/1984', 'fedosejevasandrius@gmail.com', '1', '2019-07-23 14:29:51', '2019-07-23 14:29:51'),
(99, 'Vakaris', 'Mečionis', '11/14/2001', 'hsvisciukas@gmail.com', '1', '2019-07-23 14:54:30', '2019-07-23 14:54:30'),
(100, 'Rimas', 'Lesiv', '01/18/1999', 'rim.lesiv@gmail.com', '1', '2019-07-23 15:40:49', '2019-07-23 15:40:49'),
(101, 'Aidas', 'Caponka', '03/30/1978', 'acaponka@gmail.com', '1', '2019-07-23 16:11:27', '2019-07-23 16:11:27'),
(102, 'Benas', 'Skirmantas', '08/24/1998', 'skirmantas.benas@gmail.com', '1', '2019-07-23 16:14:39', '2019-07-23 16:14:39'),
(103, 'DONATAS', 'SVEDAS', '12/30/1969', 'superdonce@mail.ru', '1', '2019-07-23 16:17:31', '2019-07-23 16:17:31'),
(104, 'Vytautas', 'Jonušas', '08/01/1984', 'vytjonu@gmail.com', '1', '2019-07-23 16:19:35', '2019-07-23 16:19:35'),
(105, 'Donatas', 'Petrauskas', '04/11/1986', 'donatasrj@gmail.com', '1', '2019-07-24 02:54:52', '2019-07-24 02:54:52'),
(106, 'RAMUNS', 'MINEIKIS', '05/14/1973', 'ramunasm88@gmail.com', '1', '2019-07-24 12:26:08', '2019-07-24 12:26:08'),
(107, 'Gintas', 'Povilauskas', '04/28/1967', 'gintas.pov@gmail.com', '1', '2019-07-24 15:31:20', '2019-07-24 15:31:20'),
(108, 'Titas', 'Venckus', '10/05/2006', 'romualdasvenckus@gmail.com', '1', '2019-07-26 07:20:29', '2019-07-26 07:20:29'),
(109, 'Marija', 'Mikalauskytė', '06/04/2005', 'mikalauskytemarija@gmail.com', '1', '2019-07-26 14:34:02', '2019-07-26 14:34:02'),
(110, 'Augustė', 'Mikalauskytė', '11/24/1999', 'auguste.mik1999@gmail.com', '1', '2019-07-29 02:23:42', '2019-07-29 02:23:42'),
(111, 'Osvaldas', 'Juodelis', '04/02/2001', 'osvaldas7264@gmail.com', '1', '2019-07-29 13:30:13', '2019-07-29 13:30:13'),
(112, 'Mažvydas', 'Tolvaiša', '05/15/1997', 'mazvydzius40@gmail.com', '1', '2019-07-29 13:33:08', '2019-07-29 13:33:08'),
(113, 'Ina', 'Jozepsone', '11/05/1969', 'ina.jozepsone@gmail.com', '1', '2019-07-30 16:41:16', '2019-07-30 16:41:16'),
(114, 'Marius', 'Gedvilas', '07/11/1986', 'mariusged@gmail.com', '1', '2019-07-31 04:30:44', '2019-07-31 04:30:44'),
(115, 'Arvydas', 'Venslauskas', '04/23/1965', 'arvydas.venslauskas@gmail.com', '1', '2019-07-31 05:58:17', '2019-07-31 05:58:17'),
(116, 'Rimantas', 'Lubys', '01/21/1961', 'rimantas.lubys@orlenlietuva.lt', '1', '2019-07-31 06:01:15', '2019-07-31 06:01:15'),
(117, 'Daina', 'Ročāne', '07/09/1963', 'Daina.Rocane@tiesas.lv', '1', '2019-07-31 10:44:32', '2019-07-31 10:44:32'),
(118, 'Darius', 'Siaurusaitis', '04/04/1980', 'siaurusaitis@gmail.com', '1', '2019-07-31 12:20:17', '2019-07-31 12:20:17'),
(119, 'Ramunas', 'Vosgirdas', '09/29/1965', 'ramas6519@yahoo.com', '1', '2019-08-01 13:12:05', '2019-08-01 13:12:05'),
(120, 'Dainius', 'Astrauskas', '04/05/1975', 'kedainiaistk@gmail.com', '1', '2019-08-01 15:03:00', '2019-08-01 15:03:00'),
(121, 'Eduards', 'Spagis', '12/20/2000', 'eduards@esit.lv', '1', '2019-08-02 06:22:47', '2019-08-02 06:22:47'),
(122, 'Vincas', 'Gerdžiūnas', '02/01/2019', 'gerdziunas.v@gmail.com', '1', '2019-08-02 16:14:18', '2019-08-02 16:14:18'),
(123, 'Margarita', 'Judina', '07/19/1978', 'margaritajudina@inbox.lv', '1', '2019-08-03 02:26:52', '2019-08-03 02:26:52'),
(124, 'Jonas', 'Ratkevicius', '10/08/1960', 'joorx@yahoo.com', '1', '2019-08-03 08:34:50', '2019-08-03 08:34:50'),
(125, 'Lina', 'Butkienė', '09/28/1980', 'butkelina@gmail.com', '1', '2019-08-03 13:30:04', '2019-08-03 13:30:04'),
(126, 'Virginijus', 'Juknelis', '02/20/1970', 'wirgisj7@gmail.com', '1', '2019-08-04 18:29:17', '2019-08-04 18:29:17'),
(127, 'Remigijus', 'JUKNELIS', '10/01/1968', 'remigijus.juknelis@gmail.com', '1', '2019-08-04 19:03:51', '2019-08-04 19:03:51'),
(128, 'Georgii', 'Rubinshtein', '05/06/1970', 'gmr70@mail.ru', '1', '2019-08-05 18:10:49', '2019-08-05 18:10:49'),
(129, 'Jevgenij', 'Sege', '10/24/1984', 'jevgenijsege@yahoo.com', '1', '2019-08-06 08:17:26', '2019-08-06 08:17:26'),
(130, 'Matas', 'Mažeikis', '10/17/2005', '-@gmail.com', '1', '2019-08-06 08:53:10', '2019-08-06 08:53:10'),
(131, 'vasilii', 'skalenko', '02/24/1984', 'vskalenko@yandex.ru', '1', '2019-08-06 14:34:31', '2019-08-06 14:34:31'),
(132, 'Mindaugas', 'Steponkus', '09/16/1990', 'steponkusm5@gmail.com', '1', '2019-08-07 06:17:44', '2019-08-07 06:17:44'),
(133, 'Lukas', 'Šertvytis', '10/24/1984', '88@fgdfg', '1', '2019-08-07 11:17:35', '2019-08-07 11:17:35'),
(134, 'Audrius', 'Kazlauskas', '10/24/1984', 'draksas@gmail.com', '1', '2019-08-08 04:17:40', '2019-08-08 04:17:40'),
(135, 'Valerij', 'Mycik', '05/07/1969', 'idelta.silverijus@gmail.com', '1', '2019-08-08 09:35:23', '2019-08-08 09:35:23'),
(136, 'Igor', 'Maruk', '06/19/1962', 'igor_maruk@hotmail.com', '1', '2019-08-08 10:17:49', '2019-08-08 10:17:49'),
(137, 'Testas', 'Test', '10/24/1984', NULL, '1', '2019-08-08 12:46:17', '2019-08-08 12:46:17'),
(138, 'Jurgita', 'Grucyte', '04/24/1978', 'grucyta@yahoo.com', '1', '2019-08-09 04:56:21', '2019-08-09 04:56:21'),
(139, 'vytautas', 'ziurkus', '07/27/1959', 'vitasziurkus@gmail.com', '1', '2019-08-09 08:00:10', '2019-08-09 08:00:10'),
(140, 'Juozas', 'Giedraitis', '04/06/1955', 'juozasgie@gmail.com', '1', '2019-08-10 16:49:55', '2019-08-10 16:49:55'),
(141, 'Šarūnas', 'Gulbinas', '12/13/1965', 'sarkinas422@inbox.lt', '1', '2019-08-12 16:19:01', '2019-08-12 16:19:01'),
(142, 'ANTTI', 'LUIGEMAA', '10/30/1969', 'antti69@hot.ee', '1', '2019-08-12 18:43:10', '2019-08-12 18:43:10'),
(143, 'Raimundas', 'Povilaitis', '10/24/1984', 'raima68@gmail.com', '1', '2019-08-13 04:11:43', '2019-08-13 04:11:43'),
(144, 'Mantas', 'Deveikis', '07/03/2005', 'mantasdeveikis@gmail.com', '1', '2019-08-13 07:32:06', '2019-08-13 07:32:06'),
(145, 'Raimond', 'Einer', '10/24/1989', 'lembit.nyyd@gmail.com', '1', '2019-08-13 16:48:53', '2019-08-13 16:48:53'),
(146, 'Arūnas', 'Senavaitis', '01/17/1962', 'arunas.senavaitis@gmail.com', '1', '2019-08-13 17:25:02', '2019-08-13 17:25:02'),
(147, 'Kornelija', 'Ščiglaitė', '04/12/2001', 'kornelijasciglaite@gmail.com', '1', '2019-08-14 15:53:20', '2019-08-14 15:53:20'),
(148, 'Evaldas', 'Montvydas', '10/07/1968', '01afas@gmail.com', '1', '2019-08-16 09:58:45', '2019-08-16 09:58:45'),
(149, 'Egidijus', 'Jundulas', '12/16/1995', 'egis.jundul@gmail.com', '1', '2019-10-20 05:49:38', '2019-10-20 05:49:38'),
(150, 'Edgaras', 'Knyzeris', '10/15/1993', 'tenisas15@gmail.com', '1', '2019-10-20 15:48:51', '2019-10-20 15:48:51'),
(151, 'Modestas', 'Šakinis', '04/01/1992', 'modestassakinis@gmail.com', '1', '2019-10-21 06:10:34', '2019-10-21 06:10:34'),
(152, 'Dangirdas', 'Rimkus', '05/03/1967', 'rimkiai@gmail.com', '1', '2019-10-24 03:55:19', '2019-10-24 03:55:19'),
(153, 'Mantas', 'Andruška', '10/18/1987', 'mantas.andruska@gmail.com', '1', '2019-10-28 16:11:55', '2019-10-28 16:11:55'),
(154, 'Darius', 'Glodenis', '11/01/1970', 'dariusglo@gmail.com', '1', '2019-11-02 20:22:11', '2019-11-02 20:22:11'),
(155, 'Viktorija', 'Bernotaite', '08/21/1995', 'viktorytebernotaite@gmail.com', '1', '2019-11-04 12:10:19', '2019-11-04 12:10:19'),
(156, 'Rolandas', 'Šlušnys', '06/14/1999', 'rolandas.slusnys1@gmail.com', '1', '2019-11-06 13:17:55', '2019-11-06 13:17:55'),
(157, 'Tomas', 'Navickas', '11/04/1979', 'tomas140@gmail.com', '1', '2019-11-06 14:35:27', '2019-11-06 14:35:27'),
(158, 'Titas', 'Venckus', '10/05/2006', 'amixama@gmail.com', '1', '2019-11-06 16:07:58', '2019-11-06 16:07:58'),
(159, 'Tomas', 'Sukauskas', '02/12/1999', 'tomassukauskas@gmail.com', '1', '2019-11-07 07:58:59', '2019-11-07 07:58:59'),
(160, 'Ramūnas', 'Sliekas', '07/23/1975', 'ramunas.nt@gmail.com', '1', '2019-11-08 09:31:23', '2019-11-08 09:31:23'),
(161, 'Nojus', 'Gustys', '10/24/1984', 'nojus5152@inbox.lt', '1', '2019-11-08 15:16:15', '2019-11-08 15:16:15'),
(162, 'Irmantas', 'Daukontas', '01/01/2019', 'blogas12333@gmail.com', '1', '2019-11-08 16:03:24', '2019-11-08 16:03:24'),
(163, 'Armandas', 'Daukontas', '05/09/2000', 'armanida297@gmail.com', '1', '2019-11-08 16:13:39', '2019-11-08 16:13:39'),
(164, 'Lukas', 'Frejeris', '03/26/2002', 'lukasfrejeris@gmail.com', '1', '2019-11-08 16:18:49', '2019-11-08 16:18:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subscribe_users`
--
ALTER TABLE `subscribe_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subscribe_users`
--
ALTER TABLE `subscribe_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
