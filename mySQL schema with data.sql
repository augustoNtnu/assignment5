-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 03. Des, 2017 20:39 PM
-- Server-versjon: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task2`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `belongs_to`
--

CREATE TABLE `belongs_to` (
  `userName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `clubID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `season` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `totalDistance` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dataark for tabell `belongs_to`
--

INSERT INTO `belongs_to` (`userName`, `clubID`, `season`, `totalDistance`) VALUES
('andr_stee', 'asker-ski', '2015', 440),
('astr_amun', 'lhmr-ski', '2016', 761),
('bent_håla', 'asker-ski', '2015', 19),
('bent_svee', 'asker-ski', '2015', 125),
('beri_hans', 'asker-ski', '2015', 448),
('bjør_aase', 'asker-ski', '2015', 121),
('bjør_ali', 'asker-ski', '2015', 47),
('bjør_rønn', 'lhmr-ski', '2016', 56),
('bjør_sand', 'lhmr-ski', '2016', 449),
('dani_hamm', 'lhmr-ski', '2016', 61),
('elis_ruud', 'asker-ski', '2015', 341),
('elle_wiik', 'lhmr-ski', '2016', 35),
('erik_haal', 'lhmr-ski', '2016', 143),
('espe_haal', 'lhmr-ski', '2016', 2),
('fred_lien', 'asker-ski', '2015', 113),
('geir_herm', 'asker-ski', '2015', 891),
('gerd_svee', 'lhmr-ski', '2016', 196),
('håko_jens', 'lhmr-ski', '2016', 804),
('hann_stei', 'lhmr-ski', '2016', 14),
('hans_foss', 'asker-ski', '2015', 240),
('hans_foss', 'lhmr-ski', '2016', 276),
('hara_bakk', 'lhmr-ski', '2016', 16),
('heid_dani', 'asker-ski', '2015', 3),
('henr_bern', 'asker-ski', '2015', 799),
('hild_hass', 'lhmr-ski', '2016', 1),
('inge_simo', 'asker-ski', '2015', 3),
('kjel_fjel', 'asker-ski', '2015', 1),
('kris_hass1', 'lhmr-ski', '2016', 334),
('lind_lore', 'lhmr-ski', '2016', 551),
('liv_khan', 'asker-ski', '2015', 178),
('magn_sand', 'asker-ski', '2015', 200),
('mari_dahl', 'lhmr-ski', '2016', 492),
('mari_eile', 'lhmr-ski', '2016', 18),
('nils_bakk', 'lhmr-ski', '2016', 93),
('olav_eike', 'lhmr-ski', '2016', 2),
('olav_lien', 'asker-ski', '2015', 408),
('ole_borg', 'lhmr-ski', '2016', 314),
('øyvi_hell', 'asker-ski', '2015', 950),
('øyvi_kvam', 'asker-ski', '2015', 18),
('øyvi_vike', 'asker-ski', '2015', 20),
('rune_haga', 'asker-ski', '2015', 228),
('silj_mykl', 'asker-ski', '2015', 1),
('tom_jako', 'asker-ski', '2015', 18),
('tore_gulb', 'lhmr-ski', '2016', 342),
('tove_moe', 'asker-ski', '2015', 321),
('trin_kals', 'lhmr-ski', '2016', 22);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `skier`
--

CREATE TABLE `skier` (
  `userName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `firstName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `LastName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dateOfBirth` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dataark for tabell `skier`
--

INSERT INTO `skier` (`userName`, `firstName`, `LastName`, `dateOfBirth`) VALUES
('ande_andr', 'Anders', 'Andresen', 2004),
('ande_rønn', 'Anders', 'Rønning', 2001),
('andr_stee', 'Andreas', 'Steen', 2001),
('anna_næss', 'Anna', 'Næss', 2005),
('arne_anto', 'Arne', 'Antonsen', 2005),
('arne_inge', 'Arne', 'Ingebrigtsen', 2005),
('astr_amun', 'Astrid', 'Amundsen', 2001),
('astr_sven', 'Astrid', 'Svendsen', 2008),
('bent_håla', 'Bente', 'Håland', 2009),
('bent_svee', 'Bente', 'Sveen', 2003),
('beri_hans', 'Berit', 'Hanssen', 2003),
('bjør_aase', 'Bjørn', 'Aasen', 2006),
('bjør_ali', 'Bjørn', 'Ali', 2008),
('bjør_rønn', 'Bjørg', 'Rønningen', 2009),
('bjør_sand', 'Bjørn', 'Sandvik', 1997),
('bror_kals', 'Bror', 'Kalstad', 2006),
('bror_﻿mos', 'Bror', 'Mostuen', 2005),
('cami_erik', 'Camilla', 'Eriksen', 2005),
('dani_hamm', 'Daniel', 'Hammer', 2000),
('eina_nygå', 'Einar', 'Nygård', 2009),
('elis_ruud', 'Elisabeth', 'Ruud', 2003),
('elle_wiik', 'Ellen', 'Wiik', 2004),
('erik_haal', 'Erik', 'Haaland', 2007),
('erik_lien', 'Erik', 'Lien', 2008),
('erik_pete', 'Erik', 'Petersen', 2002),
('espe_egel', 'Espen', 'Egeland', 2005),
('espe_haal', 'Espen', 'Haaland', 2004),
('eva_kvam', 'Eva', 'Kvam', 2000),
('fred_lien', 'Fredrik', 'Lien', 2000),
('frod_mads', 'Frode', 'Madsen', 2008),
('frod_rønn', 'Frode', 'Rønningen', 2005),
('geir_birk', 'Geir', 'Birkeland', 2010),
('geir_herm', 'Geir', 'Hermansen', 2003),
('gerd_svee', 'Gerd', 'Sveen', 2001),
('gunn_berg', 'Gunnar', 'Berge', 2009),
('guri_nord', 'Guri', 'Nordli', 2003),
('håko_jens', 'Håkon', 'Jensen', 2005),
('﻿hal_﻿mos', 'Halvor', 'Mostuen', 2009),
('hann_stei', 'Hanno', 'Steiro', 2005),
('hans_foss', 'Hans', 'Foss', 1998),
('hans_løke', 'Hans', 'Løken', 2005),
('hara_bakk', 'Harald', 'Bakken', 2002),
('heid_dani', 'Heidi', 'Danielsen', 2005),
('helg_brei', 'Helge', 'Breivik', 2006),
('helg_toll', 'Helge', 'Tollefsen', 2003),
('henr_bern', 'Henrik', 'Berntsen', 2003),
('henr_dale', 'Henrik', 'Dalen', 2005),
('henr_lore', 'Henrik', 'Lorentzen', 2006),
('hild_hass', 'Hilde', 'Hassan', 2007),
('ida_mykl', 'Ida', 'Myklebust', 2001),
('idar_kals', 'Idar', 'Kalstad', 2007),
('idar_kals1', 'Idar', 'Kalstad', 2002),
('inge_simo', 'Inger', 'Simonsen', 2004),
('inge_thor', 'Inger', 'Thorsen', 2006),
('ingr_edva', 'Ingrid', 'Edvardsen', 2001),
('﻿jan_tang', 'Jan', 'Tangen', 2007),
('juli_ande', 'Julie', 'Andersson', 2003),
('kari_thor', 'Karin', 'Thorsen', 2002),
('kjel_fjel', 'Kjell', 'Fjeld', 2004),
('knut_bye', 'Knut', 'Bye', 2006),
('kris_even', 'Kristian', 'Evensen', 2004),
('kris_hass', 'Kristin', 'Hassan', 2003),
('kris_hass1', 'Kristian', 'Hassan', 2004),
('lind_lore', 'Linda', 'Lorentzen', 2004),
('liv_khan', 'Liv', 'Khan', 2006),
('magn_sand', 'Magnus', 'Sande', 2003),
('mari_bye', 'Marit', 'Bye', 2003),
('mari_dahl', 'Marit', 'Dahl', 2004),
('mari_eile', 'Marius', 'Eilertsen', 2000),
('mari_stra', 'Marius', 'Strand', 2005),
('mart_halv', 'Martin', 'Halvorsen', 2002),
('mona_lie', 'Mona', 'Lie', 2004),
('mort_iver', 'Morten', 'Iversen', 2003),
('nils_bakk', 'Nils', 'Bakke', 2003),
('nils_knud', 'Nils', 'Knudsen', 2006),
('odd_moha', 'Odd', 'Mohamed', 2005),
('olav_bråt', 'Olav', 'Bråthen', 2000),
('olav_eike', 'Olav', 'Eikeland', 2008),
('olav_hell', 'Olav', 'Helle', 2007),
('olav_lien', 'Olav', 'Lien', 2002),
('ole_borg', 'Ole', 'Borge', 2002),
('øyst_aase', 'Øystein', 'Aasen', 2007),
('øyst_lore', 'Øystein', 'Lorentzen', 2004),
('øyst_sæth', 'Øystein', 'Sæther', 2000),
('øyvi_hell', 'Øyvind', 'Helle', 2000),
('øyvi_jens', 'Øyvind', 'Jenssen', 1999),
('øyvi_kvam', 'Øyvind', 'Kvam', 2000),
('øyvi_vike', 'Øyvind', 'Viken', 2004),
('reid_hamr', 'Reidun', 'Hamre', 2008),
('rolf_wiik', 'Rolf', 'Wiik', 2002),
('rune_haga', 'Rune', 'Haga', 2005),
('﻿rut_﻿mos', 'Ruth', 'Mostuen', 2002),
('﻿rut_nord', 'Ruth', 'Nordli', 2006),
('sara_okst', 'Sarah', 'Okstad', 2003),
('silj_mykl', 'Silje', 'Myklebust', 2007),
('sive_nord', 'Sivert', 'Nordli', 2009),
('solv_solb', 'Solveig', 'Solbakken', 2004),
('stia_andr', 'Stian', 'Andreassen', 2004),
('stia_haug', 'Stian', 'Haugland', 2002),
('stia_henr', 'Stian', 'Henriksen', 2001),
('terj_mort', 'Terje', 'Mortensen', 2003),
('thom_inge', 'Thomas', 'Ingebrigtsen', 2006),
('tom_bøe', 'Tom', 'Bøe', 2008),
('tom_bråt', 'Tom', 'Bråthen', 2008),
('tom_jako', 'Tom', 'Jakobsen', 2002),
('tor_dale', 'Tor', 'Dalen', 2005),
('tore_gulb', 'Tore', 'Gulbrandsen', 2005),
('tore_svee', 'Tore', 'Sveen', 2001),
('tove_moe', 'Tove', 'Moe', 2002),
('trin_kals', 'Trine', 'Kalstad', 2009),
('tron_kris', 'Trond', 'Kristensen', 2006),
('tron_moen', 'Trond', 'Moen', 2004);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `skiing_club`
--

CREATE TABLE `skiing_club` (
  `ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `clubName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `City` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Country` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dataark for tabell `skiing_club`
--

INSERT INTO `skiing_club` (`ID`, `clubName`, `City`, `Country`) VALUES
('asker-ski', 'Asker skiklubb', 'Asker', 'Akershus'),
('lhmr-ski', 'Lillehammer Skiklub', 'Lillehammer', 'Oppland'),
('skiklubben', 'Trondhjems skiklub', 'Trondheim', 'Sør-Trøndelag'),
('vindil', 'Vind Idrettslag', 'Gjøvik', 'Oppland');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `belongs_to`
--
ALTER TABLE `belongs_to`
  ADD PRIMARY KEY (`userName`,`clubID`),
  ADD KEY `clubID` (`clubID`);

--
-- Indexes for table `skier`
--
ALTER TABLE `skier`
  ADD PRIMARY KEY (`userName`);

--
-- Indexes for table `skiing_club`
--
ALTER TABLE `skiing_club`
  ADD PRIMARY KEY (`ID`);

--
-- Begrensninger for dumpede tabeller
--

--
-- Begrensninger for tabell `belongs_to`
--
ALTER TABLE `belongs_to`
  ADD CONSTRAINT `belongs_to_ibfk_1` FOREIGN KEY (`userName`) REFERENCES `skier` (`userName`) ON UPDATE CASCADE,
  ADD CONSTRAINT `belongs_to_ibfk_2` FOREIGN KEY (`clubID`) REFERENCES `skiing_club` (`ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
