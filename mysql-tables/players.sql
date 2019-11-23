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
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `rating` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscribe` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `event_id` int(10) UNSIGNED DEFAULT NULL,
  `edate` varchar(191) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `surname`, `birthday`, `city`, `country`, `rating`, `tel`, `email`, `subscribe`, `group`, `created_at`, `updated_at`, `event_id`, `edate`) VALUES
(77, 'Marija', 'Mikalauskytė', '06/04/2005', 'Gargždai', 'Lietuva', '77', '861040895', 'petras197104@gamil.com', '1', 'Mergaitės 2002-2006', '2019-03-12 18:14:47', '2019-03-12 18:14:47', 6, '2019-03-31'),
(78, 'Arnas', 'Saparis', '05/05/2008', 'telsiai', 'lithuania', '836', '+37068873898', 'adelekalniute@gmail.com', '1', 'Berniukai 2007 ir jaunesni', '2019-03-16 16:28:12', '2019-03-16 16:28:12', 9, '2019-03-31'),
(79, 'Lukas', 'Valančius', '2003', 'Klaipėda', 'Lietuva', '1113', '864136984', 'tomaskojelis21@gmail.com', '1', 'Berniukai 2003-2006', '2019-03-25 07:02:44', '2019-03-25 07:13:19', 8, '2019-03-31'),
(80, 'Matas', 'Milius', '2005', 'Klaipėda', 'Lietuva', '1143', '864136984', 'tomaskojelis21@gmail.com', '1', 'Berniukai 2003-2006', '2019-03-25 07:03:26', '2019-03-25 07:13:33', 8, '2019-03-31'),
(81, 'Lukas', 'Šertvytis', '2004', 'Klaipėda', 'Lietuva', '1165', '864136984', 'tomaskojelis21@gmail.com', '1', 'Berniukai 2003-2006', '2019-03-25 07:04:09', '2019-03-25 07:13:26', 8, '2019-03-31'),
(82, 'Deividas', 'Penkauskas', '2004', 'Klaipėda', 'Lietuva', '1500', '864136984', 'tomaskojelis21@gmail.com', '1', 'Berniukai 2003-2006', '2019-03-25 07:04:59', '2019-03-25 07:13:07', 8, '2019-03-31'),
(84, 'Markas', 'Milius', '2010', 'Klaipėda', 'Lietuva', '-', '864136984', 'tomaskojelis21@gmail.com', '1', 'Berniukai 2007 ir jaunesni', '2019-03-25 07:07:10', '2019-03-25 07:13:57', 9, '2019-03-31'),
(85, 'Karolis', 'Butkevičius', '2007', 'Klaipėda', 'Lietuva', '-', '864136984', 'tomaskojelis21@gmail.com', '1', 'Berniukai 2007 ir jaunesni', '2019-03-25 07:10:52', '2019-03-25 07:13:52', 9, '2019-03-31'),
(86, 'Jonas', 'Vaičius', '2010', 'Klaipėda', 'Lietuva', '-', '864136984', 'tomaskojelis21@gmail.com', '1', 'Berniukai 2007 ir jaunesni', '2019-03-25 07:11:46', '2019-03-25 07:13:48', 9, '2019-03-31'),
(87, 'Nojus', 'Lalas', '2007', 'Klaipėda', 'Lietuva', '-', '864136984', 'tomaskojelis21@gmail.com', '1', 'Berniukai 2007 ir jaunesni', '2019-03-25 07:12:15', '2019-03-25 07:14:01', 9, '2019-03-31'),
(88, 'Andrius', 'Baliutavičius', '2007', 'Klaipėda', 'Lietuva', '-', '864136984', 'tomaskojelis21@gmail.com', '1', 'Berniukai 2007 ir jaunesni', '2019-03-25 07:12:50', '2019-03-25 07:13:44', 9, '2019-03-31'),
(89, 'Brilita', 'Jurevivičiūtė', '24/08/2007', 'Dovilai', 'Lietuva', '-', '864136984', 'tomaskojelis21@gmail.com', '1', 'Mergaitės 2007 ir jaunesnės', '2019-03-25 07:23:02', '2019-03-27 07:40:52', 7, '2019-03-31'),
(90, 'Ieva', 'Pliuškytė', '03/24/2007', 'Dovilai', 'Lietuva', '-', '864136984', 'tomaskojelis21@gmail.com', '1', 'Mergaitės 2007 ir jaunesnės', '2019-03-25 07:24:23', '2019-03-25 07:24:23', 7, '2019-03-31'),
(91, 'Deinas', 'Cirtautas', '2007', 'Dovilai', 'Lietuva', '-', '864136984', 'tomaskojelis21@gmail.com', '1', 'Berniukai 2007 ir jaunesni', '2019-03-25 07:26:44', '2019-03-25 07:27:02', 9, '2019-03-31'),
(92, 'Auksė', 'Arnašiūtė', '05/14/2004', 'Šilutė', 'Lietuva', '825', '860610974', 'jonaspiekautas@gmail.com', '1', 'Mergaitės 2002-2006', '2019-03-26 10:28:44', '2019-03-26 10:28:44', 6, '2019-03-31'),
(93, 'Lukas', 'Raugevičius', '06/16/2006', 'Šilutė', 'Lietuva', '725', '860610974', 'jonaspiekautas@gmail.com', '1', 'Berniukai 2003-2006', '2019-03-26 10:31:15', '2019-03-26 10:31:15', 8, '2019-03-31'),
(94, 'Jonas', 'Raugevičius', '06/23/2008', 'Šilutė', 'Lietuva', 'be reitingo', '860610974', 'jonaspiekautas@gmail.com', '1', 'Berniukai 2007 ir jaunesni', '2019-03-26 10:33:28', '2019-03-26 10:33:28', 9, '2019-03-31'),
(95, 'Karolina', 'Uksaitė', '10/22/2008', 'Šilutė', 'Lietuva', 'be reitingo', '860610974', 'jonaspiekautas@gmail.com', '1', 'Mergaitės 2007 ir jaunesnės', '2019-03-26 10:35:54', '2019-03-26 10:35:54', 7, '2019-03-31'),
(96, 'Urtė', 'Pavernikaitė', '12/14/2009', 'Šilutė', 'Lietuva', 'be reitingo', '860610974', 'jonaspiekautas@gmail.com', '1', 'Mergaitės 2007 ir jaunesnės', '2019-03-26 10:37:29', '2019-03-26 10:37:29', 7, '2019-03-31'),
(97, 'Kornelija', 'Maskaliovaitė', '2006', 'Dovilai', 'Lietuva', '-', '864136984', 'tomaskojelis21@gmail.com', '1', 'Mergaitės 2002-2006', '2019-03-28 06:48:21', '2019-03-29 14:18:50', 6, '2019-03-31'),
(98, 'Kamilė', 'Meižytė', '2006', 'Dovilai', 'Lietuva', '-', '864136984', 'tomaskojelis21@gmail.com', '1', 'Mergaitės 2002-2006', '2019-03-28 06:48:56', '2019-03-29 14:18:42', 6, '2019-03-31'),
(99, 'Gerda', 'Holverda', '2006', 'Dovilai', 'Lietuva', '-', '864136984', 'tomaskojelis21@gmail.com', '1', 'Mergaitės 2002-2006', '2019-03-28 06:49:39', '2019-03-29 14:18:37', 6, '2019-03-31'),
(101, 'Kristina', 'Jocytė', '2009', 'Dovilai', 'Lietuva', '-', '864136984', 'tomaskojelis21@gmail.com', '1', 'Mergaitės 2007 ir jaunesnės', '2019-03-28 06:50:59', '2019-03-29 14:18:26', 7, '2019-03-31'),
(102, 'Airidas', 'Skirsgilas', '2003', 'Dovilai', 'Lietuva', '-', '864136984', 'tomaskojelis21@gmail.com', '1', 'Berniukai 2003-2006', '2019-03-28 06:52:29', '2019-03-29 14:17:19', 8, '2019-03-31'),
(103, 'Aironas', 'Šemulis', '2005', 'Dovilai', 'Lietuva', '-', '864136984', 'tomaskojelis21@gmail.com', '1', 'Berniukai 2003-2006', '2019-03-28 06:53:22', '2019-03-29 14:17:25', 8, '2019-03-31'),
(104, 'Deividas', 'Navajauskas', '2006', 'Dovilai', 'Lietuva', '-', '864136984', 'tomaskojelis21@gmail.com', '1', 'Berniukai 2003-2006', '2019-03-28 06:54:01', '2019-03-29 14:17:36', 8, '2019-03-31'),
(105, 'Ernestas', 'Stonkus', '2005', 'Dovilai', 'Lietuva', '-', '864136984', 'tomaskojelis21@gmail.com', '1', 'Berniukai 2003-2006', '2019-03-28 06:54:30', '2019-03-29 14:17:41', 8, '2019-03-31'),
(106, 'Arnas', 'Andziulis', '2006', 'Dovilai', 'Lietuva', '-', '864136984', 'Tomaskojelis21@gmail.com', '1', 'Berniukai 2003-2006', '2019-03-28 11:05:49', '2019-03-29 14:17:29', 8, '2019-03-31'),
(107, 'Jogailė', 'Paliulytė', '2007', 'Dovilai', 'Lietuva', '-', '864136984', 'tomaskojelis21@gmail.com', '1', 'Mergaitės 2007 ir jaunesnės', '2019-03-28 13:14:05', '2019-03-29 14:18:18', 7, '2019-03-31'),
(108, 'Adas', 'Vaitkus', '10/10/2007', 'Klaipėda', 'Lietuva', '961', '864136984', 'tomaskojelis21@gmail.com', '1', 'Berniukai 2003-2006', '2019-03-29 14:26:10', '2019-03-29 14:26:10', 8, '2019-03-31'),
(109, 'Dominykas', 'Sabeckis', '10/06/2005', 'Klaipėda', 'Lietuva', '-', '864136984', 'tomaskojelis21@gmail.com', '1', 'Berniukai 2003-2006', '2019-03-29 14:27:32', '2019-03-29 14:27:32', 8, '2019-03-31'),
(110, 'Oskaras', 'Gajauskas', '10/24/1984', 'Gargždai', 'Lietuva', '-', '861040895', 'zemgulysfeliksas@yahoo.com', '1', 'Berniukai 2003-2006', '2019-03-29 17:06:49', '2019-03-29 17:06:49', 8, '2019-03-31'),
(111, 'Marija', 'Mikalauskyte', '06/04/2005', 'Gargždai', 'Lietuva', '75', '861040895', 'zemgulysfeliksas@yahoo.com', '1', 'Mergaitės 2002-2006', '2019-03-29 17:27:39', '2019-03-29 17:27:39', 6, '2019-03-31'),
(112, 'Tautvydas', 'Tverskis', '05/06/2010', 'Gargždai', 'Lietuva', '-', '861040895', 'zemgulysfeliksas@yahoo.com', '1', 'Berniukai 2007 ir jaunesni', '2019-03-29 17:29:30', '2019-03-29 17:29:30', 9, '2019-03-31'),
(113, 'Lukas', 'Gedbudas', '10/11/2006', 'Klaipėda', 'Lietuva', '-', '864136984', 'tomaskojelis21@gmail.com', '1', 'Berniukai 2003-2006', '2019-03-30 10:31:18', '2019-03-30 10:31:18', 8, '2019-03-31'),
(114, 'Arėjas', 'Misevičius', '10/24/1984', 'Laukuva', 'Lietuva', NULL, '862629595', 'ovidijus.ova@gmail.com', '1', 'Berniukai 2007 ir jaunesni', '2019-03-30 16:53:00', '2019-03-30 16:53:00', 9, '2019-03-31'),
(115, 'Neringa', 'Misevičiūtė', '10/01/2019', 'Laukuva', 'Lietuva', NULL, '862629595', 'ovidijus.ova@gmail.com', '1', 'Berniukai 2003-2006', '2019-03-30 16:54:30', '2019-03-30 16:54:30', 8, '2019-03-31'),
(116, 'Rokas', 'Eitkevicius', '10/14/2009', 'Gargždai', 'Lietuva', '-', '861040895', 'zemgulysfeliksas@yahoo.com', '1', 'Berniukai 2007 ir jaunesni', '2019-03-30 18:17:37', '2019-03-30 18:17:37', 9, '2019-03-31'),
(117, 'Augustas', 'Ratkus', '07/05/2010', 'Gargždai', 'Lietuva', '-', '861040895', 'zemgulysfeliksas@yahoo.com', '1', 'Berniukai 2007 ir jaunesni', '2019-03-30 18:19:02', '2019-03-30 18:19:02', 9, '2019-03-31'),
(120, 'Andrej', 'Makarov', '06/13/2001', 'Klaipeda', 'Lithuania', NULL, '+37060280242', 'andrej2001makarov@gmail.com', '1', 'Bendra', '2019-05-03 16:45:34', '2019-05-03 16:45:34', 10, '2019-05-11'),
(121, 'Oleg', 'Zinovjev', '04/23/2002', 'Klaipeda', 'Lietuva', '-', '+37067824123', 'ozinovjev58@gmail.com', '1', 'Bendra', '2019-05-04 11:00:29', '2019-05-04 11:00:29', 10, '2019-05-11'),
(122, 'Ivan', 'Gončarov', '01/10/2004', 'Klaipėda', 'Lietuva', NULL, '+37061470171', 'vlolosun@mail.ru', '1', 'Bendra', '2019-05-10 08:21:44', '2019-05-10 08:21:44', 10, '2019-05-11'),
(123, 'Andrius Fedosejevas', 'Fedosejevas', '10/24/1984', 'Kaunas', 'Lietuva', '194', '867630450', 'fedosejevasandrius@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-07-23 14:29:51', '2019-07-23 14:29:51', 15, '2019-08-16'),
(124, 'Vakaris', 'Mečionis', '11/14/2001', 'Vilnius', 'Lietuva', '55', '860441328', 'hsvisciukas@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-07-23 14:54:30', '2019-07-23 14:54:30', 15, '2019-08-16'),
(125, 'Kazys', 'Stankus', '10/03/1959', 'Klaipėda', 'Lietuva', '388', '+37067636385', 'k.stankui@gmail.com', '1', 'Vyrai 50+', '2019-07-23 15:00:15', '2019-07-23 15:00:15', 17, '2019-08-16'),
(126, 'Rimas', 'Lesiv', '01/18/1999', 'Jonava', 'Lietuva', '9', '+37064876822', 'rim.lesiv@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-07-23 15:40:49', '2019-07-23 15:40:49', 15, '2019-08-16'),
(127, 'Aidas', 'Caponka', '03/30/1978', 'Kaunas', 'Lithuania', '74', '867176276', 'acaponka@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-07-23 16:11:27', '2019-07-23 16:11:27', 15, '2019-08-16'),
(129, 'Benas', 'Skirmantas', '08/24/1998', 'Šiauliai', 'Lietuva', '14', '863053682', 'skirmantas.benas@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-07-23 16:14:51', '2019-07-23 16:14:51', 15, '2019-08-16'),
(130, 'DONATAS', 'SVEDAS', '12/30/1969', 'VILNIUS', 'LIETUVA', '332', '869940027', 'superdonce@mail.ru', '1', 'Vyrai \"Open\" grupė', '2019-07-23 16:17:31', '2019-07-23 16:17:31', 15, '2019-08-16'),
(131, 'Vytautas', 'Jonušas', '08/01/1984', 'Kaunas', 'Lietuva', '171', '+37064818119', 'vytjonu@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-07-23 16:19:35', '2019-07-23 16:19:35', 15, '2019-08-16'),
(132, 'DONATAS', 'SVEDAS', '12/30/1969', 'VILNIUS', 'LIETUVA', '332', '869940027', 'superdonce@mail.ru', '1', 'Vyrai 50+', '2019-07-23 16:19:57', '2019-07-23 16:19:57', 17, '2019-08-16'),
(133, 'Donatas', 'Petrauskas', '04/11/1986', 'Kaunas', 'Lietuva', '159', '865644773', 'donatasrj@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-07-24 02:54:52', '2019-07-24 02:54:52', 15, '2019-08-16'),
(134, 'RAMUNS', 'MINEIKIS', '05/14/1973', 'Liepaja', 'Латвия', '34', '+37122118030', 'ramunasm88@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-07-24 12:26:08', '2019-07-24 12:26:08', 15, '2019-08-16'),
(136, 'Titas', 'Venckus', '10/05/2006', 'Šilutė', 'Lietuva', '841', '+37062228819', 'romualdasvenckus@gmail.com', '1', 'Berniukai 2004-2006', '2019-07-26 07:20:29', '2019-07-26 07:20:29', 13, '2019-08-16'),
(137, 'Marija', 'Mikalauskytė', '06/04/2005', 'Gargždai', 'Lietuva', '66', '868674436', 'mikalauskytemarija@gmail.com', '1', 'Mergaitės 2004-2006', '2019-07-26 14:34:02', '2019-07-26 14:34:02', 11, '2019-08-16'),
(138, 'Marija', 'Mikalauskytė', '06/04/2005', 'Gargždai', 'Lietuva', '66', '868674436', 'mikalauskytemarija@gmail.com', '1', 'Moterys \"Open\" grupė', '2019-07-26 14:35:21', '2019-07-26 14:35:21', 16, '2019-08-16'),
(139, 'Augustė', 'Mikalauskytė', '11/24/1999', 'Klaipėda', 'Lietuva', '121', '865483975', 'auguste.mik1999@gmail.com', '1', 'Moterys \"Open\" grupė', '2019-07-29 02:23:42', '2019-07-29 02:23:42', 16, '2019-08-16'),
(140, 'Osvaldas', 'Juodelis', '04/02/2001', 'Utena', 'Lietuva', '46', '862660603', 'osvaldas7264@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-07-29 13:30:13', '2019-07-29 13:30:13', 15, '2019-08-16'),
(141, 'Mažvydas', 'Tolvaiša', '05/15/1997', 'Utena', 'Lietuva', '355', '+4550384419', 'mazvydzius40@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-07-29 13:33:08', '2019-07-29 13:33:08', 15, '2019-08-16'),
(142, 'Vytautas', 'Barevičius', '02/05/1951', 'Raseiniai', 'Lietuva', '672', '+37061253369', 'vytautas.barevicius@gmail.com', '1', 'Vyrai 50+', '2019-07-30 16:33:32', '2019-07-30 16:33:32', 17, '2019-08-16'),
(143, 'Ina', 'Jozepsone', '11/05/1969', 'Riga', 'Latvia', NULL, '+37129138476', 'ina.jozepsone@gmail.com', '1', 'Moterys \"Open\" grupė', '2019-07-30 16:41:16', '2019-07-30 16:41:16', 16, '2019-08-16'),
(144, 'Ina', 'Jozepsone', '11/05/1969', 'Riga', 'Latvia', NULL, '+37129138476', 'ina.jozepsone@gmail.com', '1', 'Moterys 40+', '2019-07-30 16:42:16', '2019-07-30 16:42:16', 18, '2019-08-16'),
(146, 'Arvydas', 'Venslauskas', '04/23/1965', 'Salantai', 'Lietuva', '394', '+37068237816', 'arvydas.venslauskas@gmail.com', '1', 'Vyrai 50+', '2019-07-31 05:58:17', '2019-07-31 05:58:17', 17, '2019-08-16'),
(148, 'Daina', 'Ročāne', '07/09/1963', 'Cēsis', 'Latvia', NULL, '+ 37129465541', 'Daina.Rocane@tiesas.lv', '1', 'Moterys 40+', '2019-07-31 10:44:32', '2019-07-31 10:44:32', 18, '2019-08-16'),
(149, 'Daina', 'Ročāne', '07/09/1963', 'Cēsis', 'Latvia', NULL, '+ 37129465541', 'Daina.Rocane@tiesas.lv', '1', 'Moterys \"Open\" grupė', '2019-07-31 10:45:25', '2019-07-31 10:45:25', 16, '2019-08-16'),
(150, 'Darius', 'Siaurusaitis', '04/04/1980', 'Vilnius', 'Lietuva', '131', '867835004', 'siaurusaitis@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-07-31 12:20:17', '2019-07-31 12:20:17', 15, '2019-08-16'),
(151, 'Algirdas', 'Reliūga', '01/24/1984', 'Klaipėda', 'LT', '286', '+37069882194', 'tenisas.violeta@gmail.com', '1', 'Vyrai 50+', '2019-08-01 11:00:51', '2019-08-01 11:00:51', 17, '2019-08-16'),
(152, 'Milgidas', 'Kasinskas', '10/24/1984', 'Klaipėda', 'LT', '627', '+37069882194', 'tenisas.violeta@gmail.com', '1', 'Vyrai 50+', '2019-08-01 11:07:05', '2019-08-01 11:07:05', 17, '2019-08-16'),
(153, 'Algirdas', 'Reliūga', '01/01/2019', 'Klaipėda', 'LT', '286', '+37069882194', 'tenisas.violeta@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-08-01 11:22:13', '2019-08-01 11:22:13', 15, '2019-08-16'),
(156, 'Ramunas', 'Vosgirdas', '09/29/1965', 'Kaunas', 'LT', '94', '+37069963310', 'ramas6519@yahoo.com', '1', 'Vyrai 50+', '2019-08-01 13:12:05', '2019-08-01 13:12:05', 17, '2019-08-16'),
(158, 'Dainius', 'Astrauskas', '04/05/1975', 'Kėdainiai', 'Lietuva', '720', '868771245', 'kedainiaistk@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-08-01 15:03:00', '2019-08-01 15:03:00', 15, '2019-08-16'),
(159, 'Eduards', 'Spagis', '12/20/2000', 'Liepaja', 'Latvia', '15', '+371 20207640', 'eduards@esit.lv', '1', 'Vyrai \"Open\" grupė', '2019-08-02 06:22:47', '2019-08-02 06:22:47', 15, '2019-08-16'),
(160, 'Vincas', 'Gerdžiūnas', '02/01/2019', 'Kaunas', 'Lietuva', '543', '868512955', 'gerdziunas.v@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-08-02 16:14:18', '2019-08-02 16:14:18', 15, '2019-08-16'),
(161, 'Margarita', 'Judina', '07/19/1978', 'Riga', 'Latvia', NULL, '+37129568887', 'margaritajudina@inbox.lv', '1', 'Moterys \"Open\" grupė', '2019-08-03 02:26:52', '2019-08-03 02:26:52', 16, '2019-08-16'),
(162, 'Margarita', 'Judina', '07/19/1978', 'Riga', 'Latvia', NULL, '+37129568887', 'margaritajudina@inbox.lv', '1', 'Moterys 40+', '2019-08-03 02:28:07', '2019-08-03 02:28:07', 18, '2019-08-16'),
(163, 'Valērijs', 'Smirnovs', '05/03/1969', 'Riga', 'Latvia', NULL, '+ 37129214660', 'margaritajudina@inbox.lv', '1', 'Vyrai 50+', '2019-08-03 02:31:07', '2019-08-03 02:31:07', 17, '2019-08-16'),
(164, 'Jonas', 'Ratkevicius', '10/08/1960', 'Tauragė', 'Lietuva', '273', '865778437', 'joorx@yahoo.com', '1', 'Vyrai 50+', '2019-08-03 08:34:50', '2019-08-03 08:34:50', 17, '2019-08-16'),
(165, 'Lina', 'Butkienė', '09/28/1980', 'Vilnius', 'Lietuva', '26', '861429021', 'butkelina@gmail.com', '1', 'Moterys \"Open\" grupė', '2019-08-03 13:30:04', '2019-08-03 13:30:04', 16, '2019-08-16'),
(166, 'Giedrius', 'Liutkevičius', '01/10/1975', 'Kaunas', 'Lietuva', '398', '865644773', 'donatasrj@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-08-04 10:30:57', '2019-08-04 10:30:57', 15, '2019-08-16'),
(167, 'Andrius', 'Gedgaudas', '12/25/1968', 'Kaunas', 'Lietuva', '117', '865644773', 'donatasrj@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-08-04 10:32:16', '2019-08-04 10:32:16', 15, '2019-08-16'),
(168, 'Virginijus', 'Juknelis', '02/20/1970', 'Kaunas', 'Lietuva', '136', '860023457', 'wirgisj7@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-08-04 18:29:17', '2019-08-04 18:29:17', 15, '2019-08-16'),
(169, 'Remigijus', 'JUKNELIS', '10/01/1968', 'Kaunas', 'Lietuva', '100', '+37060023456', 'remigijus.juknelis@gmail.com', '1', 'Vyrai 50+', '2019-08-04 19:03:51', '2019-08-04 19:03:51', 17, '2019-08-16'),
(170, 'Georgii', 'Rubinshtein', '05/06/1970', 'Kaliningrad', 'Russia', NULL, '+ 79114524427', 'gmr70@mail.ru', '1', 'Vyrai \"Open\" grupė', '2019-08-05 18:10:49', '2019-08-05 18:10:49', 15, '2019-08-16'),
(171, 'Jevgenij', 'Sege', '10/24/1984', 'Klaipeda', 'Lithuania', 'Neturiu', '862232464', 'jevgenijsege@yahoo.com', '1', 'Vyrai \"Open\" grupė', '2019-08-06 08:17:26', '2019-08-06 08:17:26', 15, '2019-08-16'),
(172, 'Matas', 'Mažeikis', '10/17/2005', 'Klaipėda', 'Lietuva', '-', '+37061014150', '-@gmail.com', '1', 'Berniukai 2004-2006', '2019-08-06 08:53:10', '2019-08-06 08:53:10', 13, '2019-08-16'),
(173, 'Kristupas', 'Elvikis', '01/01/2005', 'Dovilai', 'Lietuva', '1110', '864136984', 'tomaskojelis21@gmail.com', '1', 'Berniukai 2004-2006', '2019-08-06 08:55:50', '2019-08-06 08:55:50', 13, '2019-08-16'),
(174, 'Brilita', 'Jurevičiūtė', '08/24/2007', 'Dovilai', 'Lietuva', '215', '864136984', 'tomaskojelis21@gmail.com', '1', 'Mergaitės 2007 ir jaunesnės', '2019-08-06 08:57:06', '2019-08-06 08:57:06', 12, '2019-08-16'),
(175, 'Ieva', 'Pliuškytė', '03/24/2007', 'Dovilai', 'Lietuva', '260', '864136984', 'Tomaskojelis21@gmail.com', '1', 'Mergaitės 2007 ir jaunesnės', '2019-08-06 08:58:05', '2019-08-06 08:58:05', 12, '2019-08-16'),
(176, 'Matas', 'Milius', '01/01/2005', 'Klaipėda', 'Lietuva', '1100', '864136984', 'Tomaskojelis21@gmail.com', '1', 'Berniukai 2004-2006', '2019-08-06 08:59:01', '2019-08-06 08:59:01', 13, '2019-08-16'),
(177, 'Markas', 'Milius', '01/01/2010', 'Klaipėda', 'Lietuva', '1100', '864136984', 'Tomaskojelis21@gmail.com', '1', 'Berniukai 2007 ir jaunesni', '2019-08-06 08:59:51', '2019-08-06 08:59:51', 14, '2019-08-16'),
(179, 'vasilii', 'skalenko', '02/24/1984', 'Калининград г., Калининградская обл.', 'Rossia', NULL, '+791 186 011 77', 'vskalenko@yandex.ru', '1', 'Vyrai \"Open\" grupė', '2019-08-06 14:34:47', '2019-08-06 14:34:47', 15, '2019-08-16'),
(180, 'Aleksandr', 'Kosenok', '01/24/1984', 'Kaliningrad', 'Russia', NULL, '+79118601177', 'vskalenko@yandex.ru', '1', 'Vyrai \"Open\" grupė', '2019-08-07 03:40:13', '2019-08-07 03:40:13', 15, '2019-08-16'),
(181, 'Kirill', 'Vorobev', '01/24/1984', 'Kaliningrad', 'Russia', NULL, '+79118601177', 'vskalenko@yandex.ru', '1', 'Vyrai \"Open\" grupė', '2019-08-07 03:41:59', '2019-08-07 03:41:59', 15, '2019-08-16'),
(182, 'Mindaugas', 'Steponkus', '09/16/1990', 'Panevezys', 'Lietuva', '66', '863991836', 'steponkusm5@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-08-07 06:17:44', '2019-08-07 06:17:44', 15, '2019-08-16'),
(183, 'Lukas', 'Šertvytis', '10/24/1984', 'Klaipėda', 'lietuva', '--', '88', '88@fgdfg', '1', 'Berniukai 2004-2006', '2019-08-07 11:17:35', '2019-08-07 11:17:35', 13, '2019-08-16'),
(184, 'Artūras', 'Šertvytis', '10/24/1984', 'klaipeda', 'Lietuva', '890', '88', 'tomaskojelis21@gmail.com', '1', 'Vyrai 50+', '2019-08-07 11:19:26', '2019-08-07 11:19:26', 17, '2019-08-16'),
(185, 'Anželika', 'Petrauskienė', '07/19/1975', 'Klaipėda', 'Lietuva', NULL, '888', 'aukse.geceviciute@gmail.com', '1', 'Moterys 40+', '2019-08-07 11:32:52', '2019-08-07 11:32:52', 18, '2019-08-16'),
(186, 'Benas', 'Brazdeikis', '01/01/2007', 'Klaipėda', 'Lietuva', '-', '864236984', 'tomaskojelis21@gmail.com', '1', 'Berniukai 2007 ir jaunesni', '2019-08-08 03:38:35', '2019-08-08 03:38:35', 14, '2019-08-16'),
(187, 'Audrius', 'Kazlauskas', '10/24/1984', 'Palanga', 'Lietuva', '540', '8 656 97157', 'draksas@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-08-08 04:17:40', '2019-08-08 04:17:40', 15, '2019-08-16'),
(188, 'Romas', 'Gečas', '04/08/1960', 'Kaliningrad', 'Rusija', '99999', '8888', '88@fgdfg', '1', 'Vyrai 50+', '2019-08-08 09:31:32', '2019-08-08 09:31:32', 17, '2019-08-16'),
(189, 'Valerij', 'Mycik', '05/07/1969', 'Kaliningrad', 'Rusija', '888888', '868099565', 'idelta.silverijus@gmail.com', '1', 'Vyrai 50+', '2019-08-08 09:35:23', '2019-08-08 09:35:23', 17, '2019-08-16'),
(190, 'Andrej', 'Ozerickyj', '03/05/1965', 'Kaliningrad', 'Rusija', '88888', '856756456', 'idelta.silverijus@gmail.com', '1', 'Vyrai 50+', '2019-08-08 09:36:05', '2019-08-08 09:36:05', 17, '2019-08-16'),
(191, 'Igor', 'Maruk', '06/19/1962', 'Vilnius', 'Lietuva', '49', '+37067358983', 'igor_maruk@hotmail.com', '1', 'Vyrai \"Open\" grupė', '2019-08-08 10:17:49', '2019-08-08 10:17:49', 15, '2019-08-16'),
(192, 'Igor', 'Maruk', '06/19/1962', 'Vilnius', 'Lietuva', '49', '+37067358983', 'igor_maruk@hotmail.com', '1', 'Vyrai 50+', '2019-08-08 10:19:33', '2019-08-08 10:19:33', 17, '2019-08-16'),
(196, 'Jurgita', 'Grucyte', '04/24/1978', 'Vilnius', 'Lietuva', '34', '+37064014245', 'grucyta@yahoo.com', '1', 'Moterys \"Open\" grupė', '2019-08-09 04:56:21', '2019-08-09 04:56:21', 16, '2019-08-16'),
(197, 'Jurgita', 'Grucyte', '04/24/1978', 'Vilnius', 'Lietuva', '34', '+37064014245', 'grucyta@yahoo.com', '1', 'Moterys \"Open\" grupė', '2019-08-09 06:45:05', '2019-08-09 06:45:05', 16, '2019-08-16'),
(198, 'vytautas', 'ziurkus', '07/27/1959', 'taurage', 'lietuva', '376', '8615 67864', 'vitasziurkus@gmail.com', '1', 'Vyrai 50+', '2019-08-09 08:00:10', '2019-08-09 08:00:10', 17, '2019-08-16'),
(199, 'Violeta', 'Rliūgė', '11/28/1962', 'Klaipėda', 'LT', '45', '+37068403938', 'tenisas.violeta@gmail.com', '1', 'Moterys 40+', '2019-08-09 13:09:42', '2019-08-09 13:09:42', 18, '2019-08-16'),
(200, 'Edmundas', 'Naujokas', '05/07/1960', 'Šilutė', 'Lietuva', '956', '861542508', 'edm.naujokas@gmail.com', '1', 'Vyrai 50+', '2019-08-10 09:13:58', '2019-08-10 09:13:58', 17, '2019-08-16'),
(201, 'Vytautas', 'Šaulys', '04/02/1952', 'Šilutė', 'Lietuva', '787', '+37060602322', NULL, '1', 'Vyrai 50+', '2019-08-10 09:18:36', '2019-08-10 09:18:36', 17, '2019-08-16'),
(203, 'Vincas', 'Agintas', '03/08/1966', 'Šilutė', 'Lietuva', '697', '+37061220763', NULL, '1', 'Vyrai 50+', '2019-08-10 12:01:21', '2019-08-10 12:01:21', 17, '2019-08-16'),
(204, 'Juozas', 'Giedraitis', '04/06/1955', 'Mažeikiai', 'Lietuva', '360', '8 610 86 7 36', 'juozasgie@gmail.com', '1', 'Vyrai 50+', '2019-08-10 16:49:55', '2019-08-10 16:49:55', 17, '2019-08-16'),
(205, 'Jonas', 'Piekautas', '01/09/2019', 'Šilutė', 'Lietuva', '235', '860610974', 'jonaspiekautas@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-08-11 12:00:18', '2019-08-11 12:00:18', 15, '2019-08-16'),
(206, 'Lukas', 'Raugevičius', '01/01/2019', 'Šilutė', 'Lietuva', '715', '860610974', 'jonaspiekautas@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-08-11 12:06:39', '2019-08-11 12:06:39', 15, '2019-08-16'),
(207, 'Zigmas', 'Šikšnius', '01/01/2019', 'Šilutė', 'Lietuva', '350', '860610974', 'jonaspiekautas@gmail.com', '1', 'Vyrai 50+', '2019-08-11 12:10:19', '2019-08-11 12:10:19', 17, '2019-08-16'),
(208, 'Romualdas', 'Mažutis', '07/09/1942', 'Šilutė', 'Lietuva', '433', '860610974', 'jonaspiekautas@gmail.com', '1', 'Vyrai 50+', '2019-08-11 12:12:45', '2019-08-11 12:12:45', 17, '2019-08-16'),
(209, 'Algis', 'Šaulys', '01/10/1949', 'Šilutė', 'Lietuva', '283', '860610974', 'jonaspiekautas@gmail.com', '1', 'Vyrai 50+', '2019-08-11 12:14:31', '2019-08-11 12:14:31', 17, '2019-08-16'),
(210, 'Antanas', 'Žibas', '09/18/1962', 'Nemakščiai', 'Lietuva', '309', '864371071', 'zibasandrius@gmail.com', '1', 'Vyrai 50+', '2019-08-11 16:33:49', '2019-08-11 16:33:49', 17, '2019-08-16'),
(211, 'Ovidijus', 'Milašauskas', '04/26/1959', 'Viduklė', 'Lietuva', '424', '862407860', NULL, '1', 'Vyrai 50+', '2019-08-11 16:38:42', '2019-08-11 16:38:42', 17, '2019-08-16'),
(212, 'Arnas', 'Jedlickij', '10/17/2007', 'Klaipėda', 'Lietuva', '11111', '866666666666', 'aukse.geceviciute@gmail.com', '1', 'Berniukai 2007 ir jaunesni', '2019-08-12 09:32:30', '2019-08-12 09:32:30', 14, '2019-08-16'),
(213, 'Erik', 'Nūūd', '10/06/2007', 'Estija', 'Estija', '175', '8966666', 'aukse.geceviciute@gmail.com', '1', 'Berniukai 2007 ir jaunesni', '2019-08-12 11:38:34', '2019-08-12 11:38:34', 14, '2019-08-16'),
(214, 'Pert Marten', 'Lehtlaan', '10/01/2007', 'Estija', 'Estija', '175', '8966666', 'aukse.geceviciute@gmail.com', '1', 'Berniukai 2007 ir jaunesni', '2019-08-12 11:39:37', '2019-08-12 11:39:37', 14, '2019-08-16'),
(215, 'Jevgenij', 'Jashin', '02/08/1961', 'Klaipeda', 'Letuva', '637', '868248257', NULL, '1', 'Vyrai 50+', '2019-08-12 14:21:00', '2019-08-14 11:59:51', 17, '2019-08-16'),
(216, 'Valērijs', 'Smirnovs', '05/03/1969', 'Rīga', 'Latvia', NULL, '+ 37129214660', 'margaritajudina@inbox.lv', '1', 'Vyrai \"Open\" grupė', '2019-08-12 16:09:41', '2019-08-12 16:09:41', 15, '2019-08-16'),
(217, 'Šarūnas', 'Gulbinas', '12/13/1965', 'Šiauliai', 'Lietuva', '295', '867415211', 'sarkinas422@inbox.lt', '1', 'Vyrai 50+', '2019-08-12 16:19:01', '2019-08-12 16:19:01', 17, '2019-08-16'),
(218, 'ANTTI', 'LUIGEMAA', '10/30/1969', 'PÄRNU', 'ESTONIA', 'ESTONIA 29', '+372 55502554', 'antti69@hot.ee', '1', 'Vyrai \"Open\" grupė', '2019-08-12 18:43:10', '2019-08-12 18:43:10', 15, '2019-08-16'),
(219, 'ANTTI', 'LUIGEMAA', '10/30/1969', 'PÄRNU', 'ESTONIA', 'ESTONIA  29', '+372 55502554', 'antti69@hot.ee', '1', 'Vyrai 50+', '2019-08-12 18:51:28', '2019-08-12 18:51:28', 17, '2019-08-16'),
(220, 'ANDRES', 'KUDISIIM', '05/14/1969', 'PÄRNU', 'ESTONIA', 'ESTONIA  92', '+372 5219699', 'antti69@hot.ee', '1', 'Vyrai \"Open\" grupė', '2019-08-12 18:55:57', '2019-08-12 18:55:57', 15, '2019-08-16'),
(221, 'ANDRES', 'KUDISIIM', '05/14/1969', 'PÄRNU', 'ESTONIA', 'ESTONIA  92', '+372 5219699', 'antti69@hot.ee', '1', 'Vyrai 50+', '2019-08-12 18:57:56', '2019-08-12 18:57:56', 17, '2019-08-16'),
(222, 'MEELIS', 'KÄRNER', '02/20/1987', 'PÄRNU', 'ESTONIA', 'ESTONIA  39', '+358 404853790', 'antti69@hot.ee', '1', 'Vyrai \"Open\" grupė', '2019-08-12 19:02:32', '2019-08-12 19:02:32', 15, '2019-08-16'),
(223, 'Raimundas', 'Povilaitis', '10/24/1984', 'Kelme', 'Lietuva', NULL, '861597182', 'raima68@gmail.com', '1', 'Vyrai 50+', '2019-08-13 04:11:43', '2019-08-13 04:11:43', 17, '2019-08-16'),
(224, 'Juozas', 'Kniuksta', '04/12/1957', 'Tauragė', 'Lietuva', 'be reitingo', '865778437', 'joorx@yahoo.com', '1', 'Vyrai 50+', '2019-08-13 05:34:38', '2019-08-13 05:34:38', 17, '2019-08-16'),
(225, 'Mantas', 'Deveikis', '07/03/2005', 'Šilutė', 'Lietuva', '727', '868442290', 'mantasdeveikis@gmail.com', '1', 'Berniukai 2004-2006', '2019-08-13 07:32:06', '2019-08-13 07:32:06', 13, '2019-08-16'),
(226, 'Lidija', 'Lipkytė', '10/09/2010', 'Šilutė', 'Lietuva', NULL, '861686875', NULL, '1', 'Mergaitės 2007 ir jaunesnės', '2019-08-13 14:36:22', '2019-08-13 14:36:22', 12, '2019-08-16'),
(227, 'Raimond', 'Einer', '10/24/1989', 'Tallimm', 'Estonia', '35', '55517140', 'lembit.nyyd@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-08-13 16:48:53', '2019-08-13 16:48:53', 15, '2019-08-16'),
(228, 'Pert marten', 'Lehtlaan', '10/24/1984', 'Tallinn', 'Estonia', '176', '55517140', 'lembit.nyyd@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-08-13 16:52:09', '2019-08-13 16:52:09', 15, '2019-08-16'),
(229, 'Erik', 'Nüüd', '09/11/2007', 'Tallinn', 'Estonia', '175', '55517140', 'lembit.nyyd@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-08-13 16:53:06', '2019-08-13 16:53:06', 15, '2019-08-16'),
(230, 'Arūnas', 'Senavaitis', '01/17/1962', 'Prienai', 'Lietuva', '748', '8685 23234', 'arunas.senavaitis@gmail.com', '1', 'Vyrai 50+', '2019-08-13 17:25:02', '2019-08-13 17:25:02', 17, '2019-08-16'),
(231, 'Jevgenyj', 'Jašyn', '08/02/1961', 'Klaipėda', 'Lietuva', '637', '868248257', NULL, '1', 'Vyrai \"Open\" grupė', '2019-08-14 11:59:20', '2019-08-14 11:59:20', 15, '2019-08-16'),
(232, 'Armandas', 'Zuonys', '01/01/2006', 'Klaipėda', 'Lietuva', '-', '864136984', 'tomaskojelis21@gmail.com', '1', 'Berniukai 2004-2006', '2019-08-14 12:02:20', '2019-08-14 12:02:20', 13, '2019-08-16'),
(233, 'Benediktas', 'Zuonys', '01/01/2008', 'Klaipėda', 'Lietuva', '-', '864136984', 'tomaskojelis21@gmail.com', '1', 'Berniukai 2007 ir jaunesni', '2019-08-14 12:03:34', '2019-08-14 12:03:34', 14, '2019-08-16'),
(234, 'Andrius', 'Baliutavičius', '01/01/2007', 'Klaipėda', 'Lietuva', '-', '864136984', 'tomaskojelis21@gmail.com', '1', 'Berniukai 2007 ir jaunesni', '2019-08-14 12:04:11', '2019-08-14 12:04:11', 14, '2019-08-16'),
(235, 'Adas', 'Vaitkus', '10/01/2007', 'Klaipėda', 'Lietuva', '981', '864136984', 'tomaskojelis21@gmail.com', '1', 'Berniukai 2007 ir jaunesni', '2019-08-14 12:04:52', '2019-08-14 12:04:52', 14, '2019-08-16'),
(236, 'Tomas', 'Kojelis', '11/21/1994', 'Klaipėdos raj.', 'Lietuva', '147', '864136984', 'tomaskojelis21@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-08-14 12:06:17', '2019-08-14 12:06:17', 15, '2019-08-16'),
(237, 'Vytautas', 'Sagaitis', '05/15/1945', 'Klaipėda', 'Lietuva', '395', '864136984', 'tomaskojelis21@gmail.com', '1', 'Vyrai 50+', '2019-08-14 12:07:04', '2019-08-14 12:07:04', 17, '2019-08-16'),
(238, 'Gintautas', 'Šlyžius', '03/16/1951', 'Palanga', 'LIETUVA', '615', '862092326', NULL, '1', 'Vyrai 50+', '2019-08-14 12:49:46', '2019-08-14 12:49:46', 17, '2019-08-16'),
(239, 'Kornelija', 'Ščiglaitė', '04/12/2001', 'Vilnius', 'Lietuva', '15', '(8 647) 02 488', 'kornelijasciglaite@gmail.com', '1', 'Moterys \"Open\" grupė', '2019-08-14 15:53:20', '2019-08-14 15:53:20', 16, '2019-08-16'),
(240, 'Karolina', 'Uksaitė', '02/01/2019', 'Šilutė', 'Lietuva', NULL, '860610974', 'jonaspiekautas@gmail.com', '1', 'Mergaitės 2007 ir jaunesnės', '2019-08-15 03:44:12', '2019-08-15 03:44:12', 12, '2019-08-16'),
(241, 'Urtė', 'Pavernikaitė', '01/01/2019', 'Šilutė', 'Lietuva', '260', '860610974', 'jonaspiekautas@gmail.com', '1', 'Mergaitės 2007 ir jaunesnės', '2019-08-15 03:46:35', '2019-08-15 03:46:35', 12, '2019-08-16'),
(242, 'Auksė', 'Arnašiūtė', '01/01/2019', 'Šilutė', 'Lietuva', '257', '860610974', 'jonaspiekautas@gmail.com', '1', 'Mergaitės 2004-2006', '2019-08-15 03:48:15', '2019-08-15 03:48:15', 11, '2019-08-16'),
(243, 'Miron', 'Opanasenko', '10/29/2002', 'Kaliningrad', 'Russia', NULL, '0079114524427', NULL, '1', 'Vyrai \"Open\" grupė', '2019-08-15 04:53:43', '2019-08-15 04:53:43', 15, '2019-08-16'),
(244, 'Ramūnas', 'Jasevičius', '05/25/1969', 'Klaipėda', 'Lietuva', '0', '861376608', NULL, '1', 'Vyrai \"Open\" grupė', '2019-08-15 14:55:42', '2019-08-15 14:55:42', 15, '2019-08-16'),
(245, 'Brilita', 'Jurevičiūtė', '08/24/2007', 'Dovilai', 'Lietuva', '215', '864136984', 'Tomaskojelis21@gmail.com', '1', 'Moterys \"Open\" grupė', '2019-08-15 15:29:32', '2019-08-15 15:29:32', 16, '2019-08-16'),
(246, 'Vilius', 'Kavaliauskas', '02/11/2006', 'Kaunas', 'Lietuva', '265', '+37068666377', NULL, '1', 'Berniukai 2004-2006', '2019-08-15 17:01:49', '2019-08-15 17:01:49', 13, '2019-08-16'),
(247, 'Alfonsas', 'Drakšas', '04/29/1963', 'Kretinga', 'Lietuva', '890', '860040858', 'draksas@gmail.com', '1', 'Vyrai 50+', '2019-08-16 07:27:27', '2019-08-16 07:27:27', 17, '2019-08-16'),
(248, 'Evaldas', 'Montvydas', '10/07/1968', 'Klaipėda', 'Lietuva', NULL, '+37060523035', '01afas@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-08-16 09:58:45', '2019-08-16 09:58:45', 15, '2019-08-16'),
(249, 'Evaldas', 'Montvydas', '10/07/1968', 'Klaipėda', 'Lietuva', NULL, '+37060523035', '01afas@gmail.com', '1', 'Vyrai \"Open\" grupė', '2019-08-16 09:59:11', '2019-08-16 09:59:11', 15, '2019-08-16'),
(250, 'Evaldas', 'Montvydas', '10/07/1968', 'Klaipėda', 'Lietuva', NULL, '+37060523035', '01afas@gmail.com', '1', 'Vyrai 50+', '2019-08-16 10:00:20', '2019-08-16 10:00:20', 17, '2019-08-16'),
(251, 'Vilius', 'Kavaliauskas', '02/11/2006', 'Kaunas', 'Lietuva', '265', '+37068666377', NULL, '1', 'Vyrai \"Open\" grupė', '2019-08-16 16:33:27', '2019-08-16 16:33:27', 15, '2019-08-16'),
(252, 'Antanas', 'Vaitkus', '07/27/1951', 'Klaipėda', 'Lietuva', '729', '864136984', 'tomaskojelis21@gmail.com', '1', 'Vyrai 50+', '2019-08-17 03:22:36', '2019-08-17 03:22:36', 17, '2019-08-16'),
(253, 'Jevgenij', 'Sege', '06/01/1977', 'Klaipeda', 'Lithuania', '956', '862232464', 'jevgenijsege@yahoo.com', '1', 'VYRŲ gr. (amžius neribojimas)', '2019-10-19 08:36:26', '2019-11-08 15:13:01', 19, '2019-11-09'),
(255, 'Kazys', 'Stankus', '10/03/1959', 'Salantai', 'Lietuva', '382', '+37067636385', 'k.stankui@gmail.com', '1', 'SENJORŲ vyrų gr. (50m+)', '2019-10-19 09:12:21', '2019-10-19 09:12:21', 20, '2019-11-09'),
(256, 'Virmantas', 'Budrikas', '12/27/1977', 'Šilutė', 'Lietuva', NULL, '+37063638164', NULL, '1', 'VYRŲ gr. (amžius neribojimas)', '2019-10-19 18:03:26', '2019-10-19 18:03:26', 19, '2019-11-09'),
(257, 'Egidijus', 'Jundulas', '12/16/1995', 'Rietavas', 'Lietuva', '1467', '868533509', 'egis.jundul@gmail.com', '1', 'VYRŲ gr. (amžius neribojimas)', '2019-10-20 05:49:38', '2019-11-08 15:12:07', 19, '2019-11-09'),
(258, 'Edgaras', 'Knyzeris', '10/15/1993', 'Klaipėda', 'Lietuva', '126', '864374474', 'tenisas15@gmail.com', '1', 'VYRŲ gr. (amžius neribojimas)', '2019-10-20 15:48:51', '2019-10-20 15:48:51', 19, '2019-11-09'),
(259, 'Modestas', 'Šakinis', '04/01/1992', 'Gargzdai', 'Lietuva', NULL, '862162999', 'modestassakinis@gmail.com', '1', 'VYRŲ gr. (amžius neribojimas)', '2019-10-21 06:10:34', '2019-10-21 06:10:34', 19, '2019-11-09'),
(260, 'Brilita', 'Jurevičiūtė', '08/24/2007', 'Klaipėdos rajonas', 'Lietuva', '197', '864136984', NULL, '1', 'MOTERŲ gr. (amžius neribojimas)', '2019-10-21 08:41:10', '2019-10-21 08:41:10', 21, '2019-11-09'),
(261, 'Dovydas', 'Bagdonas', '07/18/1997', 'Laukuva', 'Lietuva', '30', '862856464', 'dovixas1@gmail.com', '1', 'VYRŲ gr. (amžius neribojimas)', '2019-10-21 15:11:38', '2019-10-21 15:11:38', 19, '2019-11-09'),
(262, 'Igor', 'Solovjov', '03/18/1969', 'Klaipėda', 'Lietuva', '1151', '862022811', NULL, '1', 'SENJORŲ vyrų gr. (50m+)', '2019-10-23 12:08:01', '2019-10-23 12:08:01', 20, '2019-11-09'),
(263, 'Jevgenij', 'Jašin', '08/02/1961', 'Klaipėda', 'Lietuva', '611', '--', NULL, '1', 'SENJORŲ vyrų gr. (50m+)', '2019-10-23 13:34:01', '2019-10-23 13:34:01', 20, '2019-11-09'),
(264, 'Dangirdas', 'Rimkus', '05/03/1967', 'Raseiniai', 'lietuva', '518', '861851916', 'rimkiai@gmail.com', '1', 'SENJORŲ vyrų gr. (50m+)', '2019-10-24 03:55:19', '2019-10-24 03:55:19', 20, '2019-11-09'),
(265, 'Marija', 'Mikalauskytė', '06/04/2005', 'Gargždai', 'Lietuva', '53', '+37064525458', 'mikalauskytemarija@gmail.com', '1', 'MOTERŲ gr. (amžius neribojimas)', '2019-10-26 15:41:39', '2019-10-26 15:41:39', 21, '2019-11-09'),
(266, 'Mantas', 'Andruška', '10/18/1987', 'Kelmė', 'Lietuva', '39', '+37062930259', 'mantas.andruska@gmail.com', '1', 'VYRŲ gr. (amžius neribojimas)', '2019-10-28 16:11:55', '2019-10-28 16:11:55', 19, '2019-11-09'),
(267, 'Vilius', 'Milvydas', '05/25/1988', 'Klaipeda', 'Lietuva', '31', '+37067384472', NULL, '1', 'VYRŲ gr. (amžius neribojimas)', '2019-10-30 07:02:34', '2019-10-30 07:02:34', 19, '2019-11-09'),
(268, 'Auguste', 'Mikalauskyte', '11/24/1999', 'Klaipeda', 'Lietuva', '121', '865483975', 'auguste.mik1999@gmail.com', '1', 'MOTERŲ gr. (amžius neribojimas)', '2019-10-30 17:14:14', '2019-10-30 17:14:14', 21, '2019-11-09'),
(269, 'Algirdas', 'Reliūga', '12/18/1954', 'Klaipėda', 'LT', '289', '+37069882194', 'tenisas.violeta@gmail.com', '1', 'SENJORŲ vyrų gr. (50m+)', '2019-11-02 13:16:25', '2019-11-02 13:16:25', 20, '2019-11-09'),
(270, 'Milgidas', 'Kasinskas', '02/22/1955', 'Klaipėda', 'LT', '648', '+37069882194', 'tenisas.violeta@gmail.com', '1', 'SENJORŲ vyrų gr. (50m+)', '2019-11-02 13:17:51', '2019-11-02 13:17:51', 20, '2019-11-09'),
(271, 'Vytautas', 'Sagaitis', '05/15/1945', 'Klaipėda', 'LT', '411', '+37069882194', 'tenisas.violeta@gmail.com', '1', 'SENJORŲ vyrų gr. (50m+)', '2019-11-02 13:19:28', '2019-11-02 13:19:28', 20, '2019-11-09'),
(272, 'Darius', 'Glodenis', '11/01/1970', 'Klaipeda', 'Lietuva', '436', '861606819', 'dariusglo@gmail.com', '1', 'VYRŲ gr. (amžius neribojimas)', '2019-11-02 20:22:11', '2019-11-02 20:22:11', 19, '2019-11-09'),
(273, 'Alvidas', 'Zumbrickas', '08/31/1945', 'Klaipėda', 'Lietuva', '570', '865974301', NULL, '1', 'SENJORŲ vyrų gr. (50m+)', '2019-11-03 16:46:47', '2019-11-03 16:46:47', 20, '2019-11-09'),
(274, 'VALDAS', 'ANTANAVIČIUS', '10/08/1966', 'Viduklė, Raseinių raj.', 'Lietuva', '774', '+37069968380', 'trysmalunai@gmail.com', '1', 'SENJORŲ vyrų gr. (50m+)', '2019-11-04 08:02:20', '2019-11-04 08:02:20', 20, '2019-11-09'),
(275, 'Viktorija', 'Bernotaite', '08/21/1995', 'Klaipeda', 'Lietuva', NULL, '865057307', 'viktorytebernotaite@gmail.com', '1', 'MOTERŲ gr. (amžius neribojimas)', '2019-11-04 12:10:19', '2019-11-04 12:10:19', 21, '2019-11-09'),
(276, 'Ovidijus', 'Milašauskas', '04/26/1959', 'Viduklė', 'Lietuva', '432', '862407860', NULL, '1', 'SENJORŲ vyrų gr. (50m+)', '2019-11-05 14:28:48', '2019-11-05 14:28:48', 20, '2019-11-09'),
(277, 'Ieva', 'Pliuškytė', '03/24/2007', 'Dovilai', 'Lietuva', '274', '864136984', NULL, '1', 'MOTERŲ gr. (amžius neribojimas)', '2019-11-06 06:34:00', '2019-11-06 06:34:00', 21, '2019-11-09'),
(278, 'Kristupas', 'Elvikis', '09/16/2005', 'Dovilai', 'Lietuva', '1250', '864136984', NULL, '1', 'VYRŲ gr. (amžius neribojimas)', '2019-11-06 06:34:47', '2019-11-06 06:34:47', 19, '2019-11-09'),
(279, 'Deividas', 'Navajauskas', '03/03/2006', 'Dovilai', 'Lietuva', '1154', '864136984', NULL, '1', 'VYRŲ gr. (amžius neribojimas)', '2019-11-06 06:35:41', '2019-11-06 06:35:41', 19, '2019-11-09'),
(280, 'Laurynas', 'Pakalniškis', '08/19/1975', 'Klaipėda', 'Lietuva', '12', '8676 34714', NULL, '1', 'VYRŲ gr. (amžius neribojimas)', '2019-11-06 06:49:20', '2019-11-06 06:49:20', 19, '2019-11-09'),
(282, 'Rolandas', 'Šlušnys', '06/14/1999', 'Klaipėda', 'Lietuva', '515', '865333152', 'rolandas.slusnys1@gmail.com', '1', 'VYRŲ gr. (amžius neribojimas)', '2019-11-06 13:17:55', '2019-11-06 13:17:55', 19, '2019-11-09'),
(283, 'Tomas', 'Navickas', '11/04/1979', 'Viduklė', 'Lietuva', '703', '862032919', 'tomas140@gmail.com', '1', 'VYRŲ gr. (amžius neribojimas)', '2019-11-06 14:35:27', '2019-11-06 14:35:27', 19, '2019-11-09'),
(284, 'Titas', 'Venckus', '10/05/2006', 'Šilutė', 'Lietuva', '791', '862228819', 'amixama@gmail.com', '1', 'VYRŲ gr. (amžius neribojimas)', '2019-11-06 16:07:58', '2019-11-06 16:07:58', 19, '2019-11-09'),
(285, 'Zigmas', 'Šikšnius', '06/13/1948', 'Šilutė', 'Lietuva', '305', '860610974', 'jonaspiekautas@gmail.com', '1', 'SENJORŲ vyrų gr. (50m+)', '2019-11-07 07:35:10', '2019-11-07 07:35:10', 20, '2019-11-09'),
(286, 'Algis,Mykolas', 'Šaulys', '10/01/1949', 'Šilutė', 'Lietuva', '283', '860610974', 'jonaspiekautas@gmail.com', '1', 'SENJORŲ vyrų gr. (50m+)', '2019-11-07 07:37:41', '2019-11-07 07:37:41', 20, '2019-11-09'),
(287, 'Vincas', 'Agintas', '03/08/1966', 'Šilutė', 'Lietuva', '715', '860610974', 'jonaspiekautas@gmail.com', '1', 'SENJORŲ vyrų gr. (50m+)', '2019-11-07 07:39:24', '2019-11-07 07:39:24', 20, '2019-11-09'),
(288, 'Lukas', 'Raugevičius', '08/16/2006', 'Šilutė', 'Lietuva', '635', '860610974', 'jonaspiekautas@gmail.com', '1', 'VYRŲ gr. (amžius neribojimas)', '2019-11-07 07:43:58', '2019-11-07 07:43:58', 19, '2019-11-09'),
(290, 'Auksė', 'Arnašiūtė', '05/14/2004', 'Šilutė', 'Lietuva', '257', '860610974', 'jonaspiekautas@gmail.com', '1', 'MOTERŲ gr. (amžius neribojimas)', '2019-11-07 07:49:12', '2019-11-07 07:49:12', 21, '2019-11-09'),
(291, 'Urtė', 'Pavernikaitė', '12/14/2009', 'Šilutė', 'Lietuva', '260', '860610974', 'jonaspiekautas@gmail.com', '1', 'MOTERŲ gr. (amžius neribojimas)', '2019-11-07 07:51:35', '2019-11-07 07:51:35', 21, '2019-11-09'),
(292, 'Karolina', 'Uksaitė', '10/14/2008', 'Šilutė', 'Lietuva', NULL, '860610974', 'jonaspiekautas@gmail.com', '1', 'MOTERŲ gr. (amžius neribojimas)', '2019-11-07 07:53:20', '2019-11-07 07:53:20', 21, '2019-11-09'),
(293, 'Romas', 'Gečas', '04/04/1960', 'Priekulė', 'Lietuva', '124', '860610974', 'jonaspiekautas@gmail.com', '1', 'SENJORŲ vyrų gr. (50m+)', '2019-11-07 07:56:44', '2019-11-07 07:56:44', 20, '2019-11-09'),
(294, 'Tomas', 'Sukauskas', '02/12/1999', 'Plungė', 'Lietuva', '512', '864796430', 'tomassukauskas@gmail.com', '1', 'VYRŲ gr. (amžius neribojimas)', '2019-11-07 07:58:59', '2019-11-07 07:58:59', 19, '2019-11-09'),
(295, 'Antanas', 'Vaitkus', '07/27/1951', 'Klaipėda', 'Lietuva', NULL, '868489030', NULL, '1', 'SENJORŲ vyrų gr. (50m+)', '2019-11-07 12:34:52', '2019-11-07 12:34:52', 20, '2019-11-09'),
(296, 'Robertas', 'Bertašius', '10/24/1984', 'Salantai', 'Lietuva', '823', '863687319', NULL, '1', 'VYRŲ gr. (amžius neribojimas)', '2019-11-07 13:47:51', '2019-11-07 13:47:51', 19, '2019-11-09'),
(298, 'Gintautas', 'Šlyžius', '10/24/1984', 'Palanga', 'LIETUVA', '615', '862092326', NULL, '1', 'SENJORŲ vyrų gr. (50m+)', '2019-11-07 17:02:05', '2019-11-07 17:02:05', 20, '2019-11-09'),
(299, 'Mantas', 'Deveikis', '07/03/2005', 'Šilutė', 'Lietuva', '679', '868739657', NULL, '1', 'VYRŲ gr. (amžius neribojimas)', '2019-11-08 05:43:21', '2019-11-08 05:43:21', 19, '2019-11-09'),
(300, 'Rytis', 'Damulis', '09/02/2005', 'Šilutė', 'Lietuva', '471', '868739657', NULL, '1', 'VYRŲ gr. (amžius neribojimas)', '2019-11-08 05:44:57', '2019-11-08 05:44:57', 19, '2019-11-09'),
(301, 'Artūras', 'Silius', '07/18/1969', 'Rusnė', 'Lietuva', '303', '868739657', NULL, '1', 'SENJORŲ vyrų gr. (50m+)', '2019-11-08 05:46:09', '2019-11-08 05:46:09', 20, '2019-11-09'),
(302, 'Karina', 'Alkimavičiūtė', '02/03/2005', 'Šilutė', 'Lietuva', '84', '868739657', NULL, '1', 'MOTERŲ gr. (amžius neribojimas)', '2019-11-08 06:40:15', '2019-11-08 06:40:15', 21, '2019-11-09'),
(303, 'Gintaras', 'Nagrockas', '01/24/1984', 'Klaipeda', 'Lt', '1084', '+37068751713', 'g.nagrockas@gmail.com', '1', 'SENJORŲ vyrų gr. (50m+)', '2019-11-08 08:51:19', '2019-11-08 08:51:19', 20, '2019-11-09'),
(304, 'Almantė', 'Šimkutė', '08/24/2005', 'Šilutė', 'Lietuva', '259', '868739657', NULL, '1', 'MOTERŲ gr. (amžius neribojimas)', '2019-11-08 09:03:05', '2019-11-08 09:03:05', 21, '2019-11-09'),
(305, 'Ramūnas', 'Sliekas', '07/23/1975', 'Klaipėda', 'Lietuva', '517', '+37068252584', 'ramunas.nt@gmail.com', '1', 'VYRŲ gr. (amžius neribojimas)', '2019-11-08 09:31:23', '2019-11-08 09:31:23', 19, '2019-11-09'),
(306, 'Mindaugas', 'Buda', '04/04/1986', 'Klaipėda', 'Lietuva', '226', '867433748', NULL, '1', 'VYRŲ gr. (amžius neribojimas)', '2019-11-08 13:07:49', '2019-11-08 15:11:49', 19, '2019-11-09'),
(310, 'Nojus', 'Gustys', '10/24/1984', 'Telšiai', 'Lietuva', '169', '8 682 27652', 'nojus5152@inbox.lt', '1', 'VYRŲ gr. (amžius neribojimas)', '2019-11-08 15:16:15', '2019-11-08 15:16:15', 19, '2019-11-09'),
(311, 'Dovydas', 'Petrauskas', '10/24/1984', 'Telšiai', 'Lietuva', '252', '8 682 27652', 'nojus5152@inbox.lt', '1', 'VYRŲ gr. (amžius neribojimas)', '2019-11-08 15:17:24', '2019-11-08 15:17:24', 19, '2019-11-09'),
(312, 'Paulius', 'Keinys', '08/08/1994', 'Telšiai', 'Lietuva', '105', '8 682 27652', 'nojus5152@inbox.lt', '1', 'VYRŲ gr. (amžius neribojimas)', '2019-11-08 15:19:29', '2019-11-08 15:19:29', 19, '2019-11-09'),
(313, 'Irmantas', 'Daukontas', '01/01/2019', 'Mažeikiai', 'Lietuva', '46', '862546436', 'blogas12333@gmail.com', '1', 'VYRŲ gr. (amžius neribojimas)', '2019-11-08 16:03:24', '2019-11-08 16:03:24', 19, '2019-11-09'),
(314, 'Armandas', 'Daukontas', '05/09/2000', 'Mažeikiai', 'Lietuva', '316', '862524878', 'armanida297@gmail.com', '1', 'VYRŲ gr. (amžius neribojimas)', '2019-11-08 16:13:39', '2019-11-08 16:13:39', 19, '2019-11-09'),
(316, 'Lukas', 'Frejeris', '03/26/2002', 'Mažeikiai', 'Lietuva', '80', '+37061043829', 'lukasfrejeris@gmail.com', '1', 'VYRŲ gr. (amžius neribojimas)', '2019-11-08 16:18:49', '2019-11-08 16:18:49', 19, '2019-11-09'),
(317, 'Kevinas', 'Liutkua', '05/16/2007', 'Telšiai', 'Lietuva', '598', '865516443', NULL, '1', 'VYRŲ gr. (amžius neribojimas)', '2019-11-08 16:23:21', '2019-11-08 16:23:21', 19, '2019-11-09'),
(318, 'Darius', 'Aleknavičius', '08/25/1978', 'Klaipėda', 'Lietuva', '116', '867393030', 'Topsaslt@gmail.com', '1', 'VYRŲ gr. (amžius neribojimas)', '2019-11-09 04:52:02', '2019-11-09 04:52:02', 19, '2019-11-09'),
(319, 'Arnas', 'Saparis', '05/05/2008', 'Telšiai', 'Lietuva', '692', '868873898', 'adelekalniute@gmail.com', '1', 'Berniukai 2005 – 2009 m. gim.', '2019-11-22 16:14:10', '2019-11-22 16:14:10', 23, '2019-12-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `players_event_id_index` (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=320;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
