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
-- Table structure for table `t_players`
--

CREATE TABLE `t_players` (
  `id` int(10) UNSIGNED NOT NULL,
  `tname` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `name2` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `surname2` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `birthday2` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `name3` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname3` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday3` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name4` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname4` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday4` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name5` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname5` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday5` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `responsive` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscribe` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tevent_id` int(10) UNSIGNED DEFAULT NULL,
  `edate` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `birthday6` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name6` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname6` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `argali` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tclubname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sporthall` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_players`
--

INSERT INTO `t_players` (`id`, `tname`, `name`, `surname`, `birthday`, `name2`, `surname2`, `birthday2`, `name3`, `surname3`, `birthday3`, `name4`, `surname4`, `birthday4`, `name5`, `surname5`, `birthday5`, `responsive`, `city`, `country`, `tel`, `email`, `subscribe`, `group`, `created_at`, `updated_at`, `tevent_id`, `edate`, `birthday6`, `name6`, `surname6`, `argali`, `tclubname`, `sporthall`) VALUES
(50, 'Feniksas', 'Zigmas', 'Skaringa', '05/21/1985', 'Šarūnas', 'Gulbinas', '12/13/1965', 'Gintaras', 'Vėbra', '06/12/1978', 'Valdas', 'Vabolis', '04/22/1969', 'Kazimieras', 'Ramanauskas', '05/25/1951', 'Kazimieras Ramanauskas', 'Mažeikiai', 'Lietuva', '37069961806', 'kazimieras2@gmail.com', '1', 'Aukščiausia Lyga', '2019-04-29 12:55:07', '2019-05-13 06:24:11', 10, '2019-01-01', '25/04/1966', 'Rolandas', 'Navickas', 'Ne', 'Mažeikių sporto klubas \'\'Vikrusis feniksas\'\'', NULL),
(51, '\"Vijurkas-2\"', 'Irmantas', 'Daukontas', '1/1/2003', 'Lukas', 'Frejeris', '3/26/2002', 'Mantas', 'Rimeikis', '4/8/1984', 'Mantas', 'Stakėnas', '5/25/1990', 'Židrūnas', 'Kižys', '9/30/1967', 'Raimondas Jackevičius', 'Mažeikiai', 'Lietuva', '868790123', 'raimondas0616@gmail.com', '1', 'Aukščiausia Lyga', NULL, NULL, 10, '2019-01-01', NULL, NULL, NULL, 'Ne', 'Mažeikių stalo teniso klubas \"Vijurkas\"', NULL),
(52, 'VSTA-Baltija', 'Auksė', 'Rasimavičienė', '2/14/1990', 'Andželika', 'Petrauskienė', '7/13/1975', 'Vakaris', 'Mečionis', '11/14/2001', 'Darius', 'Aleknavičius', '8/25/1978', 'Simonas', 'Gedvilas', '12/10/1984', 'Tomas Kojelis', 'Klaipėdos raj.', 'Lietuva', '864136984', 'tomaskojelis21@gmail.com', '1', 'Aukščiausia Lyga\r\n', NULL, NULL, 10, '2019-01-01', NULL, 'Tomas', 'Kojelis', 'Taip', 'VSTA', 'Taikos pr. 70, Klaipėda'),
(53, 'Šilutė\"Varmas\"', 'Rokas', 'Piekautas', '8/30/1987', 'Karolis', 'Pundinas', '10/18/2000', 'Matas', 'Vilkas', '9/29/1991', 'Jonas', 'Piekautas', NULL, NULL, NULL, NULL, 'Jonas Piekautas', 'Šilutė', 'Lietuva', '860610974', 'jonaspiekautas@gmail.com', '1', 'Aukščiausia Lyga', NULL, NULL, 10, '2019-01-01', NULL, NULL, NULL, 'Taip', 'Šilutės stalo teniso klubas\"Varmas\"', 'Šilutė,km.Traksėdžiai,Šilojų g.15'),
(54, 'Robidoga', 'Romas', 'Liūnas', '7/12/1964', 'Vygantas', 'Ramšas', '7/7/1972', 'Alvydas', 'Mikalauskas', '1/23/1962', 'Laurynas', 'Monstis', '11/21/1991', 'Rimantas', 'Markauskas', NULL, 'Romas Liūnas', 'Telšiai', 'Lietuva', '37062018202', 'robidogaa@gmail.com', '1', 'Aukščiausia Lyga', NULL, NULL, 10, '2019-01-01', NULL, NULL, NULL, 'Taip', 'Robidoga', 'Statybininkų 5'),
(55, 'MAŽOJI RAKETĖ-1', 'Evaldas', 'Šteinbergas', '1/28/1980', 'Gintautas', 'Bezaras', '11/17/1966', 'Gintautas', 'Adomaitis', '3/4/1996', 'Dovydas', 'Pagojus', '3/15/1999', NULL, NULL, NULL, 'Kęstutis Barauskas', 'Akmenė', 'Lietuva', '868411558', 'k.barauskas@gmail.com', '1', 'Aukščiausia Lyga', NULL, NULL, 10, '2019-01-01', NULL, NULL, NULL, 'Taip\r\n', 'Akmenės rajono stalo teniso klubas \"Mažoji raketė\"', 'Laižuvos g. 7, Akmenė'),
(56, 'Salantas', 'Rimantas', 'Lubys', '1/21/1961', 'Giedrius', 'Saulytis', '1/12/1966', 'Vytautas', 'Balčiūnas', '5/12/2001', 'Karolis', 'Balčiūnas', '4/23/2000', NULL, NULL, NULL, 'Kazys Stankus', 'Salantai', 'Lietuva', '867636385', 'k.stankui@gmail.com', '1', 'Aukščiausia Lyga', NULL, NULL, 10, '2019-01-01', NULL, NULL, NULL, 'Ne\r\n', 'Kretingos rajono stalo teniso klubas', NULL),
(57, 'AKMENĖS SC', 'Kęstutis', 'Barauskas', '7/2/1983', 'Karolina', 'Kuznecova', '5/17/2003', 'Gabrielė', 'Strodomskytė', '9/30/2003', 'Mantas', 'Liachauskas', '4/26/1989', NULL, NULL, NULL, 'Kęstutis Barauskas', 'Akmenė', 'Lietuva', '868411558', 'k.barauskas@gmail.com', '1', 'Aukščiausia Lyga', NULL, NULL, 10, '2019-01-01', NULL, NULL, NULL, 'Taip', 'Akmenės rajono sporto centras', 'Laižuvos g. 7, Akmenė'),
(58, 'FORTŪNA', 'Renatas', 'Guščinas', '8/22/1987', 'Gediminas', 'Kitra', '11/25/1973', 'Valdas', 'Švedas', '5/21/1985', 'Laimonas', 'Vaivada', '8/12/1996', 'Tadeuš', 'Šimanskij', NULL, 'Renatas Guščinas', 'Klaipėda', 'Lietuva', '867654526', 'r.guscinas@gmail.com', '1', 'Aukščiausia Lyga', NULL, NULL, 10, '2019-01-01', NULL, NULL, NULL, 'Ne\r\n', 'FORTŪNA', NULL),
(59, 'Telšių  SRC-Vytas', 'Nojus', 'Gustys', '5/7/2003', 'Dovydas', 'Petrauskas', '8/13/2003', 'Marius', 'Jučinskas', '2/9/2005', 'Paulius', 'Keinys', '8/8/1994', 'Lukas', 'Vainavišius', '5/28/2001', 'Remigijus Gustys', 'Telšiai', 'Lietuva', '8 682 27652', 'remigijus777@inbox.lt', '1', 'Aukščiausia Lyga', NULL, NULL, 10, '2019-01-01', NULL, 'Rimantas', 'Janušas', 'Taip', 'Telšių stalo teniso sporto klubas \"Vytas\"', 'Birutės g. 60 Telšių sporto ir rekreacijos centras. Taip pat Statybininkų g. 5 UAB \"ROBIDOGA\" stalo teniso salė.'),
(60, 'Kretingos \"SALA\"', 'Vytautas', 'Ročys', '11/3/1960', 'Laurynas', 'Pakalniškis', '8/19/1975', 'Egidijus', 'Žižiūnas', '7/24/1973', 'Vilius', 'Milvydas', '5/25/1988', NULL, NULL, NULL, 'Vytautas Ročys', 'Kretinga', 'Lietuva', '+370 676 32700', 'vytautas.rocys@vdi.lt', '1', 'Aukščiausia Lyga', NULL, NULL, 10, '2019-01-01', NULL, NULL, NULL, 'Taip', 'Kretingos rajono stalo teniso klubas', 'Taikos g. 4, Salantai'),
(61, 'Smeltė', 'Mantas', 'Andruška', '10/18/1988', 'Zigmas', 'Mišeikis', '9/23/1955', 'Antanas', 'Žibas', '9/18/1962', 'Virgilijus', 'Valiuška', '12/19/1968', 'Donatas', 'Gliaudys', '1/8/1972', 'Antanas Žibas', 'Nemakščiai', 'Lietuva', '864371071', 'zibasandrius@gmail.com', '1', 'Aukščiausia Lyga', NULL, NULL, 10, '2019-01-01', NULL, 'Eugenijus', 'Jefimovas', 'Ne', 'Nemakščių bendruomenės sporto klubas \" Smeltė\"', NULL),
(62, 'VSTA-Fuksas', 'Darius', 'Glodenis', '11/1/1970', 'Alvidas', 'Zumbrickas', '8/31/1945', 'Romualdas', 'Butkevičius', '1/23/2005', 'Ramūnas', 'Sliekas', '8/15/1975', NULL, NULL, NULL, 'Darius Glodenis', 'Klaipėda', 'Lietuva', '861606819', 'tomaskojelis21@gmail.com', '1', 'I Lyga', NULL, NULL, 8, '2019-01-01', NULL, NULL, NULL, 'Ne', NULL, NULL),
(63, ',,Danspin\'\' Raseiniai', 'Lukas', 'Rimkus', '3/23/2003', 'Dangirdas', 'Rimkus', '3/5/1967', 'Vytautas', 'Barevičius', '5/2/1951', 'Vilmantas', 'Baltrušaitis', '5/7/1982', NULL, NULL, NULL, 'Vytautas Barevičius', 'Raseiniai', 'Lietuva', '37061253369', 'vytautas.barevicius@gmail.com', '1', 'I Lyga', NULL, NULL, 8, '2019-01-01', NULL, NULL, NULL, 'Ne', 'STK Rseiniai', NULL),
(64, 'Medūnė', 'Eligijus', 'Jakštys', '6/6/1997', 'Andrius', 'Jakštys', '2/27/1975', 'Virginijus', 'Jakštys', '5/13/1967', 'Remigijus', 'Jakštys', '5/18/1976', 'Robertas', 'Jakštys', '11/6/2003', 'Andrius', 'Telšiai', 'Lietuva', '867072861', 'eligijus12@gmail.com', '1', 'I Lyga', NULL, NULL, 8, '2019-01-01', NULL, NULL, NULL, 'Ne', NULL, 'Statybininkų 5, Telšiai'),
(65, 'Žemaite 4', 'Nerijus', 'Kreišmontas', '12/5/1994', 'Algimantas', 'Krajinas', '9/23/1959', 'Žydrūnas', 'Jankauskas', '5/13/1977', 'Vidas', 'Balčiūnas', '3/11/1966', 'Jonas', 'Juzaitis', '8/12/1952', 'Jonas Juzaitis', 'Plungė', 'Lietuva', '8 618 44511', 'jonasjuzaitis@gmail.com', '1', 'I Lyga', NULL, NULL, 8, '2019-01-01', NULL, 'Leonas', 'Pečkauskas', 'Taip', 'Žemaite', 'Mendeno 7,Plungė'),
(66, 'Elektrovoltas', 'Rimantas', 'Pronskus', '8/9/1971', 'Bronislovas', 'Eirošius', '4/4/1962', 'Marius', 'Gaudiešius', '10/7/1983', 'Albinas', 'Zmaila', '4/30/1951', NULL, NULL, NULL, 'Rimantas Pronskus', 'Telšiai', 'Lietuva', '37065205027', 'uabelektrovoltas@gmail.com', '1', 'I Lyga', NULL, NULL, 8, '2019-01-01', NULL, NULL, NULL, 'Taip', 'Antpong', 'Statybininkų g. 5, LT-87101 Telšiai'),
(67, 'Jurbarkas (Jurbarkas)', 'Kęstutis', 'Maščinskas', '3/25/1989', 'Algirdas', 'Samajauskas', '3/28/1962', 'Arūnas', 'Štrimas', '3/19/1961', 'Ramūnas', 'Majauskis', '2/7/1983', 'Marius', 'Gurklys', '1/25/1974', 'Samajauskas Algirdas', 'Jurbarkas', 'LT', '861276140', 'algirdas.samajauskas@jurbarkas.lt', '1', 'I Lyga', NULL, '2019-05-09 04:32:38', 8, '2019-01-01', NULL, 'Edgaras', 'Soraka', 'Taip', 'Pirmas setas', 'Smalininkų technologijų ir verslo mokykla, Parko g. 4, Smalininkai; norime - mažą turą.'),
(68, 'STK TAURUS', 'Jonas', 'Ratkevicius', '10/8/1960', 'Vytautas', 'Žiurkus', '7/27/1959', 'Donatas', 'Maciulis', '1/8/1983', 'Edvardas', 'Naujokas', '9/12/1985', NULL, NULL, NULL, 'Jonas Ratkevicius', 'Taurage', 'Lietuva', '37065778437', 'xxxxxx@xxxxxxx', '1', 'I Lyga', NULL, NULL, 8, '2019-01-01', NULL, NULL, NULL, 'Taip', 'STK TAURUS', 'Aerodromo 7, Taurage'),
(69, 'Šilutė\"Varmas-Štormas\"', 'Jonas', 'Čimkus', '12/7/1949', 'Algis Mykolas', 'Šaulys', '10/1/1949', 'Romualdas', 'Mažutis', '9/7/1942', 'Laimis', 'Li-čin-chai', '2/17/1967', 'Tomas', 'Li-čin-chai', '1/11/1993', 'Romualdas Mažutis', 'Šilutė', 'Lietuva', '861468830', 'siuarenord@gmail.com', '1', 'I Lyga', NULL, NULL, 8, '2019-01-01', NULL, NULL, NULL, 'Taip', 'Šilutės stalo teniso klubas\"Varmas\"', 'Šilutė,km.Traksėdžiai,Šilojų g.15'),
(70, 'Arvika', 'Kazys', 'Stankus', '10/3/1959', 'Arvydas', 'Venslauskas', '4/23/1965', 'Robertas', 'Narvilas', '5/8/1963', 'Žilvinas', 'Narvilas', '4/24/1994', NULL, NULL, NULL, 'Kazys Stankus', 'Salantai', 'Lietuva', '867636385', 'k.stankui@gmail.com', '1', 'I Lyga', NULL, NULL, 8, '2019-01-01', NULL, NULL, NULL, 'Taip', 'Kretingos rajono stalo teniso klubas', 'Taikos g. 4, Salantai'),
(71, 'MAŽOJI RAKETĖ-2', 'Jonas', 'Dvariškis', '4/18/1955', 'Viačeslavas', 'Chakimovas', '4/26/1947', 'Vladimir', 'Golikov', '3/2/1951', 'Loreta', 'Avelienė', '4/18/1966', 'Antanas', 'Budžius', '8/10/1958', 'Kęstutis Barauskas', 'Akmenė', 'Lietuva', '868411558', 'k.barauskas@gmail.com', '1', 'I Lyga', NULL, NULL, 8, '2019-01-01', NULL, NULL, NULL, 'Taip', 'Akmenės rajono stalo teniso klubas \"Mažoji raketė\"', 'Laižuvos g. 7, Akmenė'),
(72, 'Šilutes setas', 'Zigmas', 'Šikšnius', '6/13/1948', 'Artūras', 'Silius', '7/18/1969', 'Rytis', 'Damulis', '8/2/2005', 'Karina', 'Alkimavičiūtė', '2/3/2005', 'Titas', 'Venckus', '10/5/2006', 'Artūras Silius', 'Šilutė', 'Lietuva', '868739657', 'silutessetas@gmail.com', '1', 'I Lyga', NULL, NULL, 8, '2019-01-01', NULL, NULL, NULL, 'Taip', 'STK Šilutes setas', 'Traksedžiai, Šiloju g. 15 arba Pamario pagrindine mokykla, Šilute Žalgirio g. 16'),
(73, 'Laukuvos STK', 'Neringa', 'Misevičiūtė', '10/18/2007', 'Giedrius', 'Kačinauskas', '10/9/2002', 'Linas', 'Petrauskas', '11/5/1999', 'Ovidijus', 'Misevičius', '9/15/1981', 'Algis', 'Brazauskas', '9/22/1970', 'Ovidijus Misevičius', 'Laukuva', 'Lietuva', '8 62 62 95 95', 'ova.ovidijus@gmail.com', '1', 'I Lyga', NULL, NULL, 8, '2019-01-01', NULL, NULL, NULL, 'Taip', NULL, 'Varnių 10 , Laukuva'),
(74, 'ETNA -2', 'Algirdas', 'Reliūga', '12/12/1954', 'Povilas', 'Kaubrys', '2/3/1966', 'Vytautas', 'Sagaitis', '12/5/1945', 'Milgidas', 'Kasinskas', '2/20/1955', 'Violeta', 'Reliūgė', NULL, 'Milgidas Kasinskas', 'Klaipėda', 'Lietuva', '861034505', 'milgidas@gmail.com', '1', 'II Lyga', NULL, NULL, 9, '2019-01-01', NULL, 'Marija', 'Mikalauskytė', 'Ne', NULL, NULL),
(75, 'Kontrolieriai', 'Orestas', 'Bredelis', '5/20/1998', 'Žygimantas', 'Trumpelis', '5/5/1999', 'Arūnas', 'Liutkus', '11/18/1999', 'Karolis', 'Mišeikis', '3/15/1995', NULL, NULL, NULL, 'Orestas Bredelis', 'Pakražantis', 'Lietuva', '860485310', 'orestas98@gmail.com', '1', 'II Lyga', NULL, NULL, 9, '2019-01-01', NULL, NULL, NULL, 'Ne', 'Nėra', 'Neturim'),
(76, 'VIDUKLĖS STK', 'VALDAS', 'ANTANAVIČIUS', '8/11/1966', 'OVIDIJUS', 'MILAŠAUSKAS', '4/26/1959', 'TOMAS', 'NAVICKAS', '4/11/1979', 'KLEMENSAS', 'KROLYS', '4/10/1951', 'Marius', 'Damavičius', '08/09/1982', 'VALDAS ANTANAVIČIUS', 'RASEINIŲ RAJ.', 'LIETUVA', '37069968380', 'trysmalunai@gmail.com', '1', 'II Lyga', NULL, '2019-05-20 12:02:11', 9, '2019-01-01', NULL, NULL, NULL, 'Ne', 'VIDUKLĖS STALO TENISO KLUBAS', NULL),
(77, 'Šilutė\"Varmas-NVŠ\"', 'Lukas', 'Raugevičius', '8/16/2006', 'Urtė', 'Pavernikaitė', '2009', 'Auksė', 'Arnašiūtė', '5/14/2004', 'Domantas', 'Kairys', '7/17/1996', 'Grąžina', 'Mikalauskienė', '8/26/1959', 'Jonas Piekautas', 'Šilutė', 'Lietuva', '860610974', 'jonaspiekautas@gmail.com', '1', 'II Lyga', NULL, NULL, 9, '2019-01-01', '4/14/1960', 'Sigita', 'Jakubauskienė', 'Taip', 'Šilutės stalo teniso klubas\"Varmas\"', 'Šilutė,km.Traksėdžiai,Šilojų g.15'),
(78, 'VSTA-Eisas', 'Viktoras', 'Dilinskis', '8/27/1992', 'Jevgenij', 'Jašin', '8/2/1961', 'Merius', 'Gedvilas', '7/11/1986', 'Aidas', 'Galkus', '3/13/1965', 'Gintaras', 'Nagrockas', NULL, 'Viktoras Dilinskis', 'Klaipėda', 'Lietuva', '862145675', 'vdilinskis@gmail.com', '1', 'II Lyga', NULL, NULL, 9, '2019-01-01', NULL, NULL, NULL, 'Ne', 'VSTA', NULL),
(79, 'Aurolėjus', 'Robertas', 'Bertašius', '11/4/1993', 'Antanas', 'Joskaudas', '2/27/1955', 'Rimantas', 'Valinskis', '7/28/1952', 'Henrikas', 'Beniušis', '6/26/1967', NULL, NULL, NULL, 'Kazys Stankus', 'Salantai', 'Lietuva', '867636385', 'k.stankui@gmail.com', '1', 'II Lyga', NULL, NULL, 9, '2019-01-01', NULL, NULL, NULL, 'Taip', 'Kretingos rajono stalo teniso klubas', 'Taikos g. 4, Salantai'),
(80, 'MAŽOJI RAKETĖ-3', 'Aleksandras', 'Norbutas', '3/5/2003', 'Jokūbas', 'Zaveckis', '1/22/2004', 'Tomas', 'Norgėla', '9/6/2005', 'Gintautas', 'Šepkauskas', '9/20/1986', NULL, NULL, NULL, 'Kęstutis Barauskas', 'Akmenė', 'Lietuva', '868411558', 'k.barauskas@gmail.com', '1', 'II Lyga', NULL, NULL, 9, '2019-01-01', NULL, NULL, NULL, 'Taip', 'Akmenės rajono stalo teniso klubas \"Mažoji raketė\"', 'Laižuvos g. 7, Akmenė'),
(81, 'STK Taurus -4', 'Vytautas', 'Mejeras', '10/3/1955', 'Artūras', 'Preikšaitis', '12/8/1959', 'Juozas', 'Kniukšta', '4/12/1957', 'Eugenijus', 'Kriaučiūnas', '10/11/1953', 'Vilija', 'Preikšaitienė', NULL, 'Artūras Preikšaitis', 'Tauragė', 'Lithuania', '865066830', 'arturas.preiksaitis@gmail.com', '1', 'II Lyga', NULL, NULL, 9, '2019-01-01', NULL, NULL, NULL, 'Taip', 'STK Taurus Tauragė', 'Aerodromo 7, Tauragė'),
(82, 'Šilutė\"Varmas-Pinta\"', 'Vincas', 'Agintas', '3/8/1966', 'Gedeminas', 'Valančius', '10/27/1962', 'Zigmantas', 'Tamošiūnas', '4/13/1949', NULL, NULL, NULL, NULL, NULL, NULL, 'Jonas Piekautas', 'Šilutė', 'Lietuva', '860610974', 'jonaspiekautas@gmail.com', '1', 'II Lyga', NULL, NULL, 9, '2019-01-01', NULL, NULL, NULL, 'Taip', 'Šilutės stalo teniso klubas\"Varmas\"', 'Šilutė,km.Traksėdžiai,Šilojų g.15'),
(83, '\"Venta\"', 'Algimantas', 'Davidauskas', '9/23/1955', 'Vidmantas', 'Joneikis', '11/3/1960', 'Arvydas', 'Stančius', '2/12/1965', 'Antanas', 'Monstavičius', '1/6/1966', 'Algis', 'Jarutis', '5/15/1972', 'Algimantas Davidauskas', 'Mažeikiai', 'Lietuva', '37068619930', 'algimantasdavidauskas@gmail.com', '1', 'II Lyga', NULL, '2019-04-29 15:44:05', 9, '2019-01-01', '1969-12-05', 'Aleksas', 'Žukauskas', 'Ne', 'Mažeikių sporto klubas \"Vikrusis feniksas\"', NULL),
(84, '\'\'Juknaičiai- Varmas\'\' (Šilutė)', 'Edmundas', 'Naujokas', '5/5/1960', 'Vytautas', 'Šaulys', '4/2/1952', 'Remigijus', 'Bučinskas', '5/27/1977', 'Vacys', 'Anuškevičius', '12/12/1953', NULL, NULL, NULL, 'Edmundas Naujokas', 'Juknaičiai, Šilutės r.', 'Lietuva', '861542508', 'edm.naujokas@gmail.com', '1', 'II Lyga', NULL, NULL, 9, '2019-01-01', NULL, NULL, NULL, 'Taip', '\'\'Varmas\'\'', 'Šilojų g. 15, Traksėdžiai'),
(85, 'STK TAURUS-2', 'Saulius', 'Kutkaitis', '2/22/1968', 'Danas', 'Šliazas', '4/11/1966', 'Tomas', 'Eičas', '4/10/1995', 'Kasparas', 'Vazinskas', '9/10/2002', NULL, NULL, NULL, 'Saulius Kutkaitis', 'Tauragė', 'Lietuva', '868645659', 'saulius.kutkaitis@gmaail.om', '1', 'II Lyga', NULL, NULL, 9, '2019-01-01', NULL, NULL, NULL, 'Taip', 'STK TAURUS', 'Aerodromo 7, Taurage'),
(86, 'Skuodo Gursta', 'Robertas', 'Mažrimas', '2/22/1965', 'Arvidas', 'Kazlauskas', '11/21/1960', 'Henrikaas', 'Kungys', '12/19/1966', 'Minutis', 'Buivydas', '4/16/1961', NULL, NULL, NULL, 'Robertas Mažrimas', 'Skuodas', 'Lietuva', '861690593', 'robertas.mazrimas@gmail.com', '1', 'II Lyga', NULL, NULL, 9, '2019-01-01', NULL, NULL, NULL, 'Ne', 'Gursta', NULL),
(87, 'SK \"Greitukai\"', 'Andrius', 'Černeckis', '10/31/1985', 'Nedas', 'Grigula', '7/8/2003', 'Rokas', 'Rapalavičius', '11/19/2005', 'Airingas', 'Baikauskis', '7/1/2004', NULL, 'Černeckis', '10/24/1984', 'Andrius Černeckis', 'Rietavas', 'Lietuva', '865091953', 'cerneckisa@gmail.com', '1', 'II Lyga', NULL, NULL, 9, '2019-01-01', NULL, NULL, NULL, 'Ne', 'SK \"Greitukai\"', 'Vatušių g. 22a - 3'),
(88, 'VSTA-JOMA', 'Lukas', 'Valančius', '1/5/2003', 'Adas', 'Vaitkus', '2/4/2007', 'Matas', 'Milius', '11/3/2005', 'Brilita', 'Jurevičiūtė', '8/24/2007', 'Deividas', 'Penkauskas', '10/24/1984', 'Tomas Kojelis', 'Klaipėda', 'Lietuva', '864136984', 'tomaskojelis21@gmail.com', '1', 'II Lyga', NULL, NULL, 9, '2019-01-01', NULL, NULL, NULL, 'Taip', 'VSTA', 'Taikos pr. 70'),
(89, 'Skuodo KKSC', 'Jonas', 'Šimkus', '2/26/1952', 'Algirdas', 'Lazdauskas', '4/11/1953', 'Antanas', 'Letukas', '5/11/1969', 'Gintautas', 'Šetkauskas', '9/19/1961', NULL, NULL, NULL, 'Jonas Šimkus', 'Skuodas', 'Lietuva', '', '', '', 'II Lyga', NULL, NULL, 9, '2019-01-01', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_players`
--
ALTER TABLE `t_players`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_players`
--
ALTER TABLE `t_players`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
