-- phpMyAdmin SQL Dump
-- version 5.2.1deb1+deb12u1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 25 mars 2026 à 13:52
-- Version du serveur : 10.11.14-MariaDB-0+deb12u2
-- Version de PHP : 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `stadia`
--

-- --------------------------------------------------------

--
-- Structure de la table `developpe`
--

CREATE TABLE `developpe` (
  `id_jeu` int(11) NOT NULL,
  `id_developpeur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `developpe`
--

INSERT INTO `developpe` (`id_jeu`, `id_developpeur`) VALUES
(1, 1),
(2, 1),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 1),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 1),
(22, 1),
(23, 1),
(24, 7),
(25, 15),
(26, 6),
(27, 5),
(28, 5),
(29, 11),
(30, 11),
(31, 7),
(32, 1),
(33, 1),
(34, 1),
(35, 9),
(36, 1),
(37, 13),
(38, 1),
(39, 14),
(40, 1),
(41, 1),
(42, 1),
(43, 17),
(44, 19),
(45, 20),
(46, 20),
(47, 20),
(48, 19),
(49, 19),
(50, 20),
(51, 18),
(52, 20),
(53, 8),
(54, 8),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 8),
(60, 8),
(61, 8),
(62, 5),
(63, 5),
(64, 6),
(65, 6),
(66, 6),
(67, 6),
(68, 20),
(69, 20),
(70, 20),
(71, 10),
(72, 10),
(73, 10),
(74, 10),
(75, 16),
(76, 19),
(77, 18),
(78, 18),
(79, 18),
(80, 18),
(81, 5),
(82, 7),
(83, 7),
(84, 7),
(85, 7),
(86, 20),
(87, 20),
(88, 19),
(89, 19),
(90, 19),
(91, 14),
(92, 14),
(93, 14),
(94, 14),
(95, 14),
(96, 19),
(97, 14),
(98, 20),
(99, 20),
(100, 14);

-- --------------------------------------------------------

--
-- Structure de la table `developpeur`
--

CREATE TABLE `developpeur` (
  `id_developpeur` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `date_creation` date NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `developpeur`
--

INSERT INTO `developpeur` (`id_developpeur`, `nom`, `date_creation`, `adresse`, `mail`) VALUES
(1, 'Valve Corporation', '1996-08-24', 'Bellevue, Washington, USA', 'contact@valvesoftware.com'),
(2, 'Rockstar North', '1988-12-07', 'Edinburgh, Scotland, UK', 'contact@rockstarnorth.com'),
(3, 'CD Projekt Red', '2002-05-01', 'Warsaw, Poland', 'contact@cdprojektred.com'),
(4, 'FromSoftware', '1986-11-01', 'Tokyo, Japan', 'contact@fromsoftware.jp'),
(5, 'Respawn Entertainment', '2010-04-12', 'Los Angeles, California, USA', 'contact@respawn.com'),
(6, 'Obsidian Entertainment', '2003-06-15', 'Irvine, California, USA', 'contact@obsidian.net'),
(7, 'Epic Games', '1991-01-01', 'Cary, North Carolina, USA', 'contact@epicgames.com'),
(8, 'Treyarch', '1996-01-01', 'Santa Monica, California, USA', 'contact@treyarch.com'),
(9, 'MachineGames', '2009-01-01', 'Uppsala, Sweden', 'contact@machinegames.com'),
(10, 'Naughty Dog', '1984-09-27', 'Santa Monica, California, USA', 'contact@naughtydog.com'),
(11, 'ConcernedApe', '2012-01-01', 'Seattle, Washington, USA', 'contact@concernedape.com'),
(12, 'Facepunch Studios', '2004-01-01', 'Birmingham, UK', 'contact@facepunch.com'),
(13, 'Wildcard Studios', '2011-01-01', 'Seattle, Washington, USA', 'contact@wildcardstudios.com'),
(14, 'Supergiant Games', '2009-01-01', 'San Francisco, California, USA', 'contact@supergiantgames.com'),
(15, 'Behaviour Interactive', '1992-01-01', 'Montreal, Canada', 'contact@behaviourinteractive.com'),
(16, 'RedLynx', '1998-01-01', 'Helsinki, Finland', 'contact@redlynx.com'),
(17, 'Focus Home Interactive', '1996-01-01', 'Paris, France', 'contact@focus-home.com'),
(18, 'Klei Entertainment', '2005-01-01', 'Vancouver, Canada', 'contact@klei.com'),
(19, 'Firaxis Games', '1996-10-01', 'Maryland, USA', 'contact@firaxis.com'),
(20, 'Saber Interactive', '2001-01-01', 'Fort Lauderdale, Florida, USA', 'contact@sabersw.com');

-- --------------------------------------------------------

--
-- Structure de la table `edite`
--

CREATE TABLE `edite` (
  `id_jeu` int(11) NOT NULL,
  `id_editeur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `edite`
--

INSERT INTO `edite` (`id_jeu`, `id_editeur`) VALUES
(1, 1),
(2, 1),
(3, 5),
(4, 5),
(5, 2),
(6, 3),
(7, 3),
(8, 2),
(9, 3),
(10, 1),
(11, 16),
(12, 1),
(13, 23),
(14, 1),
(15, 5),
(16, 12),
(17, 12),
(18, 12),
(19, 12),
(20, 23),
(21, 1),
(22, 1),
(23, 1),
(24, 15),
(25, 19),
(26, 6),
(27, 5),
(28, 5),
(29, 11),
(30, 11),
(31, 24),
(32, 1),
(33, 1),
(34, 1),
(35, 23),
(36, 1),
(37, 13),
(38, 1),
(39, 14),
(40, 1),
(41, 1),
(42, 1),
(43, 17),
(44, 21),
(45, 21),
(46, 21),
(47, 21),
(48, 23),
(49, 23),
(50, 21),
(51, 18),
(52, 20),
(53, 8),
(54, 8),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 8),
(60, 8),
(61, 8),
(62, 5),
(63, 5),
(64, 6),
(65, 6),
(66, 6),
(67, 6),
(68, 19),
(69, 19),
(70, 19),
(71, 10),
(72, 10),
(73, 10),
(74, 10),
(75, 11),
(76, 23),
(77, 18),
(78, 18),
(79, 18),
(80, 18),
(81, 5),
(82, 24),
(83, 24),
(84, 24),
(85, 24),
(86, 21),
(87, 21),
(88, 23),
(89, 23),
(90, 23),
(91, 14),
(92, 14),
(93, 14),
(94, 14),
(95, 14),
(96, 23),
(97, 14),
(98, 21),
(99, 21),
(100, 14);

-- --------------------------------------------------------

--
-- Structure de la table `editeur`
--

CREATE TABLE `editeur` (
  `id_editeur` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `date_creation` date NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `editeur`
--

INSERT INTO `editeur` (`id_editeur`, `nom`, `date_creation`, `adresse`, `mail`) VALUES
(1, 'Valve Corporation', '1996-08-24', 'Bellevue, Washington, USA', 'contact@valvesoftware.com'),
(2, 'Rockstar Games', '1998-12-01', 'New York, USA', 'contact@rockstargames.com'),
(3, 'CD Projekt', '1994-05-01', 'Warsaw, Poland', 'contact@cdprojekt.com'),
(4, 'FromSoftware', '1986-11-01', 'Tokyo, Japan', 'contact@fromsoftware.jp'),
(5, 'Electronic Arts', '1982-05-28', 'Redwood City, California, USA', 'contact@ea.com'),
(6, 'Ubisoft', '1986-03-28', 'Montreuil, France', 'contact@ubisoft.com'),
(7, 'Activision', '1979-10-01', 'Santa Monica, California, USA', 'contact@activision.com'),
(8, 'Bethesda Softworks', '1986-06-28', 'Rockville, Maryland, USA', 'contact@bethesda.net'),
(9, 'Square Enix', '1975-09-22', 'Tokyo, Japan', 'contact@square-enix.com'),
(10, 'Capcom', '1979-05-30', 'Osaka, Japan', 'contact@capcom.com'),
(11, 'Bandai Namco Entertainment', '2006-03-31', 'Tokyo, Japan', 'contact@bandainamcoent.com'),
(12, 'Paradox Interactive', '1999-01-01', 'Stockholm, Sweden', 'contact@paradoxplaza.com'),
(13, 'Coffee Stain Publishing', '2017-01-01', 'Skövde, Sweden', 'contact@coffeestainstudios.com'),
(14, 'Raw Fury', '2015-01-01', 'Stockholm, Sweden', 'contact@rawfury.com'),
(15, 'Devolver Digital', '2009-01-01', 'Austin, Texas, USA', 'contact@devolverdigital.com'),
(16, 'Team17', '1990-12-07', 'Wakefield, UK', 'contact@team17.com'),
(17, 'Focus Entertainment', '1996-01-01', 'Paris, France', 'contact@focus-entmt.com'),
(18, '505 Games', '2006-01-01', 'Milan, Italy', 'contact@505games.com'),
(19, 'Warner Bros. Games', '2004-01-14', 'Burbank, California, USA', 'contact@wbgames.com'),
(20, 'Take-Two Interactive', '1993-09-30', 'New York, USA', 'contact@take2games.com'),
(21, 'Microsoft', '1975-04-04', 'Redmond, Washington, USA', 'contact@microsoft.com'),
(22, 'Sony Interactive Entertainment', '1993-11-16', 'Tokyo, Japan', 'contact@sony.com'),
(23, 'Sega', '1960-06-03', 'Tokyo, Japan', 'contact@sega.com'),
(24, 'Epic Games', '1991-01-01', 'Cary, North Carolina, USA', 'contact@epicgames.com'),
(25, 'Klei Entertainment', '2005-01-01', 'Vancouver, Canada', 'contact@klei.com');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id_genre` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id_genre`, `libelle`) VALUES
(1, 'Action'),
(2, 'Aventure'),
(3, 'RPG'),
(4, 'FPS'),
(5, 'Simulation'),
(6, 'Stratégie'),
(7, 'Sport'),
(8, 'Course'),
(9, 'Survie'),
(10, 'Horreur'),
(11, 'Plateforme'),
(12, 'Indépendant'),
(13, 'MMO'),
(14, 'Battle Royale');

-- --------------------------------------------------------

--
-- Structure de la table `jeu`
--

CREATE TABLE `jeu` (
  `id_jeu` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `date_de_sortie` date NOT NULL,
  `note` int(2) NOT NULL,
  `lien` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `fkGenre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `jeu`
--

INSERT INTO `jeu` (`id_jeu`, `nom`, `date_de_sortie`, `note`, `lien`, `image`, `fkGenre`) VALUES
(1, 'Counter-Strike 2', '2023-09-27', 8, 'https://store.steampowered.com/app/730', '../Images/BannerVertical/CS2BannerVertical.jpg', 4),
(2, 'Dota 2', '2013-07-09', 9, 'https://store.steampowered.com/app/570', '../Images/BannerVertical/Dota2BannerVertical.jpg', 13),
(3, 'PUBG: Battlegrounds', '2017-12-21', 9, 'https://store.steampowered.com/app/578080', '../Images/BannerVertical/PUBGBannerVertical.jpg', 14),
(4, 'Apex Legends', '2020-11-04', 9, 'https://store.steampowered.com/app/1172470', '../Images/BannerVertical/ApexBannerVertical.jpg', 14),
(5, 'Grand Theft Auto V', '2015-04-14', 10, 'https://store.steampowered.com/app/271590', '../Images/BannerVertical/GTAVBannerVertical.jpg', 1),
(6, 'Elden Ring', '2022-02-25', 10, 'https://store.steampowered.com/app/1245620', '../Images/BannerVertical/EldenRingBannerVertical.jpg', 3),
(7, 'Cyberpunk 2077', '2020-12-10', 9, 'https://store.steampowered.com/app/1091500', '../Images/BannerVertical/CP2077BannerVertical.jpg', 3),
(8, 'Red Dead Redemption 2', '2019-12-05', 10, 'https://store.steampowered.com/app/1174180', '../Images/BannerVertical/RDR2BannerVertical.jpg', 1),
(9, 'The Witcher 3: Wild Hunt', '2015-05-19', 9, 'https://store.steampowered.com/app/292030', '../Images/BannerVertical/Witcher3BannerVertical.jpg', 3),
(10, 'Terraria', '2011-05-16', 9, 'https://store.steampowered.com/app/105600', '../Images/BannerVertical/TerrariaBannerVertical.jpg', 2),
(11, 'Stardew Valley', '2016-02-26', 10, 'https://store.steampowered.com/app/413150', '../Images/BannerVertical/StardewValleyBannerVertical.jpg', 12),
(12, 'Rust', '2018-02-08', 8, 'https://store.steampowered.com/app/252490', '../Images/BannerVertical/RustBannerVertical.jpg', 9),
(13, 'ARK: Survival Evolved', '2017-08-29', 8, 'https://store.steampowered.com/app/346110', '../Images/BannerVertical/ARKBannerVertical.jpg', 9),
(14, 'DayZ', '2018-12-13', 7, 'https://store.steampowered.com/app/221100', '../Images/BannerVertical/DayZBannerVertical.jpg', 9),
(15, 'Football Manager 2024', '2023-11-06', 8, 'https://store.steampowered.com/app/2252570', '../Images/BannerVertical/FootballManagerBannerVertical.jpg', 7),
(16, 'Cities: Skylines', '2015-03-10', 9, 'https://store.steampowered.com/app/255710', '../Images/BannerVertical/CitiesSkylinesBannerVertical.jpg', 5),
(17, 'Civilization VI', '2016-10-21', 9, 'https://store.steampowered.com/app/289070', '../Images/BannerVertical/Civilization6BannerVertical.jpg', 6),
(18, 'Hearts of Iron IV', '2016-06-06', 9, 'https://store.steampowered.com/app/394360', '../Images/BannerVertical/HOI4BannerVertical.jpg', 6),
(19, 'Europa Universalis IV', '2013-08-13', 9, 'https://store.steampowered.com/app/236850', '../Images/BannerVertical/EuropaUniversalis4BannerVertical.jpg', 6),
(20, 'Total War: WARHAMMER III', '2022-02-17', 8, 'https://store.steampowered.com/app/1142710', '../Images/BannerVertical/TotalWarWarhammer3BannerVertical.jpg', 6),
(21, 'Among Us', '2018-11-16', 9, 'https://store.steampowered.com/app/945360', '../Images/BannerVertical/AmongUsBannerVertical.jpg', 12),
(22, 'Phasmophobia', '2020-09-18', 8, 'https://store.steampowered.com/app/739630', '../Images/BannerVertical/PhasmophobiaBannerVertical.jpg', 10),
(23, 'Valheim', '2021-02-02', 9, 'https://store.steampowered.com/app/892970', '../Images/BannerVertical/ValheimBannerVertical.jpg', 9),
(24, 'Hades', '2020-09-17', 9, 'https://store.steampowered.com/app/1145360', '../Images/BannerVertical/HadesBannerVertical.jpg', 12),
(25, 'Dead by Daylight', '2016-06-14', 8, 'https://store.steampowered.com/app/381210', '../Images/BannerVertical/DeadByDaylightBannerVertical.jpg', 10),
(26, 'Rainbow Six Siege', '2015-12-01', 9, 'https://store.steampowered.com/app/359550', '../Images/BannerVertical/R6SiegeBannerVertical.jpg', 4),
(27, 'Warframe', '2013-03-25', 9, 'https://store.steampowered.com/app/230410', '../Images/BannerVertical/WarframeBannerVertical.jpg', 13),
(28, 'Destiny 2', '2019-10-01', 9, 'https://store.steampowered.com/app/1085660', '../Images/BannerVertical/Destiny2BannerVertical.jpg', 13),
(29, 'Monster Hunter: World', '2018-08-09', 10, 'https://store.steampowered.com/app/582010', '../Images/BannerVertical/MonsterHunterWorldBannerVertical.jpg', 3),
(30, 'Dark Souls III', '2016-04-12', 10, 'https://store.steampowered.com/app/374320', '../Images/BannerVertical/DarkSouls3BannerVertical.jpg', 3),
(31, 'Fall Guys', '2020-08-04', 8, 'https://store.steampowered.com/app/1097150', '../Images/BannerVertical/FallGuysBannerVertical.jpg', 11),
(32, 'Garry\'s Mod', '2006-11-29', 9, 'https://store.steampowered.com/app/4000', '../Images/BannerVertical/GModBannerVertical.jpg', 12),
(33, 'Left 4 Dead 2', '2009-11-17', 9, 'https://store.steampowered.com/app/550', '../Images/BannerVertical/L4D2BannerVertical.jpg', 4),
(34, 'Team Fortress 2', '2007-10-10', 9, 'https://store.steampowered.com/app/440', '../Images/BannerVertical/TF2BannerVertical.jpg', 4),
(35, 'Payday 2', '2013-08-13', 8, 'https://store.steampowered.com/app/218620', '../Images/BannerVertical/Payday2BannerVertical.jpg', 4),
(36, 'Factorio', '2020-08-14', 10, 'https://store.steampowered.com/app/427520', '../Images/BannerVertical/FactorioBannerVertical.jpg', 12),
(37, 'Satisfactory', '2020-06-08', 9, 'https://store.steampowered.com/app/526870', '../Images/BannerVertical/SatisfactoryBannerVertical.jpg', 5),
(38, 'No Man\'s Sky', '2016-08-12', 9, 'https://store.steampowered.com/app/275850', '../Images/BannerVertical/NoMan\'sSkyBannerVertical.jpg', 9),
(39, 'RimWorld', '2018-10-17', 10, 'https://store.steampowered.com/app/294100', '../Images/BannerVertical/RimWorldBannerVertical.jpg', 12),
(40, 'Project Zomboid', '2013-11-08', 9, 'https://store.steampowered.com/app/108600', '../Images/BannerVertical/ProjectZomboidBannerVertical.jpg', 9),
(41, 'Subnautica', '2018-01-23', 9, 'https://store.steampowered.com/app/264710', '../Images/BannerVertical/SubnauticaBannerVertical.jpg', 9),
(42, 'The Forest', '2018-04-30', 9, 'https://store.steampowered.com/app/242760', '../Images/BannerVertical/TheForestBannerVertical.jpg', 9),
(43, 'Sons of the Forest', '2023-02-23', 8, 'https://store.steampowered.com/app/1326470', '../Images/BannerVertical/SonsOfTheForestBannerVertical.jpg', 9),
(44, 'Sea of Thieves', '2020-06-03', 8, 'https://store.steampowered.com/app/1172620', '../Images/BannerVertical/SeaOfThievesBannerVertical.jpg', 2),
(45, 'Forza Horizon 5', '2021-11-09', 9, 'https://store.steampowered.com/app/1551360', '../Images/BannerVertical/ForzaHorizon5BannerVertical.jpg', 8),
(46, 'Forza Horizon 4', '2021-03-09', 9, 'https://store.steampowered.com/app/1293830', '../Images/BannerVertical/ForzaHorizon4BannerVertical.jpg', 8),
(47, 'Microsoft Flight Simulator', '2020-08-18', 9, 'https://store.steampowered.com/app/1250410', '../Images/BannerVertical/MSFlightBannerVertical.jpg', 5),
(48, 'Euro Truck Simulator 2', '2012-10-19', 9, 'https://store.steampowered.com/app/227300', '../Images/BannerVertical/EuroTruckSimulator2BannerVertical.jpg', 5),
(49, 'American Truck Simulator', '2016-02-02', 9, 'https://store.steampowered.com/app/270880', '../Images/BannerVertical/AmericanTruckSimulatorBannerVertical.jpg', 5),
(50, 'Kerbal Space Program', '2015-04-27', 9, 'https://store.steampowered.com/app/220200', '../Images/BannerVertical/KerbalSpaceProgramBannerVertical.jpg', 5),
(51, 'Borderlands 3', '2020-03-13', 8, 'https://store.steampowered.com/app/397540', '../Images/BannerVertical/Borderlands3BannerVertical.jpg', 4),
(52, 'BioShock Infinite', '2013-03-26', 10, 'https://store.steampowered.com/app/8870', '../Images/BannerVertical/BioshockInfiniteBannerVertical.jpg', 4),
(53, 'DOOM Eternal', '2020-03-20', 9, 'https://store.steampowered.com/app/782330', '../Images/BannerVertical/DoomEternalBannerVertical.jpg', 4),
(54, 'DOOM', '2016-05-13', 9, 'https://store.steampowered.com/app/379720', '../Images/BannerVertical/Doom2016BannerVertical.jpg', 4),
(55, 'Half-Life: Alyx', '2020-03-23', 10, 'https://store.steampowered.com/app/546560', '../Images/BannerVertical/HLAlyxBannerVertical.jpg', 4),
(56, 'Half-Life 2', '2004-11-16', 10, 'https://store.steampowered.com/app/220', '../Images/BannerVertical/HL2BannerVertical.jpg', 4),
(57, 'Portal 2', '2011-04-19', 10, 'https://store.steampowered.com/app/620', '../Images/BannerVertical/Portal2BannerVertical.jpg', 11),
(58, 'Portal', '2007-10-10', 10, 'https://store.steampowered.com/app/400', '../Images/BannerVertical/PortalBannerVertical.jpg', 11),
(59, 'Skyrim', '2011-11-11', 10, 'https://store.steampowered.com/app/72850', '../Images/BannerVertical/SkyrimBannerVertical.jpg', 3),
(60, 'Fallout 4', '2015-11-10', 9, 'https://store.steampowered.com/app/377160', '../Images/BannerVertical/Fallout4BannerVertical.jpg', 3),
(61, 'Fallout: New Vegas', '2010-10-19', 10, 'https://store.steampowered.com/app/22380', '../Images/BannerVertical/FalloutNVBannerVertical.jpg', 3),
(62, 'Mass Effect Legendary Edition', '2021-05-14', 9, 'https://store.steampowered.com/app/1328670', '../Images/BannerVertical/MassEffectBannerVertical.jpg', 3),
(63, 'Dragon Age: Inquisition', '2014-11-18', 9, 'https://store.steampowered.com/app/1222690', '../Images/BannerVertical/DragonAgeInquisitionBannerVertical.jpg', 3),
(64, 'Assassin\'s Creed Odyssey', '2018-10-05', 9, 'https://store.steampowered.com/app/812140', '../Images/BannerVertical/ACOdysseyBannerVertical.jpg', 3),
(65, 'Assassin\'s Creed Valhalla', '2022-12-06', 8, 'https://store.steampowered.com/app/2208920', '../Images/BannerVertical/ACValhallaBannerVertical.jpg', 3),
(66, 'Far Cry 5', '2018-03-27', 9, 'https://store.steampowered.com/app/552520', '../Images/BannerVertical/FarCry5BannerVertical.jpg', 4),
(67, 'Far Cry 6', '2023-05-11', 8, 'https://store.steampowered.com/app/2369390', '../Images/BannerVertical/FarCry6BannerVertical.jpg', 4),
(68, 'Hitman 3', '2021-01-20', 9, 'https://store.steampowered.com/app/1659040', '../Images/BannerVertical/Hitman3BannerVertical.jpg', 1),
(69, 'Hitman 2', '2018-11-13', 9, 'https://store.steampowered.com/app/863550', '../Images/BannerVertical/Hitman2BannerVertical.jpg', 1),
(70, 'Hitman', '2016-03-11', 9, 'https://store.steampowered.com/app/236870', '../Images/BannerVertical/HitmanBannerVertical.jpg', 1),
(71, 'Resident Evil 2', '2019-01-25', 9, 'https://store.steampowered.com/app/883710', '../Images/BannerVertical/RE2BannerVertical.jpg', 10),
(72, 'Resident Evil 3', '2020-04-03', 8, 'https://store.steampowered.com/app/952060', '../Images/BannerVertical/RE3BannerVertical.jpg', 10),
(73, 'Resident Evil Village', '2021-05-07', 9, 'https://store.steampowered.com/app/1196590', '../Images/BannerVertical/REVillageBannerVertical.jpg', 10),
(74, 'Devil May Cry 5', '2019-03-08', 10, 'https://store.steampowered.com/app/601150', '../Images/BannerVertical/DMC5BannerVertical.jpg', 1),
(75, 'Sekiro: Shadows Die Twice', '2019-03-22', 10, 'https://store.steampowered.com/app/814380', '../Images/BannerVertical/SekiroBannerVertical.jpg', 1),
(76, 'Nioh 2', '2021-02-05', 9, 'https://store.steampowered.com/app/1325200', '../Images/BannerVertical/Nioh2BannerVertical.jpg', 1),
(77, 'Ghostrunner', '2020-10-27', 8, 'https://store.steampowered.com/app/1139900', '../Images/BannerVertical/GhostrunnerBannerVertical.jpg', 1),
(78, 'Control', '2020-08-27', 9, 'https://store.steampowered.com/app/870780', '../Images/BannerVertical/ControlBannerVertical.jpg', 1),
(79, 'Alan Wake', '2012-02-16', 9, 'https://store.steampowered.com/app/108710', '../Images/BannerVertical/AlanWakeBannerVertical.jpg', 10),
(80, 'Quantum Break', '2016-09-29', 8, 'https://store.steampowered.com/app/474960', '../Images/BannerVertical/QuantumBreakBannerVertical.jpg', 1),
(81, 'The Sims 4', '2014-09-02', 7, 'https://store.steampowered.com/app/1222670', '../Images/BannerVertical/Sims4BannerVertical.jpg', 5),
(82, 'Planet Zoo', '2019-11-05', 9, 'https://store.steampowered.com/app/703080', '../Images/BannerVertical/PlanetZooBannerVertical.jpg', 5),
(83, 'Planet Coaster', '2016-11-17', 9, 'https://store.steampowered.com/app/493340', '../Images/BannerVertical/PlanetCoasterBannerVertical.jpg', 5),
(84, 'Zoo Tycoon', '2013-10-31', 8, 'https://store.steampowered.com/app/703080', '../Images/BannerVertical/PlanetZooBannerVertical.jpg', 5),
(85, 'Banished', '2014-02-18', 8, 'https://store.steampowered.com/app/242920', '../Images/BannerVertical/BanishedBannerVertical.jpg', 5),
(86, 'Age of Empires II: Definitive Edition', '2019-11-14', 10, 'https://store.steampowered.com/app/813780', '../Images/BannerVertical/AgeOfEmpires2BannerVertical.jpg', 6),
(87, 'Age of Empires IV', '2021-10-28', 9, 'https://store.steampowered.com/app/1466860', '../Images/BannerVertical/AgeOfEmpires4BannerVertical.jpg', 6),
(88, 'Stronghold Crusader HD', '2012-10-21', 9, 'https://store.steampowered.com/app/40970', '../Images/BannerVertical/StrongholdCrusaderBannerVertical.jpg', 6),
(89, 'Company of Heroes 2', '2013-06-25', 9, 'https://store.steampowered.com/app/231430', '../Images/BannerVertical/CompanyOfHeroes2BannerVertical.jpg', 6),
(90, 'Warhammer 40,000: Dawn of War II', '2009-02-18', 9, 'https://store.steampowered.com/app/15620', '../Images/BannerVertical/40KDawnOfWarBannerVertical.jpg', 6),
(91, 'Slay the Spire', '2019-01-23', 10, 'https://store.steampowered.com/app/646570', '../Images/BannerVertical/SlayTheSpireBannerVertical.jpg', 12),
(92, 'Into the Breach', '2018-02-27', 9, 'https://store.steampowered.com/app/590380', '../Images/BannerVertical/IntoTheBreachBannerVertical.jpg', 12),
(93, 'FTL: Faster Than Light', '2012-09-14', 10, 'https://store.steampowered.com/app/212680', '../Images/BannerVertical/FTLBannerVertical.jpg', 12),
(94, 'Hotline Miami', '2012-10-23', 9, 'https://store.steampowered.com/app/219150', '../Images/BannerVertical/HotlineMiamiBannerVertical.jpg', 12),
(95, 'Katana ZERO', '2019-04-18', 9, 'https://store.steampowered.com/app/460950', '../Images/BannerVertical/KatanaZEROBannerVertical.jpg', 12),
(96, 'Cuphead', '2017-09-29', 9, 'https://store.steampowered.com/app/268910', '../Images/BannerVertical/CupheadBannerVertical.jpg', 11),
(97, 'Hollow Knight', '2017-02-24', 10, 'https://store.steampowered.com/app/367520', '../Images/BannerVertical/HollowKnightBannerVertical.jpg', 12),
(98, 'Ori and the Blind Forest', '2016-04-27', 9, 'https://store.steampowered.com/app/387290', '../Images/BannerVertical/Ori1BannerVertical.jpg', 11),
(99, 'Ori and the Will of the Wisps', '2020-03-11', 10, 'https://store.steampowered.com/app/1057090', '../Images/BannerVertical/Ori2BannerVertical.jpg', 11),
(100, 'Celeste', '2018-01-25', 10, 'https://store.steampowered.com/app/504230', '../Images/BannerVertical/CelesteBannerVertical.jpg', 11);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `idUtilisateur` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `date_de_naissance` date NOT NULL,
  `pseudonyme` varchar(32) NOT NULL,
  `telephone` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mot_de_passe` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`idUtilisateur`, `nom`, `prenom`, `date_de_naissance`, `pseudonyme`, `telephone`, `email`, `mot_de_passe`) VALUES
(2, 'Pourny', 'Josh', '2025-02-11', 'josh', '0606060606', 'a@a.a', 'aa'),
(3, 'Dupont', 'Marie', '1995-10-17', 'MarieD95', '0612345678', 'mmarie.dupont@example.com', 'mdp123'),
(4, 'Laurent', 'Lili', '1997-12-12', 'MarieD95', '0787654321', 'lucas.martin@test.fr', '$2y$10$pytsbTKfmdFC9eT6E96PFuQULIU.XF5P/35bWdt1CjKQ82Ik4tJY6'),
(5, 'Bernard', 'Sophie', '1998-12-03', 'Soso88', '0655443322', 'sophie.bernard@mail.com', '$2y$10$QWztbAdpiKDnht.x4eSTnecu7akmsM535Xz9VDAQOf/fCN7DQTQtC'),
(9, 'sbr', 'sbr', '2006-10-26', 'sbr', '0629835716', 'sbr@gmail.com', '$2y$10$uLiLoPZ6O0IrMLI5pHaxXuPmqgX7J8hmmF.ltyEgWLcXN3xhr8pWe');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `vue_jeux_complets`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `vue_jeux_complets` (
`id_jeu` int(11)
,`nom_jeu` varchar(255)
,`developpeur` varchar(255)
,`editeur` varchar(255)
,`genre` varchar(255)
,`date_de_sortie` date
,`note` int(2)
);

-- --------------------------------------------------------

--
-- Structure de la vue `vue_jeux_complets`
--
DROP TABLE IF EXISTS `vue_jeux_complets`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vue_jeux_complets`  AS SELECT `j`.`id_jeu` AS `id_jeu`, `j`.`nom` AS `nom_jeu`, `d`.`nom` AS `developpeur`, `e`.`nom` AS `editeur`, `g`.`libelle` AS `genre`, `j`.`date_de_sortie` AS `date_de_sortie`, `j`.`note` AS `note` FROM (((((`jeu` `j` join `developpe` `dp` on(`j`.`id_jeu` = `dp`.`id_jeu`)) join `developpeur` `d` on(`dp`.`id_developpeur` = `d`.`id_developpeur`)) join `edite` `ed` on(`j`.`id_jeu` = `ed`.`id_jeu`)) join `editeur` `e` on(`ed`.`id_editeur` = `e`.`id_editeur`)) join `genre` `g` on(`j`.`fkGenre` = `g`.`id_genre`)) ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `developpe`
--
ALTER TABLE `developpe`
  ADD PRIMARY KEY (`id_jeu`,`id_developpeur`),
  ADD KEY `id_developpeur` (`id_developpeur`);

--
-- Index pour la table `developpeur`
--
ALTER TABLE `developpeur`
  ADD PRIMARY KEY (`id_developpeur`),
  ADD KEY `mail` (`mail`);

--
-- Index pour la table `edite`
--
ALTER TABLE `edite`
  ADD PRIMARY KEY (`id_jeu`,`id_editeur`),
  ADD KEY `id_editeur` (`id_editeur`);

--
-- Index pour la table `editeur`
--
ALTER TABLE `editeur`
  ADD PRIMARY KEY (`id_editeur`),
  ADD KEY `mail` (`mail`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Index pour la table `jeu`
--
ALTER TABLE `jeu`
  ADD PRIMARY KEY (`id_jeu`),
  ADD KEY `fk_jeu_genre` (`fkGenre`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`idUtilisateur`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `developpe`
--
ALTER TABLE `developpe`
  ADD CONSTRAINT `developpe_ibfk_1` FOREIGN KEY (`id_jeu`) REFERENCES `jeu` (`id_jeu`),
  ADD CONSTRAINT `developpe_ibfk_2` FOREIGN KEY (`id_developpeur`) REFERENCES `developpeur` (`id_developpeur`);

--
-- Contraintes pour la table `edite`
--
ALTER TABLE `edite`
  ADD CONSTRAINT `edite_ibfk_1` FOREIGN KEY (`id_jeu`) REFERENCES `jeu` (`id_jeu`),
  ADD CONSTRAINT `edite_ibfk_2` FOREIGN KEY (`id_editeur`) REFERENCES `editeur` (`id_editeur`);

--
-- Contraintes pour la table `jeu`
--
ALTER TABLE `jeu`
  ADD CONSTRAINT `fk_jeu_genre` FOREIGN KEY (`fkGenre`) REFERENCES `genre` (`id_genre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
