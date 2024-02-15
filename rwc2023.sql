-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 11:26 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rwc2023`
--

DROP DATABASE IF EXISTS `rwc2023`;

CREATE DATABASE `rwc2023`;

USE `rwc2023`;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `abbrev` varchar(5) NOT NULL,
  `team_id` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `abbrev`, `team_id`) VALUES
('59738', 'Alex Mitchell', 'ENG', '34'),
('34189', 'Ben Youngs', 'ENG', '34'),
('29159', 'Danny Care', 'ENG', '34'),
('38906', 'Jonny May', 'ENG', '34'),
('43573', 'Owen Farrell', 'ENG', '34'),
('56794', 'Max Malins', 'ENG', '34'),
('62562', 'Ollie Lawrence', 'ENG', '34'),
('55598', 'Joe Marchant', 'ENG', '34'),
('59924', 'Marcus Smith', 'ENG', '34'),
('44193', 'Manu Tuilagi', 'ENG', '34'),
('73172', 'Henry Arundell', 'ENG', '34'),
('68931', 'Freddie Steward', 'ENG', '34'),
('43571', 'Elliot Daly', 'ENG', '34'),
('60898', 'Sam Underhill', 'ENG', '34'),
('43574', 'George Ford', 'ENG', '34'),
('50354', 'Jack Walker', 'ENG', '34'),
('3174', '  Theo Dan', 'ENG', '34'),
('36524', 'Jamie George', 'ENG', '34'),
('69817', 'David Ribbans', 'ENG', '34'),
('55596', 'Lewis Ludlam', 'ENG', '34'),
('46112', 'Billy Vunipola', 'ENG', '34'),
('59733', 'Ben Earl', 'ENG', '34'),
('59731', 'Tom Curry', 'ENG', '34'),
('34184', 'Courtney Lawes', 'ENG', '34'),
('50344', 'Maro Itoje', 'ENG', '34'),
('72931', 'Ollie Chessum', 'ENG', '34'),
('68917', 'George Martin', 'ENG', '34'),
('56808', 'Will Stuart', 'ENG', '34'),
('29161', 'Dan Cole', 'ENG', '34'),
('65787', 'Bevan Rodd', 'ENG', '34'),
('55592', 'Ellis Genge', 'ENG', '34'),
('45662', 'Kyle Sinckler', 'ENG', '34'),
('36527', 'Joe Marler', 'ENG', '34'),
('50482', 'Ross Byrne', 'IRL', '36'),
('26541', 'Johnny Sexton', 'IRL', '36'),
('69045', 'Jack Crowley', 'IRL', '36'),
('66511', 'Hugo Keenan', 'IRL', '36'),
('65664', 'Craig Casey', 'IRL', '36'),
('36654', 'Conor Murray', 'IRL', '36'),
('47498', 'Jamison Gibson-Park', 'IRL', '36'),
('45276', 'Bundee Aki', 'IRL', '36'),
('50499', 'Garry Ringrose', 'IRL', '36'),
('50769', 'Stuart McCloskey', 'IRL', '36'),
('47646', 'Robbie Henshaw', 'IRL', '36'),
('62927', 'Jimmy O\'Brien', 'IRL', '36'),
('28999', 'Keith Earls', 'IRL', '36'),
('63165', 'Mack Hansen', 'IRL', '36'),
('42642', 'James Lowe', 'IRL', '36'),
('59777', 'Ronan Kelleher', 'IRL', '36'),
('63781', 'Dan Sheehan', 'IRL', '36'),
('49063', 'Rob Herring', 'IRL', '36'),
('45851', 'Jack Conan', 'IRL', '36'),
('59773', 'Caelan Doris', 'IRL', '36'),
('65681', 'Ryan Baird', 'IRL', '36'),
('45944', 'Josh van der Flier', 'IRL', '36'),
('36658', 'Peter O\'Mahony', 'IRL', '36'),
('45848', 'Tadhg Beirne', 'IRL', '36'),
('43494', 'Iain Henderson', 'IRL', '36'),
('69056', 'Joe McCarthy', 'IRL', '36'),
('56907', 'James Ryan', 'IRL', '36'),
('43490', 'Tadhg Furlong', 'IRL', '36'),
('47365', 'Dave Kilcoyne', 'IRL', '36'),
('55701', 'Jeremy Loughman', 'IRL', '36'),
('62373', 'Tom O\'Toole', 'IRL', '36'),
('55709', 'Andrew Porter', 'IRL', '36'),
('43486', 'Finlay Bealham', 'IRL', '36'),
('57850', 'Manie Libbok', 'RSA', '39'),
('49080', 'Willie Le Roux', 'RSA', '39'),
('56104', 'Faf de Klerk', 'RSA', '39'),
('66738', 'Jaden Hendrikse', 'RSA', '39'),
('53956', 'Cobus Reinach', 'RSA', '39'),
('71724', 'Grant Williams', 'RSA', '39'),
('50446', 'Andre Esterhuizen', 'RSA', '39'),
('49029', 'Jesse Kriel', 'RSA', '39'),
('50681', 'Damian de Allende', 'RSA', '39'),
('46392', 'Handre Pollard', 'RSA', '39'),
('58707', 'Lukhanyo Am', 'RSA', '39'),
('60620', 'Damian Willemse', 'RSA', '39'),
('71486', 'Canan Moodie', 'RSA', '39'),
('48565', 'Cheslin Kolbe', 'RSA', '39'),
('66060', 'Kurt-Lee Arendse', 'RSA', '39'),
('29658', 'Deon Fourie', 'RSA', '39'),
('43544', 'Mbongeni Mbonambi', 'RSA', '39'),
('71061', 'Jasper Wiese', 'RSA', '39'),
('37137', 'Duane Vermeulen', 'RSA', '39'),
('48550', 'Kwagga Smith', 'RSA', '39'),
('39774', 'Siya Kolisi', 'RSA', '39'),
('64590', 'Marco van Staden', 'RSA', '39'),
('45550', 'Pieter-Steph Du Toit', 'RSA', '39'),
('55747', 'RG Snyman', 'RSA', '39'),
('67415', 'Jean Kleyn', 'RSA', '39'),
('43559', 'Eben Etzebeth', 'RSA', '39'),
('58426', 'Franco Mostert', 'RSA', '39'),
('45532', 'Marvin Orie', 'RSA', '39'),
('47012', 'Frans Malherbe', 'RSA', '39'),
('55744', 'Ox Nche', 'RSA', '39'),
('49081', 'Trevor Nyakane', 'RSA', '39'),
('49037', 'Vincent Koch', 'RSA', '39'),
('45555', 'Steven Kitshoff', 'RSA', '39'),
('50413', 'Richie Mounga', 'NZL', '37'),
('42625', 'Beauden Barrett', 'NZL', '37'),
('54731', 'Rieko Ioane', 'NZL', '37'),
('57717', 'Jordie Barrett', 'NZL', '37'),
('50409', 'Anton Lienert-Brown', 'NZL', '37'),
('50410', 'Damian McKenzie', 'NZL', '37'),
('61112', 'Finlay Christie', 'NZL', '37'),
('34028', 'Aaron Smith', 'NZL', '37'),
('75794', 'Cam Roigard', 'NZL', '37'),
('50765', 'David Havili', 'NZL', '37'),
('60537', 'Will Jordan', 'NZL', '37'),
('60542', 'Caleb Clarke', 'NZL', '37'),
('63205', 'Leicester Faingaanuku', 'NZL', '37'),
('75620', 'Mark Telea', 'NZL', '37'),
('42575', 'Codie Taylor', 'NZL', '37'),
('71869', 'Samisoni Taukeiaho', 'NZL', '37'),
('29607', 'Dane Coles', 'NZL', '37'),
('47998', 'Ardie Savea', 'NZL', '37'),
('71646', 'Ethan Blackadder', 'NZL', '37'),
('57734', 'Dalton Papalii', 'NZL', '37'),
('57723', 'Luke Jacobson', 'NZL', '37'),
('50136', 'Shannon Frizell', 'NZL', '37'),
('42605', 'Sam Cane', 'NZL', '37'),
('32482', 'Samuel Whitelock', 'NZL', '37'),
('43512', 'Brodie Retallick', 'NZL', '37'),
('48044', 'Scott Barrett', 'NZL', '37'),
('66940', 'Tupou Vaai', 'NZL', '37'),
('55796', 'Tyrel Lomax', 'NZL', '37'),
('56100', 'Nepo Laulala', 'NZL', '37'),
('43596', 'Ofa Tuungafasi', 'NZL', '37'),
('71786', 'Ethan de Groot', 'NZL', '37'),
('66918', 'Fletcher Newell', 'NZL', '37'),
('66931', 'Tamaiti Williams', 'NZL', '37');

-- --------------------------------------------------------

--
-- Table structure for table `player_points`
--

CREATE TABLE `player_points` (
  `player_id` varchar(10) NOT NULL,
  `player_name` varchar(50) NOT NULL,
  `team_id` varchar(3) NOT NULL,
  `team_name` varchar(50) NOT NULL,
  `abbrev` varchar(5) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player_points`
--

INSERT INTO `player_points` (`player_id`, `player_name`, `team_id`, `team_name`, `abbrev`, `points`) VALUES
('43573', 'Owen Farrell', '34', 'England', 'ENG', 75),
('55625', 'Thomas Ramos', '42', 'France', 'FRA', 74),
('48640', 'Emiliano Boffelli', '40', 'Argentina', 'ARG', 67),
('26541', 'Johnny Sexton', '36', 'Ireland', 'IRE', 58),
('50413', 'Richie Mo\'unga', '37', 'New Zealand', 'NZL', 56),
('50410', 'Damian McKenzie', '37', 'New Zealand', 'NZL', 53),
('46008', 'Rikiya Matsuda', '49', 'Japan', 'JPN', 46),
('66844', 'Ben Donaldson', '38', 'Australia', 'AUS', 45),
('43574', 'George Ford', '34', 'England', 'ENG', 41),
('60537', 'Will Jordan', '37', 'New Zealand', 'NZL', 40),
('32114', 'Nicolas Sanchez', '40', 'Argentina', 'ARG', 39),
('49561', 'Tommaso Allan', '41', 'Italy', 'ITA', 34),
('46392', 'Handre Pollard', '39', 'South Africa', 'RSA', 33),
('57371', 'Frank Lomani', '46', 'Fiji', 'FIJ', 32),
('74259', 'William Havili', '47', 'Tonga', 'TGA', 31),
('55623', 'Damian Penaud', '42', 'France', 'FRA', 30),
('29273', 'Christian Leali\'ifano', '45', 'Samoa', 'SAM', 28),
('71755', 'Melvyn Jaminet', '42', 'France', 'FRA', 27),
('65669', 'Ben Healy', '35', 'Scotland', 'SCO', 27),
('33997', 'Dan Biggar', '33', 'Wales', 'WAL', 26),
('63205', 'Leicester Fainga\'anuku', '37', 'New Zealand', 'NZL', 25),
('73172', 'Henry Arundell', '34', 'England', 'ENG', 25),
('45276', 'Bundee Aki', '36', 'Ireland', 'IRE', 25),
('68956', 'Louis Rees-Zammit', '33', 'Wales', 'WAL', 25),
('56855', 'Darcy Graham', '35', 'Scotland', 'SCO', 25),
('47400', 'Samuel Marques', '44', 'Portugal', 'POR', 24),
('43506', 'Gareth Anscombe', '33', 'Wales', 'WAL', 23),
('57850', 'Manie Libbok', '39', 'South Africa', 'RSA', 22),
('be4c4091-1', 'Tiaan Swanepoel', '58', 'Namibia', 'NAM', 22),
('74043', 'Louis Bielle-Biarrey', '42', 'France', 'FRA', 20),
('34028', 'Aaron Smith', '37', 'New Zealand', 'NZL', 20),
('53956', 'Cobus Reinach', '39', 'South Africa', 'RSA', 20),
('62276', 'Simione Kuruvoli', '46', 'Fiji', 'FIJ', 18),
('45928', 'Finn Russell', '35', 'Scotland', 'SCO', 17),
('75794', 'Cam Roigard', '37', 'New Zealand', 'NZL', 15),
('66511', 'Hugo Keenan', '36', 'Ireland', 'IRE', 15),
('88ba92ab-8', 'Amato Fakatava', '49', 'Japan', 'JPN', 15),
('56995', 'Peato Mauvaka', '42', 'France', 'FRA', 15),
('65575', 'Sam Costelow', '33', 'Wales', 'WAL', 15),
('72537', 'Solomone Kata', '47', 'Tonga', 'TGA', 15),
('60424', 'Sama Malolo', '45', 'Samoa', 'SAM', 15),
('60865', 'Makazole Mapimpi', '39', 'South Africa', 'RSA', 15),
('60620', 'Damian Willemse', '39', 'South Africa', 'RSA', 15),
('64279', 'Mateo Carreras', '40', 'Argentina', 'ARG', 15),
('3174b222-6', 'Theo Dan', '34', 'England', 'ENG', 15),
('66622', 'Raffaele Storti', '44', 'Portugal', 'POR', 15),
('75620', 'Mark Tele\'a', '37', 'New Zealand', 'NZL', 15),
('47998', 'Ardie Savea', '37', 'New Zealand', 'NZL', 15),
('45848', 'Tadhg Beirne', '36', 'Ireland', 'IRE', 15),
('64464', 'Baltazar Amaya', '68', 'Uruguay', 'URU', 15),
('60461', 'Santiago Carreras', '40', 'Argentina', 'ARG', 14),
('57717', 'Jordie Barrett', '37', 'New Zealand', 'NZL', 13),
('55335', 'Felipe Etcheverry', '68', 'Uruguay', 'URU', 13),
('69848', 'Luka Matkava', '720', 'Georgia', 'GEO', 13),
('69045', 'Jack Crowley', '36', 'Ireland', 'IRE', 11),
('69735', 'Davit Niniashvili', '720', 'Georgia', 'GEO', 11),
('48670', 'Ali Price', '35', 'Scotland', 'SCO', 10),
('62457', 'Rory Darge', '35', 'Scotland', 'SCO', 10),
('50409', 'Anton Lienert-Brown', '37', 'New Zealand', 'NZL', 10),
('60519', 'Tedo Abzhandadze', '720', 'Georgia', 'GEO', 10),
('48565', 'Cheslin Kolbe', '39', 'South Africa', 'RSA', 10),
('47835', 'Nigel Ah-Wong', '45', 'Samoa', 'SAM', 10),
('60224', 'Jone Naikabula', '49', 'Japan', 'JPN', 10),
('50136', 'Shannon Frizell', '37', 'New Zealand', 'NZL', 10),
('66843', 'Mark Nawaqanitawase', '38', 'Australia', 'AUS', 10),
('29607', 'Dane Coles', '37', 'New Zealand', 'NZL', 10),
('49080', 'Willie Le Roux', '39', 'South Africa', 'RSA', 10),
('59924', 'Marcus Smith', '34', 'England', 'ENG', 10),
('71724', 'Grant Williams', '39', 'South Africa', 'RSA', 10),
('54574', 'Charles Ollivon', '42', 'France', 'FRA', 10),
('66770', 'Juan Martin Gonzalez', '40', 'Argentina', 'ARG', 10),
('48741', 'Cyril Baille', '42', 'France', 'FRA', 10),
('48443', 'Nicolas Freitas', '68', 'Uruguay', 'URU', 10),
('57734', 'Dalton Papali\'i', '37', 'New Zealand', 'NZL', 10),
('69013', 'Lorenzo Cannone', '41', 'Italy', 'ITA', 10),
('64500', 'Gerswin Mouton', '58', 'Namibia', 'NAM', 10),
('66060', 'Kurt-Lee Arendse', '39', 'South Africa', 'RSA', 10),
('53366', 'Josua Tuisova', '46', 'Fiji', 'FIJ', 10),
('43516', 'Ben Tameifuna', '47', 'Tonga', 'TGA', 10),
('46441', 'Waisea Nayacalevu', '46', 'Fiji', 'FIJ', 10),
('55598', 'Joe Marchant', '34', 'England', 'ENG', 10),
('69902', 'Montanna Ioane', '41', 'Italy', 'ITA', 10),
('48797', 'Mesake Doge', '46', 'Fiji', 'FIJ', 10),
('42642', 'James Lowe', '36', 'Ireland', 'IRE', 10),
('29658', 'Deon Fourie', '39', 'South Africa', 'RSA', 10),
('63165', 'Mack Hansen', '36', 'Ireland', 'IRE', 10),
('65572', 'Jac Morgan', '33', 'Wales', 'WAL', 10),
('34085', 'Michael Leitch', '49', 'Japan', 'JPN', 10),
('67092', 'Ange Capuozzo', '41', 'Italy', 'ITA', 10),
('47498', 'Jamison Gibson-Park', '36', 'Ireland', 'IRE', 10),
('36658', 'Peter O\'Mahony', '36', 'Ireland', 'IRE', 10),
('45699', 'Jonathan Danty', '42', 'France', 'FRA', 10),
('65778', 'Yoram Moefana', '42', 'France', 'FRA', 10),
('55791', 'Duncan Paia\'aua', '45', 'Samoa', 'SAM', 10),
('65734', 'Paolo Garbisi', '41', 'Italy', 'ITA', 10),
('65841', 'Manuel Zuliani', '41', 'Italy', 'ITA', 10),
('42052', 'George North', '33', 'Wales', 'WAL', 10),
('49063', 'Rob Herring', '36', 'Ireland', 'IRE', 10),
('42625', 'Beauden Barrett', '37', 'New Zealand', 'NZL', 9),
('72926', 'Alin Conache', '52', 'Romania', 'ROU', 9);

-- --------------------------------------------------------

--
-- Table structure for table `player_tackles`
--

CREATE TABLE `player_tackles` (
  `player_id` varchar(10) NOT NULL,
  `player_name` varchar(50) NOT NULL,
  `team_id` varchar(3) NOT NULL,
  `team_name` varchar(50) NOT NULL,
  `abbrev` varchar(5) NOT NULL,
  `tackles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player_tackles`
--

INSERT INTO `player_tackles` (`player_id`, `player_name`, `team_id`, `team_name`, `abbrev`, `tackles`) VALUES
('56924', 'Marcos Kremer', '40', 'Argentina', 'ARG', 92),
('59733', 'Ben Earl', '34', 'England', 'ENG', 80),
('58426', 'Franco Mostert', '39', 'South Africa', 'RSA', 73),
('74256', 'Sione Talitui', '47', 'Tonga', 'TGA', 67),
('45550', 'Pieter-Steph Du Toit', '39', 'South Africa', 'RSA', 66),
('68955', 'Will Rowlands', '33', 'Wales', 'WAL', 65),
('74579', 'Nicolas Martins', '44', 'Portugal', 'POR', 63),
('60516', 'Tornike Jalagonia', '720', 'Georgia', 'GEO', 62),
('50344', 'Maro Itoje', '34', 'England', 'ENG', 61),
('65572', 'Jac Morgan', '33', 'Wales', 'WAL', 61),
('59773', 'Caelan Doris', '36', 'Ireland', 'IRE', 61),
('34085', 'Michael Leitch', '49', 'Japan', 'JPN', 59),
('48628', 'Julian Montoya', '40', 'Argentina', 'ARG', 59),
('59731', 'Tom Curry', '34', 'England', 'ENG', 58),
('39774', 'Siya Kolisi', '39', 'South Africa', 'RSA', 58),
('66770', 'Juan Martin Gonzalez', '40', 'Argentina', 'ARG', 58),
('71565', 'Jack Cornelsen', '49', 'Japan', 'JPN', 57),
('47998', 'Ardie Savea', '37', 'New Zealand', 'NZL', 56),
('45848', 'Tadhg Beirne', '36', 'Ireland', 'IRE', 56),
('42605', 'Sam Cane', '37', 'New Zealand', 'NZL', 55),
('45944', 'Josh van der Flier', '36', 'Ireland', 'IRE', 55),
('36524', 'Jamie George', '34', 'England', 'ENG', 54),
('56053', 'Sebastian Negri', '41', 'Italy', 'ITA', 54),
('42575', 'Codie Taylor', '37', 'New Zealand', 'NZL', 54),
('48044', 'Scott Barrett', '37', 'New Zealand', 'NZL', 53),
('62868', 'Martin Sigren', '708', 'Chile', 'CHI', 52),
('72931', 'Ollie Chessum', '34', 'England', 'ENG', 52),
('60008', 'Michele Lamaro', '41', 'Italy', 'ITA', 52),
('62212', 'Adrian Motoc', '52', 'Romania', 'ROU', 51),
('43559', 'Eben Etzebeth', '39', 'South Africa', 'RSA', 51),
('49079', 'Pieter Labuschagne', '49', 'Japan', 'JPN', 51),
('67530', 'José Madeira', '44', 'Portugal', 'POR', 51),
('57717', 'Jordie Barrett', '37', 'New Zealand', 'NZL', 50),
('63868', 'Aaron Wainwright', '33', 'Wales', 'WAL', 50),
('47916', 'Kazuki Himeno', '49', 'Japan', 'JPN', 49),
('29658', 'Deon Fourie', '39', 'South Africa', 'RSA', 49),
('45611', 'Gareth Thomas', '33', 'Wales', 'WAL', 49),
('36544', 'Keita Inagaki', '49', 'Japan', 'JPN', 48),
('66763', 'Thomas Gallo', '40', 'Argentina', 'ARG', 48),
('b1a871c6-1', 'Tom Hooper', '38', 'Australia', 'AUS', 48),
('45555', 'Steven Kitshoff', '39', 'South Africa', 'RSA', 48),
('69013', 'Lorenzo Cannone', '41', 'Italy', 'ITA', 48),
('47012', 'Frans Malherbe', '39', 'South Africa', 'RSA', 48),
('36658', 'Peter O\'Mahony', '36', 'Ireland', 'IRE', 47),
('88ba92ab-8', 'Amato Fakatava', '49', 'Japan', 'JPN', 47),
('54574', 'Charles Ollivon', '42', 'France', 'FRA', 47),
('50353', 'Nick Tompkins', '33', 'Wales', 'WAL', 47),
('28439', 'Shota Horie', '49', 'Japan', 'JPN', 47),
('48774', 'Francois Cros', '42', 'France', 'FRA', 47),
('32482', 'Samuel Whitelock', '37', 'New Zealand', 'NZL', 46),
('55680', 'Adam Beard', '33', 'Wales', 'WAL', 46),
('60537', 'Will Jordan', '37', 'New Zealand', 'NZL', 45),
('67195', 'Raimundo Martinez', '708', 'Chile', 'CHI', 44),
('43573', 'Owen Farrell', '34', 'England', 'ENG', 43),
('50681', 'Damian de Allende', '39', 'South Africa', 'RSA', 43),
('49570', 'Levani Botia', '46', 'Fiji', 'FIJ', 43),
('43604', 'Pita Ahki', '47', 'Tonga', 'TGA', 43),
('218e6c78-1', 'David Wallis', '44', 'Portugal', 'POR', 43),
('62337', 'Tommy Reffell', '33', 'Wales', 'WAL', 42),
('38923', 'Taulupe Faletau', '33', 'Wales', 'WAL', 42),
('50391', 'Federico Ruzza', '41', 'Italy', 'ITA', 41),
('56060', 'Nodar Cheishvili', '720', 'Georgia', 'GEO', 40),
('50136', 'Shannon Frizell', '37', 'New Zealand', 'NZL', 40),
('37137', 'Duane Vermeulen', '39', 'South Africa', 'RSA', 40),
('69115', 'Matias Garafulic', '708', 'Chile', 'CHI', 40),
('66905', 'Isoa Nasilasila', '46', 'Fiji', 'FIJ', 40),
('48633', 'Guido Petti Pagadizabal', '40', 'Argentina', 'ARG', 40),
('62457', 'Rory Darge', '35', 'Scotland', 'SCO', 39),
('72518', 'Thibaud Flament', '42', 'France', 'FRA', 39),
('56108', 'Tomas Francis', '33', 'Wales', 'WAL', 39),
('45275', 'Fritz Lee', '45', 'Samoa', 'SAM', 39),
('61426', 'Prince Gaoseb', '58', 'Namibia', 'NAM', 38),
('54731', 'Rieko Ioane', '37', 'New Zealand', 'NZL', 38),
('62489', 'Mikheil Gachechiladze', '720', 'Georgia', 'GEO', 38),
('63164', 'Fraser McReight', '38', 'Australia', 'AUS', 38),
('69848', 'Luka Matkava', '720', 'Georgia', 'GEO', 38),
('71376', 'Dafydd Jenkins', '33', 'Wales', 'WAL', 37),
('65538', 'Gregory Alldritt', '42', 'France', 'FRA', 37),
('50000', 'Paula Ngauamo', '47', 'Tonga', 'TGA', 37),
('60450', 'Rob Valetini', '38', 'Australia', 'AUS', 36),
('29161', 'Dan Cole', '34', 'England', 'ENG', 36),
('73193', 'Steevy Cerqueira', '44', 'Portugal', 'POR', 36),
('43544', 'Mbongeni Mbonambi', '39', 'South Africa', 'RSA', 36),
('50154', 'German Kessler', '68', 'Uruguay', 'URU', 36),
('48426', 'Tomás Appleton', '44', 'Portugal', 'POR', 36),
('44193', 'Manu Tuilagi', '34', 'England', 'ENG', 36),
('57734', 'Dalton Papali\'i', '37', 'New Zealand', 'NZL', 36),
('49029', 'Jesse Kriel', '39', 'South Africa', 'RSA', 35),
('71786', 'Ethan de Groot', '37', 'New Zealand', 'NZL', 35),
('43494', 'Iain Henderson', '36', 'Ireland', 'IRE', 35),
('61029', 'Richard Hardwick', '58', 'Namibia', 'NAM', 35),
('59342', 'Cristian Chirica', '52', 'Romania', 'ROU', 35),
('43763', 'Rafael Simões', '44', 'Portugal', 'POR', 35),
('40057', 'Konstantine Mikautadze', '720', 'Georgia', 'GEO', 35),
('61374', 'Domingo Saavedra', '708', 'Chile', 'CHI', 35),
('26541', 'Johnny Sexton', '36', 'Ireland', 'IRE', 35),
('55744', 'Ox Nche', '39', 'South Africa', 'RSA', 34),
('55709', 'Andrew Porter', '36', 'Ireland', 'IRE', 34),
('55796', 'Tyrel Lomax', '37', 'New Zealand', 'NZL', 34),
('62623', 'Manuel Ardao', '68', 'Uruguay', 'URU', 34);

-- --------------------------------------------------------

--
-- Table structure for table `pools`
--

CREATE TABLE `pools` (
  `pool` varchar(5) NOT NULL,
  `position` varchar(5) NOT NULL,
  `team_name` varchar(50) NOT NULL,
  `played` int(11) NOT NULL,
  `w` int(11) NOT NULL,
  `d` int(11) NOT NULL,
  `l` int(11) NOT NULL,
  `pf` int(11) NOT NULL,
  `pa` int(11) NOT NULL,
  `pd` int(11) NOT NULL,
  `tf` int(11) NOT NULL,
  `ta` int(11) NOT NULL,
  `bonus` int(11) NOT NULL,
  `pts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pools`
--

INSERT INTO `pools` (`pool`, `position`, `team_name`, `played`, `w`, `d`, `l`, `pf`, `pa`, `pd`, `tf`, `ta`, `bonus`, `pts`) VALUES
('A', '1', 'France', 4, 4, 0, 0, 210, 32, 178, 27, 5, 2, 18),
('A', '2', 'New Zealand', 4, 3, 0, 1, 253, 47, 206, 38, 4, 3, 15),
('A', '3', 'Italy', 4, 2, 0, 2, 114, 181, -67, 15, 25, 2, 10),
('A', '4', 'Uruguay', 4, 1, 0, 3, 65, 164, -99, 9, 21, 1, 5),
('A', '5', 'Namibia', 4, 0, 0, 4, 37, 255, -218, 3, 37, 0, 0),
('B', '1', 'Ireland', 4, 4, 0, 0, 190, 46, 144, 27, 5, 3, 19),
('B', '2', 'South Africa', 4, 3, 0, 1, 151, 34, 117, 22, 4, 3, 15),
('B', '3', 'Scotland', 4, 2, 0, 2, 146, 71, 75, 21, 10, 2, 10),
('B', '4', 'Tonga', 4, 1, 0, 3, 96, 177, -81, 13, 25, 1, 5),
('B', '5', 'Romania', 4, 0, 0, 4, 32, 287, -255, 4, 43, 0, 0),
('C', '1', 'Wales', 4, 4, 0, 0, 143, 59, 84, 17, 8, 3, 19),
('C', '2', 'Fiji', 4, 2, 0, 2, 88, 83, 5, 9, 9, 3, 11),
('C', '3', 'Australia', 4, 2, 0, 2, 90, 91, -1, 11, 8, 3, 11),
('C', '4', 'Portugal', 4, 1, 1, 2, 64, 103, -39, 8, 13, 0, 6),
('C', '5', 'Georgia', 4, 0, 1, 3, 64, 113, -49, 7, 14, 1, 3),
('D', '1', 'England', 4, 4, 0, 0, 150, 39, 111, 17, 3, 2, 18),
('D', '2', 'Argentina', 4, 3, 0, 1, 127, 69, 58, 15, 5, 2, 14),
('D', '3', 'Japan', 4, 2, 0, 2, 109, 107, 2, 12, 14, 1, 9),
('D', '4', 'Samoa', 4, 1, 0, 3, 92, 75, 17, 11, 7, 3, 7),
('D', '5', 'Chile', 4, 0, 0, 4, 27, 215, -188, 4, 30, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `match_id` varchar(5) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `stage` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `team1_id` varchar(3) NOT NULL,
  `team1_name` varchar(50) NOT NULL,
  `team1_score` int(11) NOT NULL,
  `team2_id` varchar(3) NOT NULL,
  `team2_name` varchar(50) NOT NULL,
  `team2_score` int(11) NOT NULL,
  `venue_id` varchar(3) NOT NULL,
  `venue_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`match_id`, `date`, `time`, `stage`, `status`, `team1_id`, `team1_name`, `team1_score`, `team2_id`, `team2_name`, `team2_score`, `venue_id`, `venue_name`) VALUES
('28766', '2023-09-08', '20:15:00', 'Pool A', 'result', '42', 'France', 27, '37', 'New Zealand', 13, '6', 'Stade de France, Saint-Denis'),
('28767', '2023-09-09', '12:00:00', 'Pool A', 'result', '41', 'Italy', 52, '58', 'Namibia', 8, '307', 'Stade Geoffroy-Guichard, Saint-Atienne'),
('28768', '2023-09-09', '14:30:00', 'Pool B', 'result', '36', 'Ireland', 82, '52', 'Romania', 8, '167', 'Stade de Bordeaux, Bordeaux'),
('28769', '2023-09-09', '17:00:00', 'Pool C', 'result', '38', 'Australia', 35, '720', 'Georgia', 15, '6', 'Stade de France, Saint-Denis'),
('28770', '2023-09-09', '20:00:00', 'Pool D', 'result', '34', 'England', 27, '40', 'Argentina', 10, '227', 'Stade de Marseille, Marseille'),
('28771', '2023-09-10', '12:00:00', 'Pool D', 'result', '49', 'Japan', 42, '708', 'Chile', 12, '137', 'Stadium de Toulouse, Toulouse'),
('28772', '2023-09-10', '16:45:00', 'Pool B', 'result', '39', 'South Africa', 18, '35', 'Scotland', 3, '227', 'Stade de Marseille, Marseille'),
('28773', '2023-09-10', '20:00:00', 'Pool C', 'result', '33', 'Wales', 32, '46', 'Fiji', 26, '167', 'Stade de Bordeaux, Bordeaux'),
('28774', '2023-09-14', '20:00:00', 'Pool A', 'result', '42', 'France', 27, '68', 'Uruguay', 12, '115', 'Stade Pierre-Mauroy, Lille'),
('28775', '2023-09-15', '20:00:00', 'Pool A', 'result', '37', 'New Zealand', 71, '58', 'Namibia', 3, '137', 'Stadium de Toulouse, Toulouse'),
('28776', '2023-09-16', '14:00:00', 'Pool D', 'result', '45', 'Samoa', 43, '708', 'Chile', 10, '167', 'Stade de Bordeaux, Bordeaux'),
('28777', '2023-09-16', '16:45:00', 'Pool C', 'result', '33', 'Wales', 28, '44', 'Portugal', 8, '158', 'Stade de Nice, Nice'),
('28778', '2023-09-16', '20:00:00', 'Pool B', 'result', '36', 'Ireland', 59, '47', 'Tonga', 16, '138', 'Stade de la Beaujoire, Nantes'),
('28779', '2023-09-17', '14:00:00', 'Pool B', 'result', '39', 'South Africa', 76, '52', 'Romania', 0, '167', 'Stade de Bordeaux, Bordeaux'),
('28780', '2023-09-17', '16:45:00', 'Pool C', 'result', '38', 'Australia', 15, '46', 'Fiji', 22, '307', 'Stade Geoffroy-Guichard, Saint-Atienne'),
('28781', '2023-09-17', '20:00:00', 'Pool D', 'result', '34', 'England', 34, '49', 'Japan', 12, '158', 'Stade de Nice, Nice'),
('28782', '2023-09-20', '16:45:00', 'Pool A', 'result', '41', 'Italy', 38, '68', 'Uruguay', 17, '158', 'Stade de Nice, Nice'),
('28783', '2023-09-21', '20:00:00', 'Pool A', 'result', '42', 'France', 96, '58', 'Namibia', 0, '227', 'Stade de Marseille, Marseille'),
('28784', '2023-09-22', '16:45:00', 'Pool D', 'result', '40', 'Argentina', 19, '45', 'Samoa', 10, '307', 'Stade Geoffroy-Guichard, Saint-Atienne'),
('28785', '2023-09-23', '13:00:00', 'Pool C', 'result', '720', 'Georgia', 18, '44', 'Portugal', 18, '137', 'Stadium de Toulouse, Toulouse'),
('28786', '2023-09-23', '16:45:00', 'Pool D', 'result', '34', 'England', 71, '708', 'Chile', 0, '115', 'Stade Pierre-Mauroy, Lille'),
('28787', '2023-09-23', '20:00:00', 'Pool B', 'result', '39', 'South Africa', 8, '36', 'Ireland', 13, '6', 'Stade de France, Saint-Denis'),
('28788', '2023-09-24', '16:45:00', 'Pool B', 'result', '35', 'Scotland', 45, '47', 'Tonga', 17, '158', 'Stade de Nice, Nice'),
('28789', '2023-09-24', '20:00:00', 'Pool C', 'result', '33', 'Wales', 40, '38', 'Australia', 6, '147', 'OL Stadium, Lyon'),
('28790', '2023-09-27', '16:45:00', 'Pool A', 'result', '68', 'Uruguay', 36, '58', 'Namibia', 26, '147', 'OL Stadium, Lyon'),
('28791', '2023-09-28', '20:00:00', 'Pool D', 'result', '49', 'Japan', 28, '45', 'Samoa', 22, '137', 'Stadium de Toulouse, Toulouse'),
('28792', '2023-09-29', '20:00:00', 'Pool A', 'result', '37', 'New Zealand', 96, '41', 'Italy', 17, '147', 'OL Stadium, Lyon'),
('28793', '2023-09-30', '14:00:00', 'Pool D', 'result', '40', 'Argentina', 59, '708', 'Chile', 5, '138', 'Stade de la Beaujoire, Nantes'),
('28794', '2023-09-30', '16:45:00', 'Pool C', 'result', '46', 'Fiji', 17, '720', 'Georgia', 12, '167', 'Stade de Bordeaux, Bordeaux'),
('28795', '2023-09-30', '20:00:00', 'Pool B', 'result', '35', 'Scotland', 84, '52', 'Romania', 0, '115', 'Stade Pierre-Mauroy, Lille'),
('28796', '2023-10-01', '16:45:00', 'Pool C', 'result', '38', 'Australia', 34, '44', 'Portugal', 14, '307', 'Stade Geoffroy-Guichard, Saint-Atienne'),
('28797', '2023-10-01', '20:00:00', 'Pool B', 'result', '39', 'South Africa', 49, '47', 'Tonga', 18, '227', 'Stade de Marseille, Marseille'),
('28798', '2023-10-05', '20:00:00', 'Pool A', 'result', '37', 'New Zealand', 73, '68', 'Uruguay', 0, '147', 'OL Stadium, Lyon'),
('28799', '2023-10-06', '20:00:00', 'Pool A', 'result', '42', 'France', 60, '41', 'Italy', 7, '147', 'OL Stadium, Lyon'),
('28800', '2023-10-07', '14:00:00', 'Pool C', 'result', '33', 'Wales', 43, '720', 'Georgia', 19, '138', 'Stade de la Beaujoire, Nantes'),
('28801', '2023-10-07', '16:45:00', 'Pool D', 'result', '34', 'England', 18, '45', 'Samoa', 17, '115', 'Stade Pierre-Mauroy, Lille'),
('28802', '2023-10-07', '20:00:00', 'Pool B', 'result', '36', 'Ireland', 36, '35', 'Scotland', 14, '6', 'Stade de France, Saint-Denis'),
('28803', '2023-10-08', '12:00:00', 'Pool D', 'result', '49', 'Japan', 27, '40', 'Argentina', 39, '138', 'Stade de la Beaujoire, Nantes'),
('28804', '2023-10-08', '16:45:00', 'Pool B', 'result', '47', 'Tonga', 45, '52', 'Romania', 24, '115', 'Stade Pierre-Mauroy, Lille'),
('28805', '2023-10-08', '20:00:00', 'Pool C', 'result', '46', 'Fiji', 23, '44', 'Portugal', 24, '137', 'Stadium de Toulouse, Toulouse'),
('28806', '2023-10-14', '16:00:00', 'Quarter-final 1', 'result', '33', 'Wales', 17, '40', 'Argentina', 29, '227', 'Stade de Marseille, Marseille'),
('28807', '2023-10-14', '20:00:00', 'Quarter-final 2', 'result', '36', 'Ireland', 24, '37', 'New Zealand', 28, '6', 'Stade de France, Saint-Denis'),
('28808', '2023-10-15', '16:00:00', 'Quarter-final 3', 'result', '34', 'England', 30, '46', 'Fiji', 24, '227', 'Stade de Marseille, Marseille'),
('28809', '2023-10-15', '20:00:00', 'Quarter-final 4', 'result', '42', 'France', 28, '39', 'South Africa', 29, '6', 'Stade de France, Saint-Denis'),
('28810', '2023-10-20', '20:00:00', 'Semi-final 1', 'result', '40', 'Argentina', 6, '37', 'New Zealand', 44, '6', 'Stade de France, Saint-Denis'),
('28811', '2023-10-21', '20:00:00', 'Semi-final 2', 'result', '34', 'England', 15, '39', 'South Africa', 16, '6', 'Stade de France, Saint-Denis'),
('28812', '2023-10-27', '20:00:00', 'Bronze Final', 'result', '40', 'Argentina', 23, '34', 'England', 26, '6', 'Stade de France, Saint-Denis'),
('28813', '2023-10-28', '20:00:00', 'Final', 'result', '37', 'New Zealand', 11, '39', 'South Africa', 12, '6', 'Stade de France, Saint-Denis');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` varchar(3) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`) VALUES
('40', 'Argentina'),
('38', 'Australia'),
('708', 'Chile'),
('34', 'England'),
('46', 'Fiji'),
('42', 'France'),
('720', 'Georgia'),
('36', 'Ireland'),
('41', 'Italy'),
('49', 'Japan'),
('58', 'Namibia'),
('37', 'New Zealand'),
('44', 'Portugal'),
('52', 'Romania'),
('45', 'Samoa'),
('35', 'Scotland'),
('39', 'South Africa'),
('47', 'Tonga'),
('68', 'Uruguay'),
('33', 'Wales');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` varchar(3) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `name`) VALUES
('6', 'Stade de France, Saint-Denis'),
('137', 'Stadium de Toulouse, Toulouse'),
('138', 'Stade de la Beaujoire, Nantes'),
('227', 'Stade de Marseille, Marseille'),
('307', 'Stade Geoffroy-Guichard, Saint-Atienne'),
('115', 'Stade Pierre-Mauroy, Lille'),
('147', 'OL Stadium, Lyon'),
('158', 'Stade de Nice, Nice'),
('167', 'Stade de Bordeaux, Bordeaux');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
