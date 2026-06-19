-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 17 juin 2026 à 16:05
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

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
-- Structure de la table `carrousel`
--

CREATE TABLE `carrousel` (
  `id_jeu` int(11) NOT NULL,
  `image_horizontale` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `lien_steam` varchar(255) NOT NULL,
  `lien_youtube` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `carrousel`
--

INSERT INTO `carrousel` (`id_jeu`, `image_horizontale`, `logo`, `lien_steam`, `lien_youtube`, `description`) VALUES
(1, '../Images/BannerHorizontal/CS2BannerHorizontal.jpg', '../Images/Logos/CS2Logo.png', 'https://store.steampowered.com/app/730', 'https://www.youtube.com/embed/nSE38xjMLqE?si=3WhgFPDKWtQZMW3k', 'Counter-Strike, c\'est l\'expérience compétitive par excellence qui réunit des millions de personnes depuis plus de vingt ans. L\'heure est venue d\'écrire le prochain chapitre de l\'histoire de Counter-Strike. Faites place à Counter-Strike 2.'),
(2, '../Images/BannerHorizontal/Dota2BannerHorizontal.jpg', '../Images/Logos/Dota2Logo.png', 'https://store.steampowered.com/app/570', 'https://www.youtube.com/embed/-cSFPIwMEq4?si=Z94IgaaQbm3RAYfz', 'Chaque jour dans le monde, des millions de personnes incarnent un personnage parmi plus de cent et s\'affrontent dans Dota 2. Il y a toujours quelque chose à découvrir, car le gameplay, les fonctionnalités et les personnages évoluent sans cesse au fil des mises à jour.'),
(3, '../Images/BannerHorizontal/PUBGBannerHorizontal.jpg', '../Images/Logos/PUBGLogo.png', 'https://store.steampowered.com/app/578080', 'https://www.youtube.com/embed/URBy9t6e8rY?si=EdjQGF0gETDGUDFC', 'PUBG: BATTLEGROUNDS, le shooter explosif et sans concession qui a donné à la Battle Royale ses lettres de noblesse, est free-to-play ! Partez à l’assaut de cartes tout aussi diverses que variées, équipez-vous et survivez dans une zone de plus en plus petite où chaque seconde peut être la dernière.'),
(4, '../Images/BannerHorizontal/ApexBannerHorizontal.jpg', '../Images/Logos/ApexLogo.png', 'https://store.steampowered.com/app/1172470', 'https://www.youtube.com/embed/oQtHENM_GZU?si=esaKfln-KxgN1Sef', 'Apex Legends est le célèbre jeu de tir gratuit avec des héros créé par Respawn Entertainment. Maîtrisez une équipe de personnages légendaires dotés de capacités surpuissantes, et découvrez une jouabilité novatrice d\'une grande profondeur tactique dans cette nouvelle évolution du genre.'),
(5, '../Images/BannerHorizontal/GTAVBannerHorizontal.jpg', '../Images/Logos/GTAVLogo.png', 'https://store.steampowered.com/app/271590', 'https://www.youtube.com/embed/QkkoHAzjnUs?si=XJsTs1LNm_tFITtI', 'Grand Theft Auto V sur PC offre aux joueurs la possibilité d\'explorer le monde de Los Santos et Blaine County en haute résolution (jusqu\'à 4K) et à 60 images par seconde.'),
(6, '../Images/BannerHorizontal/EldenRingBannerHorizontal.jpg', '../Images/Logos/EldenRingLogo.png', 'https://store.steampowered.com/app/1245620', 'https://www.youtube.com/embed/E3Huy2cdih0?si=fgRiAXDD2lr2-F9C', 'LE RPG D\'ACTION FANTASTIQUE ACCLAMÉ PAR LA CRITIQUE. Levez-vous, Sans-éclat, et puisse la grâce guider vos pas. Brandissez la puissance du Cercle d\'Elden. Devenez Seigneur de l\'Entre-terre.'),
(7, '../Images/BannerHorizontal/CP2077BannerHorizontal.jpg', '../Images/Logos/CP2077Logo.png', 'https://store.steampowered.com/app/1091500', 'https://www.youtube.com/embed/8X2kIfS6fb8?si=jQrKC9XT8jRqe4OG', 'Cyberpunk 2077 est un JDR d\'action-aventure en monde ouvert, qui se déroule à Night City, une mégalopole futuriste et sombre, obsédée par le pouvoir, la séduction et les modifications corporelles.'),
(8, '../Images/BannerHorizontal/RDR2BannerHorizontal.jpg', '../Images/Logos/RDR2Logo.png', 'https://store.steampowered.com/app/1174180', 'https://www.youtube.com/embed/Dw_oH5oiUSE?si=IHarh3ekHs0tuisI', 'Arthur Morgan et la bande de Van der Linde sont des hors-la-loi fugitifs. Les agents fédéraux et les chasseurs de primes sont à leurs trousses et la bande commet méfaits sur méfaits dans les terres sauvages pour survivre.'),
(9, '../Images/BannerHorizontal/Witcher3BannerHorizontal.jpg', '../Images/Logos/Witcher3Logo.png', 'https://store.steampowered.com/app/292030', 'https://www.youtube.com/embed/c0i88t0Kacs?si=ZZc6Vi2_qQ45OiKR', 'Vous incarnez Geralt de Riv, un tueur de monstres. Devant vous s\'étend un continent en guerre, infesté de monstres, à explorer à votre guise. Votre contrat actuel ? Retrouver Ciri, l\'enfant de la prophétie, une arme vivante capable de changer le monde.'),
(10, '../Images/BannerHorizontal/TerrariaBannerHorizontal.jpg', '../Images/Logos/TerrariaLogo.png', 'https://store.steampowered.com/app/105600', 'https://www.youtube.com/embed/w7uOhFTrrq0?si=wFl773a18NizZ--7', 'Creuser, survivre, explorer, construire ! Tout est possible dans ce jeu d\'aventure bourré d\'action. Pack de 4 jeux également disponible !'),
(11, '../Images/BannerHorizontal/StardewValleyBannerHorizontal.jpg', '../Images/Logos/StardewValleyLogo.png', 'https://store.steampowered.com/app/413150', 'https://www.youtube.com/embed/ot7uXNQskhs?si=TjeimfL542jxooFf', 'Tu as hérité de l\'ancienne ferme de ton grand-père à Stardew Valley. Muni d\'outils usagés et de quelques pièces de monnaie, tu te lances dans une nouvelle vie. Parviendras-tu à vivre de la terre et à transformer ces champs envahis par la végétation en un foyer prospère ?'),
(12, '../Images/BannerHorizontal/RustBannerHorizontal.jpg', '../Images/Logos/RustLogo.png', 'https://store.steampowered.com/app/252490', 'https://www.youtube.com/embed/LGcECozNXEw?si=tISTGWpadZ42q2K9', 'Dans Rust, le seul but est de survivre. Sur cette île, tout ce qui vous entoure est une menace : la faune, la nature, les autochtones, sans oublier les survivants eux-mêmes. Il ne vous faudra reculer devant rien, si vous voulez voir un nouveau jour se lever.'),
(13, '../Images/BannerHorizontal/ARKBannerHorizontal.jpg', '../Images/Logos/ARKLogo.png', 'https://store.steampowered.com/app/346110', 'https://www.youtube.com/embed/FW9vsrPWujI?si=xZ0SCgM9m9vHRg7M', 'En tant qu\'homme ou femme échoué nu, mourant de froid et de faim sur une île mystérieuse, vous devrez chasser, récolter, fabriquer des objets, faire pousser des plantes et construire des abris pour survivre.'),
(14, '../Images/BannerHorizontal/DayZBannerHorizontal.jpg', '../Images/Logos/DayZLogo.png', 'https://store.steampowered.com/app/221100', 'https://www.youtube.com/embed/mC5F8ECQnFE?si=g6hx-OWOCoEt0F2V', 'Survivrez-vous longtemps dans ce monde post-apocalyptique ? Un monde envahi de \"zombies\", où il faudra partager de maigres ressources avec les autres survivants. Vous allierez-vous à des inconnus pour faire front ? Survivrez-vous en solo pour éviter les trahisons ? DayZ, c\'est votre histoire.'),
(15, '../Images/BannerHorizontal/FootballManagerBannerHorizontal.jpg', '../Images/Logos/FootballManagerLogo.png', 'https://store.steampowered.com/app/2252570', 'https://www.youtube.com/embed/QvyMqBtiJDg?si=E8lcMpwROxVs8xbb', 'Montez une équipe de classe mondiale pour dominer vos rivaux dans les compétitions les plus prestigieuses du football. Au football, le progrès ne s\'arrête jamais.'),
(16, '../Images/BannerHorizontal/CitiesSkylinesBannerHorizontal.jpg', '../Images/Logos/CitiesSkylinesLogo.png', 'https://store.steampowered.com/app/255710', 'https://www.youtube.com/embed/0gI2N10QyRA?si=ulK40vtfIvV0_kU1', 'Cities: Skylines est une version moderne de la classique simulation de ville. Le jeu introduit de nouveaux éléments de gameplay pour reproduire les sensations et difficultés inhérentes à la création et à la gestion d\'une vraie ville tout en développant certains aspects établis de la construction de ville.'),
(17, '../Images/BannerHorizontal/Civilization6BannerHorizontal.jpg', '../Images/Logos/Civilization6Logo.png', 'https://store.steampowered.com/app/289070', 'https://www.youtube.com/embed/5KdE0p2joJw?si=Mx1Z7C6wEcQTDSBi', 'Repoussez les frontières de votre empire, développez votre patrimoine culturel et affrontez les plus grands seigneurs de l\'histoire. Votre civilisation tiendra-t-elle face aux ravages du temps ?'),
(18, '../Images/BannerHorizontal/HOI4BannerHorizontal.jpg', '../Images/Logos/HOI4Logo.png', 'https://store.steampowered.com/app/394360', 'https://www.youtube.com/embed/F-uGP2DkZKE?si=MEyWqc2ObVF_Tyfc', 'La victoire est à votre portée! Votre capacité à diriger votre nation est votre arme suprême. Le jeu de stratégie Hearts of Iron IV vous permet de prendre les commandes de n\'importe quelle nation engagée dans la Seconde Guerre mondiale, le conflit le plus captivant de l\'histoire.'),
(19, '../Images/BannerHorizontal/EuropaUniversalis4BannerHorizontal.jpg', '../Images/Logos/EuropaUniversalis4Logo.png', 'https://store.steampowered.com/app/236850', 'https://www.youtube.com/embed/hWQ8AXwHPQg?si=7MTWyvyg_nGBugND', 'Dirigez votre pays et dominez le monde avec une liberté, une profondeur et une précision historique inégalées. Écrivez une nouvelle histoire du monde et bâtissez un empire glorieux.'),
(20, '../Images/BannerHorizontal/TotalWarWarhammer3BannerHorizontal.jpg', '../Images/Logos/TotalWarWarhammer3Logo.png', 'https://store.steampowered.com/app/1142710', 'https://www.youtube.com/embed/HAr7yUlM0Po?si=XwzvpKtwRYjvIZ6M', 'La conclusion cataclysmique de la trilogie Total War : WARHAMMER est arrivée. Ralliez vos forces et pénétrez dans le Royaume du Chaos, une dimension d\'horreur hallucinante où le destin du monde tout entier va se jouer. Parviendrez-vous à triompher de vos démons… ou à leur commander ?'),
(21, '../Images/BannerHorizontal/AmongUsBannerHorizontal.jpg', '../Images/Logos/AmongUsLogo.png', 'https://store.steampowered.com/app/945360', 'https://www.youtube.com/embed/NSJ4cESNQfE?si=211YOjSim908X37d', 'Travail d\'équipe et trahison sont les maîtres mots dans ce party-game local et en ligne pour 4 à 15 joueurs... dans l\'espace !'),
(22, '../Images/BannerHorizontal/PhasmophobiaBannerHorizontal.jpg', '../Images/Logos/PhasmophobiaLogo.png', 'https://store.steampowered.com/app/739630', 'https://www.youtube.com/embed/cLyTZ5tvIWQ?si=sC7x-Mo5h1Tqx0iN', 'Phasmophobia est un jeu d\'horreur psychologique en coopération en ligne pouvant accueillir jusqu\'à quatre joueurs. Les phénomènes paranormaux se multiplient, et c\'est à vous et à votre équipe d\'utiliser tout le matériel de chasse aux fantômes à votre disposition pour recueillir autant de preuves que possible.'),
(23, '../Images/BannerHorizontal/ValheimBannerHorizontal.jpg', '../Images/Logos/ValheimLogo.png', 'https://store.steampowered.com/app/892970', 'https://www.youtube.com/embed/liQLtCLq3tc?si=eA4KFPyKCJM2B-iC', 'Un jeu multijoueur brutal d\'exploration et de survie pour 1 à 10 joueurs, prenant place dans un purgatoire en génération procédurale inspiré par la culture viking. Combattez, bâtissez et accomplissez des exploits à la gloire d\'Odin!'),
(24, '../Images/BannerHorizontal/HadesBannerHorizontal.jpg', '../Images/Logos/HadesLogo.png', 'https://store.steampowered.com/app/1145360', 'https://www.youtube.com/embed/91t0ha9x0AE?si=P_3OJH6nauqfxGf0', 'Défiez le dieu des morts et frayez-vous un chemin hors des Enfers dans ce rogue-like en mode dungeon crawler développé par les créateurs de Bastion, Transistor et Pyre.'),
(25, '../Images/BannerHorizontal/DeadByDaylightBannerHorizontal.jpg', '../Images/Logos/DeadByDaylightLogo.png', 'https://store.steampowered.com/app/381210', 'https://www.youtube.com/embed/JGhIXLO3ul8?si=EDCZ-GkQn5KJnO19', 'Piégés dans un royaume malfaisant où même la mort n\'est pas une issue, quatre survivants affrontent un tueur dans une épreuve brutale. Choisissez votre camp et pénétrez dans un monde de terreur avec le meilleur jeu multijoueur asymétrique de l\'horreur.'),
(26, '../Images/BannerHorizontal/R6SiegeBannerHorizontal.jpg', '../Images/Logos/R6SiegeLogo.png', 'https://store.steampowered.com/app/359550', 'https://www.youtube.com/embed/6wlvYh0h63k?si=N2EzEW1Ctr_esrch', 'Rainbow Six® Siege est la référence des jeux de tir tactiques en équipe, où la stratégie et le talent triomphent. Profitez d\'un accès gratuit aux modes Partie rapide, Non-classé et Dual Front ainsi qu\'à une sélection d\'agents.'),
(27, '../Images/BannerHorizontal/WarframeBannerHorizontal.jpg', '../Images/Logos/WarframeLogo.png', 'https://store.steampowered.com/app/230410', 'https://www.youtube.com/embed/Gx5RDaGVkZE?si=x7Flk_Hf-tHVK4DG', 'Réveillez-vous en tant que guerrier implacable et combattez aux côtés de vos amis dans ce jeu d\'action en ligne gratuit basé sur un scénario original.'),
(28, '../Images/BannerHorizontal/Destiny2BannerHorizontal.jpg', '../Images/Logos/Destiny2Logo.png', 'https://store.steampowered.com/app/1085660', 'https://www.youtube.com/embed/ZJLAJVmggt0?si=j3ulfW_Xnj2Gy-MB', 'Destiny 2 est un MMO d\'action avec un monde évolutif unique, auquel vous et vos amis pouvez jouer gratuitement, à tout moment et de n\'importe où.'),
(29, '../Images/BannerHorizontal/MonsterHunterWorldBannerHorizontal.jpg', '../Images/Logos/MonsterHunterWorldLogo.png', 'https://store.steampowered.com/app/582010', 'https://www.youtube.com/embed/OotQrKEqe94?si=onOs6VAFP8D-Wor-', 'Bienvenue dans le Nouveau Monde ! \"Monster Hunter: World\" offre une dimension de jeu et une liberté sans commune mesure avec les précédents épisodes. Les chasseurs pourront utiliser un arsenal varié pour chasser un bestiaire unique dans un monde fabuleux !'),
(30, '../Images/BannerHorizontal/DarkSouls3BannerHorizontal.jpg', '../Images/Logos/DarkSouls3Logo.png', 'https://store.steampowered.com/app/374320', 'https://www.youtube.com/embed/cWBwFhUv1-8?si=BuNSCO-SWDZ02J9L', 'Dark Souls repousse une fois de plus ses limites avec un nouveau chapitre ambitieux de la série légendaire et encensée par la critique. Préparez-vous à embrasser les ténèbres !'),
(31, '../Images/BannerHorizontal/FallGuysBannerHorizontal.jpg', '../Images/Logos/FallGuysLogo.png', 'https://store.steampowered.com/app/1097150', 'https://www.youtube.com/embed/AhotrtSZ18M?si=dPKVfD7iZWCTuzOJ', 'Fall Guys est un jeu de groupe gratuit, multiplateforme et multijoueur. Affronte avec maladresse tes amis dans des courses d\'obstacles absurdes ou construis ta propre manche chaotique pour la partager avec la communauté.'),
(32, '../Images/BannerHorizontal/GModBannerHorizontal.jpg', '../Images/Logos/GModLogo.png', 'https://store.steampowered.com/app/4000', 'https://www.youtube.com/embed/pcpzfvoJLhk?si=n6CSf2xxHnFtXjjL', 'Garry\'s Mod est un jeu de type « bac à sable » basé sur la physique. Il n\'y a ni objectif ni but prédéfini. Nous vous fournissons les outils et vous laissons jouer.'),
(33, '../Images/BannerHorizontal/L4D2BannerHorizontal.jpg', '../Images/Logos/L4D2Logo.png', 'https://store.steampowered.com/app/550', 'https://www.youtube.com/embed/9XIle_kLHKU?si=oPxk9_HSdX1d10FH', 'Situé dans un univers post-apocalyptique envahi par les zombies, Left 4 Dead 2 est un jeu de tir à la première personne coopératif mêlant action et horreur qui vous emmène, vous et vos amis, à travers les villes, les marécages et les cimetières du Sud profond, de Savannah à la Nouvelle-Orléans, au fil de cinq campagnes de grande envergure.'),
(34, '../Images/BannerHorizontal/TF2BannerHorizontal.jpg', '../Images/Logos/TF2Logo.png', 'https://store.steampowered.com/app/440', 'https://www.youtube.com/embed/N7ZafWA2jd8?si=OqMzzuVlSOBxP8Rc', 'Les neuf classes différentes offrent une grande sélection de capacités tactiques et de personnalités. Régulièrement mis à jour avec de nouveaux modes de jeu, de nouvelles cartes, du nouvel équipement et, surtout, des chapeaux !'),
(35, '../Images/BannerHorizontal/Payday2BannerHorizontal.jpg', '../Images/Logos/Payday2Logo.png', 'https://store.steampowered.com/app/218620', 'https://www.youtube.com/embed/Z2tmHMIA1sU?si=fjiQoKSZfFW_Yk1d', 'PAYDAY 2 est un jeu de tir coopératif bourré d\'action qui permet jusqu\'à quatre joueurs d\'incarner une fois de plus les braqueurs originaux du célèbre gang PAYDAY, Dallas, Hoxton, Wolf et Chains, qui débarquent à Washington DC pour une série de crimes épiques.'),
(36, '../Images/BannerHorizontal/FactorioBannerHorizontal.jpg', '../Images/Logos/FactorioLogo.png', 'https://store.steampowered.com/app/427520', 'https://www.youtube.com/embed/J8SBp4SyvLc?si=S2CfwVkiPxGweS6P', 'Factorio a pour but la création d\'une usine complètement automatisée, produisant des éléments de plus en plus complexes, dans un monde en 2D. Utiliser votre imagination pour concevoir votre usine, combiner de simples éléments en ingénieuses structures, tout en vous protégeant des aliens !'),
(37, '../Images/BannerHorizontal/SatisfactoryBannerHorizontal.jpg', '../Images/Logos/SatisfactoryLogo.png', 'https://store.steampowered.com/app/526870', 'https://www.youtube.com/embed/Jt4XOPiPJHs?si=Vr5Lc4WR6MXqtYq4', 'Satisfactory est un jeu de construction d’usines en vue à la première personne dans un monde ouvert avec une touche d’exploration et de combats. Jouez seul ou entre amis, explorez une planète inconnue, construisez des usines à plusieurs niveaux et des tapis roulants à l’infini !'),
(38, '../Images/BannerHorizontal/NoMansSkyBannerHorizontal.jpg', '../Images/Logos/NoMansSkyLogo.png', 'https://store.steampowered.com/app/275850', 'https://www.youtube.com/embed/GqPTCrIl2BU?si=-Lu7-C4xFAmDlzUC', 'No Man\'s Sky est un jeu de science-fiction sur l\'exploration et la survie dans un univers infini généré de manière dynamique.'),
(39, '../Images/BannerHorizontal/RimWorldBannerHorizontal.jpg', '../Images/Logos/RimWorldLogo.png', 'https://store.steampowered.com/app/294100', 'https://www.youtube.com/embed/3tDrxOASUog?si=dhySSz7WoKm8xGWY', 'Un simulateur de colonie de science-fiction piloté par un narrateur IA intelligent. Il génère des récits interactifs palpitants en simulant la psychologie, l’écologie, les combats, le climat, les biomes, la diplomatie, les relations, l’art, la médecine, le commerce, et bien plus encore.'),
(40, '../Images/BannerHorizontal/ProjectZomboidBannerHorizontal.jpg', '../Images/Logos/ProjectZomboidLogo.png', 'https://store.steampowered.com/app/108600', 'https://www.youtube.com/embed/nPbsDmzZ3Oc?si=bNFGNE_hspTYEXa8', 'Project Zomboid est le jeu de survie face aux zombies par excellence. Seul ou en multijoueur : vous pillez, construisez, fabriquez, combattez, cultivez et pêchez dans une lutte pour la survie. Un système de compétences RPG hardcore, une carte immense, un univers ouvert hautement personnalisable et un adorable raton laveur dans le didacticiel attendent les imprudents. Alors, comment allez-vous mourir ? Il suffit d\'une seule morsure...'),
(41, '../Images/BannerHorizontal/SubnauticaBannerHorizontal.jpg', '../Images/Logos/SubnauticaLogo.png', 'https://store.steampowered.com/app/264710', 'https://www.youtube.com/embed/_7BzngvURrk?si=63fgw15e-NeyVHml', 'Descendez dans les profondeurs d\'un monde sous-marin étranger plein de merveilles et périls. Concevez des équipements, pilotez des sous-marins, terraformez un terrain voxel, et adaptez-vous à la vie sauvage afin d’explorer le monde, tout en essayant de survivre.'),
(42, '../Images/BannerHorizontal/TheForestBannerHorizontal.jpg', '../Images/Logos/TheForestLogo.png', 'https://store.steampowered.com/app/242760', 'https://www.youtube.com/embed/7mwn5U2PNvk?si=sCbSiQU9qJPoNALm', 'Seul survivant d\'un crash d\'avion de ligne, vous vous retrouvez dans une forêt mystérieuse, où vous devez lutter pour rester en vie face à une société de mutants cannibales. Construisez, explorez et survivez dans ce terrifiant simulateur d\'horreur et de survie à la première personne.'),
(43, '../Images/BannerHorizontal/SonsOfTheForestBannerHorizontal.jpg', '../Images/Logos/SonsOfTheForestLogo.png', 'https://store.steampowered.com/app/1326470', 'https://www.youtube.com/embed/8sghWJKPWno?si=W_TUl9i9uoxfIxMa', 'En mission sur une île isolée pour retrouver un milliardaire porté disparu, vous découvrez un monde de cauchemar infesté de cannibales. Par vous-même ou avec l\'aide d\'amis, fabriquez, construisez et luttez pour votre survie dans ce jeu de simulation de survie horrifique.'),
(44, '../Images/BannerHorizontal/SeaOfThievesBannerHorizontal.jpg', '../Images/Logos/SeaOfThievesLogo.png', 'https://store.steampowered.com/app/1172620', 'https://www.youtube.com/embed/r5JIBaasuE8?si=UAJgnU-TJYttLh8f', 'Sea of Thieves est un jeu d’aventure pirate à succès offrant l\'expérience ultime de la vie de pirate avec des trésors perdus, des batailles intenses, des monstres marins à affronter et plus encore. Cette édition mise à jour inclut des bonus numériques.'),
(45, '../Images/BannerHorizontal/ForzaHorizon5BannerHorizontal.jpg', '../Images/Logos/ForzaHorizon5Logo.png', 'https://store.steampowered.com/app/1551360', 'https://www.youtube.com/embed/FYH9n37B7Yw?si=l3WTCEZfaat7N75o', 'Explorez les magnifiques paysages du Mexique et profitez d\'une conduite sans limite au volant des plus belles voitures du monde.'),
(46, '../Images/BannerHorizontal/ForzaHorizon4BannerHorizontal.jpg', '../Images/Logos/ForzaHorizon4Logo.png', 'https://store.steampowered.com/app/1293830', 'https://www.youtube.com/embed/5xy4n73WOMM?si=lXI72ZFxTr_bmU9n', 'Les saisons dynamiques changent tout sur le plus grand festival automobile au monde. En solo ou en équipe, explorez les magnifiques paysages du Royaume-Uni historique dans un monde ouvert partagé.'),
(47, '../Images/BannerHorizontal/MSFlightBannerHorizontal.jpg', '../Images/Logos/MSFlightLogo.png', 'https://store.steampowered.com/app/1250410', 'https://www.youtube.com/embed/p3xp-SnZDoY?si=OYijSwG3ZskevCOT', 'Merci à tous nos fans, les vétérans et les nouveaux ! L\'édition Game of the Year (GOTY) de Microsoft Flight Simulator vous offre 5 nouveaux avions, 8 nouveaux aéroports conçus à la main, 6 nouveaux vols de découverte, de nouveaux didacticiels et des mises à jour du système de météo.'),
(48, '../Images/BannerHorizontal/EuroTruckSimulator2BannerHorizontal.jpg', '../Images/Logos/EuroTruckSimulator2Logo.png', 'https://store.steampowered.com/app/227300', 'https://www.youtube.com/embed/xlTuC18xVII?si=s2cXvrEB0uBI54Xn', 'Voyagez à travers l\'Europe en tant que roi de la route, un camionneur qui livre d\'importantes marchandises sur des distances impressionnantes ! Avec des dizaines de villes à explorer, votre endurance, vos compétences et votre vitesse seront poussées à leurs limites.'),
(49, '../Images/BannerHorizontal/AmericanTruckSimulatorBannerHorizontal.jpg', '../Images/Logos/AmericanTruckSimulatorLogo.png', 'https://store.steampowered.com/app/270880', 'https://www.youtube.com/embed/KuDpSl-hlqg?si=oR3ozifJ7u92sPRW', 'Découvrez les légendaires camions américains et livrez diverses cargaisons à travers la Californie ensoleillée, le Nevada sablonneux et l\'Arizona, l\'État du Grand Canyon. American Truck Simulator vous emmène dans un voyage à travers des paysages à couper le souffle et des monuments emblématiques des États-Unis.'),
(50, '../Images/BannerHorizontal/KerbalSpaceProgramBannerHorizontal.jpg', '../Images/Logos/KerbalSpaceProgramLogo.png', 'https://store.steampowered.com/app/220200', 'https://www.youtube.com/embed/aAa9Ao26gtM?si=GrLM2B11zzvwjz-5', 'Dans Kerbal Space Program, vous êtes en charge du programme spatial de la race extra-terrestre des Kerbals. Vous avez accès à toute une batterie de pièces pour assembler un vaisseau spatial fonctionnel qui vole (ou pas) sur une base d\'aérodynamique et de physique orbitale réelles.'),
(51, '../Images/BannerHorizontal/Borderlands3BannerHorizontal.jpg', '../Images/Logos/Borderlands3Logo.png', 'https://store.steampowered.com/app/397540', 'https://www.youtube.com/embed/gjLQ2Uj4OPw?si=_qpGtNIVOOMEd5m1', 'Le shooter-looter est de retour avec ses trilliards de flingues pour une aventure complètement folle ! Affrontez de nouveaux mondes et ennemis dans la peau de l\'un des quatre Chasseurs de l\'Arche proposés, avec chacun ses propres compétences et options de personnalisation.'),
(52, '../Images/BannerHorizontal/BioshockInfiniteBannerHorizontal.jpg', '../Images/Logos/BioshockInfiniteLogo.png', 'https://store.steampowered.com/app/8870', 'https://www.youtube.com/embed/J_gEzOZKyE4?si=vQQmxlL_Z-jHr8-s', 'BioShock Infinite est un jeu de tir à la première personne comportant des éléments de jeu de rôle. Infinite reprend la formule de jeu de BioShock, avec des armes, des pouvoirs et des améliorations qui fonctionnent souvent de la même manière que dans le jeu précédent, bien qu\'ils portent des noms différents.'),
(53, '../Images/BannerHorizontal/DoomEternalBannerHorizontal.jpg', '../Images/Logos/DoomEternalLogo.png', 'https://store.steampowered.com/app/782330', 'https://www.youtube.com/embed/_UuktemkCFI?si=_i6xAFxFx-ZBZZJd', 'Les armées de l\'enfer ont envahi la Terre. Incarnez le Slayer dans une campagne en solo où vous terrasserez des démons et arrêterez la destruction de l\'humanité. La seule chose qui les effraie... c\'est vous.'),
(54, '../Images/BannerHorizontal/Doom2016BannerHorizontal.jpg', '../Images/Logos/Doom2016Logo.png', 'https://store.steampowered.com/app/379720', 'https://www.youtube.com/embed/RO90omga8D4?si=RSAKvUwDli-WzxaQ', 'Inclut désormais les cartes, modes de jeux, armes et les trois packs de DLC premium (Unto the Evil, Hell Followed, et Bloodfall), ainsi que les modes Arcade et Photo. Inclut également la dernière Mise à jour 6.66 qui vient enrichir le mode multijoueur et qui améliore son mode de progression.'),
(55, '../Images/BannerHorizontal/HLAlyxBannerHorizontal.jpg', '../Images/Logos/HLAlyxLogo.png', 'https://store.steampowered.com/app/546560', 'https://www.youtube.com/embed/O2W0N3uKXmo?si=wcacFWIZwjtsFcvf', 'Half-Life: Alyx marque le retour, en VR, de Valve dans l\'univers de Half-Life. Situé entre les événements de Half-Life et de Half-Life 2, le jeu retrace l\'histoire d\'un combat impossible contre un groupe d\'extraterrestres cruels connu sous le nom du Cartel.'),
(56, '../Images/BannerHorizontal/HL2BannerHorizontal.jpg', '../Images/Logos/HL2Logo.png', 'https://store.steampowered.com/app/220', 'https://www.youtube.com/embed/UKA7JkV51Jw?si=rWYqyf4KTxYk2Mwn', 'La Guerre des Sept Heures est perdue. La Terre s\'est rendue. L\'incident de Black Mesa n\'est plus qu\'un lointain souvenir. Vous incarnez une nouvelle fois Gordon Freeman, un scientifique vivant sur une Terre infestée d\'extraterrestres et vidée de ses ressources et de sa population. Freeman se retrouve dans l\'obligation peu enviable de sauver le monde en réparant le mal qu\'il a libéré à Black Mesa. Et un grand nombre de personnes qui lui sont chères comptent sur lui.'),
(57, '../Images/BannerHorizontal/Portal2BannerHorizontal.jpg', '../Images/Logos/Portal2Logo.png', 'https://store.steampowered.com/app/620', 'https://www.youtube.com/embed/A88YiZdXugA?si=eiFTWuUdv4K-M9uX', 'L\'« initiative de tests perpétuels » a été étendue pour vous permettre de concevoir des casse-têtes coopératifs pour vous et vos contacts !'),
(58, '../Images/BannerHorizontal/PortalBannerHorizontal.jpg', '../Images/Logos/PortalLogo.png', 'https://store.steampowered.com/app/400', 'https://www.youtube.com/embed/TluRVBhmf8w?si=oybQtEN8EXnL_zSJ', 'Portal™ est un nouveau jeu solo signé Valve. Avec pour décor les mystérieux laboratoires Aperture Science, Portal s\'impose par son côté innovant et garantit aux joueurs un gameplay et une longévité à toute épreuve.'),
(59, '../Images/BannerHorizontal/SkyrimBannerHorizontal.jpg', '../Images/Logos/SkyrimLogo.png', 'https://store.steampowered.com/app/72850', 'https://www.youtube.com/embed/JSRtYpNRoN0?si=vvCuvQM6bHfS3Df5', 'Le nouveau chapitre très attendu de la saga Elder Scrolls nous arrive des créateurs du jeu de l\'année 2006 et 2008, Bethesda Game Studios. Skyrim réinvente et révolutionne le monde ouvert, ramenant à la vie un monde complet que vous pourrez librement explorer.'),
(60, '../Images/BannerHorizontal/Fallout4BannerHorizontal.jpg', '../Images/Logos/Fallout4Logo.png', 'https://store.steampowered.com/app/377160', 'https://www.youtube.com/embed/XW7Of3g2JME?si=P3uboNMht93YSrDg', 'Fallout 4 a été créé par Bethesda Game Studios, les créateurs primés de Starfield et The Elder Scrolls V: Skyrim. Véritable référence du jeu de rôle en monde ouvert, il a reçu plus de 200 distinctions, dont celles de jeu de l\'année par DICE et BAFTA.'),
(61, '../Images/BannerHorizontal/FalloutNVBannerHorizontal.jpg', '../Images/Logos/FalloutNVLogo.png', 'https://store.steampowered.com/app/22380', 'https://www.youtube.com/embed/l-x-1fm2cq8?si=OL-1M5IuoQ05Zdic', 'Bienvenue à Vegas. Le nouveau Vegas. Amusez-vous bien !'),
(62, '../Images/BannerHorizontal/MassEffectBannerHorizontal.jpg', '../Images/Logos/MassEffectLogo.png', 'https://store.steampowered.com/app/1328670', 'https://www.youtube.com/embed/n8i53TtQ6IQ?si=VHuhtTPITVeOHsX-', 'Mass Effect™ Édition Légendaire, entièrement remasterisé et optimisé en 4K Ultra HD, inclut le contenu solo de base et plus de 40 DLC pour les jeux très renommés Mass Effect, Mass Effect 2 et Mass Effect 3, ainsi que les armes, les armures et les packs promotionnels !'),
(63, '../Images/BannerHorizontal/DragonAgeInquisitionBannerHorizontal.jpg', '../Images/Logos/DragonAgeInquisitionLogo.png', 'https://store.steampowered.com/app/1222690', 'https://www.youtube.com/embed/jJqxfkgSUog?si=TNwfhePdnIaQwF-I', 'Chaque choix compte pour sauver Thédas. Créez votre héros, choisissez ses compétences et constituez l’équipe qui éradiquera le mal du royaume.'),
(64, '../Images/BannerHorizontal/ACOdysseyBannerHorizontal.jpg', '../Images/Logos/ACOdysseyLogo.png', 'https://store.steampowered.com/app/812140', 'https://www.youtube.com/embed/6F8L3d_OIE0?si=-yDJ4fo7_LiOTsr8', 'Dans ce jeu d\'action-aventure, mettez le cap sur la Grèce antique pour en changer le destin. Disputez des combats sauvages sur terre et sur mer, façonnez votre destin, de paria à légende, et percez les secrets de votre passé.'),
(65, '../Images/BannerHorizontal/ACValhallaBannerHorizontal.jpg', '../Images/Logos/ACValhallaLogo.png', 'https://store.steampowered.com/app/2208920', 'https://www.youtube.com/embed/ssrNcwxALS4?si=LQxXhx5e88AOg3av', 'Assassin’s Creed Valhalla est un jeu d\'action-aventure dans lequel vous incarnez un guerrier viking dont l\'enfance a été bercée par des contes de batailles et de gloire. Partez à la découverte d\'un monde ouvert dynamique en plein âge des ténèbres de l\'Angleterre.'),
(66, '../Images/BannerHorizontal/FarCry5BannerHorizontal.jpg', '../Images/Logos/FarCry5Logo.png', 'https://store.steampowered.com/app/552520', 'https://www.youtube.com/embed/Kdaoe4hbMso?si=Z-4uJlfi8oQCgShP', 'Bienvenue à Hope County dans le Montana, terre de liberté et de bravoure qui abrite un culte fanatique prêchant la fin du monde : Eden’s Gate. Défiez son chef, Joseph Seed, et ses frères et soeur, et libérez les citoyens.'),
(67, '../Images/BannerHorizontal/FarCry6BannerHorizontal.jpg', '../Images/Logos/FarCry6Logo.png', 'https://store.steampowered.com/app/2369390', 'https://www.youtube.com/embed/-IJuKT1mHO8?si=etOvBVi5qCMZRzIF', 'Bienvenue sur Yara, un paradis tropical figé dans le temps. Dans Far Cry® 6, les joueurs se retrouvent projetés au cœur d\'une guérilla moderne. Antón Castillo, dictateur de l\'île, est bien décidé à rendre sa gloire d\'antan à la nation, et son fils Diego suit les traces sanglantes de son père.'),
(68, '../Images/BannerHorizontal/Hitman3BannerHorizontal.jpg', '../Images/Logos/Hitman3Logo.png', 'https://store.steampowered.com/app/1659040', 'https://www.youtube.com/embed/avAXhnbs69w?si=5ViNSMCkbI7YA_-Y', 'Entrez dans le monde de l\'assassin ultime. HITMAN le monde de l\'assassinat regroupe le meilleur de HITMAN, HITMAN 2 et HITMAN 3, y compris la campagne principale, les modes Contrat, Escalade, Cible fugitive et Freelance, le mode de jeu inspiré du genre roguelike.'),
(69, '../Images/BannerHorizontal/Hitman2BannerHorizontal.jpg', '../Images/Logos/Hitman2Logo.png', 'https://store.steampowered.com/app/863550', 'https://www.youtube.com/embed/R8aRCwbZGek?si=9jK68WtsiWrKom49', 'Parcourez le monde et traquez vos cibles dans les lieux exotiques du jeu HITMAN™ 2. Des rues baignées de soleil aux sombres et dangereuses forêts tropicales, dans cette histoire d\'espionnage exceptionnelle, aucun endroit n\'échappe à l\'assassin le plus créatif du monde : l\'Agent 47.'),
(70, '../Images/BannerHorizontal/HitmanBannerHorizontal.jpg', '../Images/Logos/HitmanLogo.png', 'https://store.steampowered.com/app/236870', 'https://www.youtube.com/embed/5yktoernWtw?si=c2IInx3zMloVnaCt', 'Il existe un monde au-delà du nôtre. Au-delà des nations, de la justice, de l’éthique. Ce monde ne dort jamais. Il se trouve partout. Une fois que vous y entrez, il n\'y a pas de retour possible... Bienvenue dans un monde d\'assassinats : vous êtes l’agent 47, le tueur à gages ultime.'),
(71, '../Images/BannerHorizontal/RE2BannerHorizontal.jpg', '../Images/Logos/RE2Logo.png', 'https://store.steampowered.com/app/883710', 'https://www.youtube.com/embed/u3wS-Q2KBpk?si=RPkOkLw7j9UBxqtT', 'Sorti à l\'origine en 1998, Resident Evil 2, l\'un des jeux les plus emblématiques de son époque, revient dans une version entièrement révisée pour les consoles nouvelles générations.'),
(72, '../Images/BannerHorizontal/RE3BannerHorizontal.jpg', '../Images/Logos/RE3Logo.png', 'https://store.steampowered.com/app/952060', 'https://www.youtube.com/embed/v_ht2suIL10?si=qmhSnziS-x_XN7iE', 'Jill Valentine fait partie des derniers témoins des atrocités commises par Umbrella à Raccoon City. Pour l\'empêcher de parler, Umbrella a fait appel à son arme secrète, Nemesis ! Comprend également Resident Evil Resistance, un nouveau jeu multijoueurs à 1 contre 4.'),
(73, '../Images/BannerHorizontal/REVillageBannerHorizontal.jpg', '../Images/Logos/REVillageLogo.png', 'https://store.steampowered.com/app/1196590', 'https://www.youtube.com/embed/arEdruKxrQ8?si=_HO-BkxNRdlRI3We', 'Survie et épouvante atteignent des sommets dans le 8e titre de la franchise Resident Evil : Resident Evil Village. Graphismes ultra-détaillés, action intense en vue subjective et récit palpitant : la peur n\'a jamais été aussi palpable.'),
(74, '../Images/BannerHorizontal/DMC5BannerHorizontal.jpg', '../Images/Logos/DMC5Logo.png', 'https://store.steampowered.com/app/601150', 'https://www.youtube.com/embed/KMSGj9Y2T9Q?si=1hzj70dH7gZoxIzO', 'Le chasseur de démons ultime fait son grand retour dans le jeu que les fans d\'action attendent avec impatience !'),
(75, '../Images/BannerHorizontal/SekiroBannerHorizontal.jpg', '../Images/Logos/SekiroLogo.png', 'https://store.steampowered.com/app/814380', 'https://www.youtube.com/embed/rXMX4YJ7Lks?si=Rzn2DjM6cD1wbMjb', 'Suivez votre chemin vers la vengeance dans cette nouvelle aventure primée développée par FromSoftware, les créateurs de Bloodborne et de Dark Souls. Vengez-vous. Recouvrez votre honneur. Tuez avec ingéniosité.'),
(76, '../Images/BannerHorizontal/Nioh2BannerHorizontal.jpg', '../Images/Logos/Nioh2Logo.png', 'https://store.steampowered.com/app/1325200', 'https://www.youtube.com/embed/hHt30e-r-G8?si=MlKiRtdj8YwikMIO', 'Décimez des hordes de redoutables yokai dans ce jeu de rôle d\'action brutal et ultra exigeant. Créez votre propre protagoniste et embarquez pour une aventure qui vous fera parcourir les terres dévastées du Japon de l\'époque Sengoku.'),
(77, '../Images/BannerHorizontal/GhostrunnerBannerHorizontal.jpg', '../Images/Logos/GhostrunnerLogo.png', 'https://store.steampowered.com/app/1139900', 'https://www.youtube.com/embed/KI4_4NRHYlI?si=GeQv4dmFhbtMGHNC', 'Ghostrunner offre une expérience unique en solo : des combats violents et rapides, et un cadre original mêlant science-fiction à des thèmes post-apocalyptiques. Il raconte l\'histoire d\'un monde déjà terminé et de ses habitants qui luttent pour survivre.'),
(78, '../Images/BannerHorizontal/ControlBannerHorizontal.jpg', '../Images/Logos/ControlLogo.png', 'https://store.steampowered.com/app/870780', 'https://www.youtube.com/embed/PT5yMfC9LQM?si=ooOFZehI83StxIGd', 'Lauréat de plus de 80 prix et récompenses, Control est un jeu d\'action-aventure à la 3ème personne qui vous tiendra en haleine.'),
(79, '../Images/BannerHorizontal/AlanWakeBannerHorizontal.jpg', '../Images/Logos/AlanWakeLogo.png', 'https://store.steampowered.com/app/108710', 'https://www.youtube.com/embed/sSB4QcQMm6E?si=bkGfCx_34vdgBMVg', 'Une présence obscure rôde dans la petite ville de Bright Falls, poussant Alan Wake au bord de la folie dans son combat pour résoudre ce mystère et sauver sa femme.'),
(80, '../Images/BannerHorizontal/QuantumBreakBannerHorizontal.jpg', '../Images/Logos/QuantumBreakLogo.png', 'https://store.steampowered.com/app/474960', 'https://www.youtube.com/embed/ruY1eT9bXiw?si=XTDQSwwYE9Tll3WN', 'Remedy Entertainment, maître des jeux d\'action cinématiques, vous présente Quantum Break, une aventure temporelle pleine d’action et de suspense. Quantum Break mêle jeu et série télévisée, et les décisions prises dans l\'un affecteront l\'autre.'),
(81, '../Images/BannerHorizontal/Sims4BannerHorizontal.jpg', '../Images/Logos/Sims4Logo.png', 'https://store.steampowered.com/app/1222670', 'https://www.youtube.com/embed/GJENRAB4ykA?si=97FeGKcGXOOZPuuI', 'Profitez du pouvoir de créer et de contrôler des personnages dans un monde virtuel où il n\'y a aucune règle. Soyez puissant et libre, amusez-vous et jouez avec la vie !'),
(82, '../Images/BannerHorizontal/PlanetZooBannerHorizontal.jpg', '../Images/Logos/PlanetZooLogo.png', 'https://store.steampowered.com/app/703080', 'https://www.youtube.com/embed/UCgppIh1tnY?si=zhucilHtdyDnnEAx', 'Avec Planet Zoo, construisez un monde idéal pour nos amies les bêtes ! Les développeurs de Planet Coaster et de Zoo Tycoon vous proposent la simulation de zoo ultime. Bâtissez des habitats, gérez votre zoo et prenez soin des animaux qui exploreront l\'univers que vous leur aurez créé.'),
(83, '../Images/BannerHorizontal/PlanetCoasterBannerHorizontal.jpg', '../Images/Logos/PlanetCoasterLogo.png', 'https://store.steampowered.com/app/493340', 'https://www.youtube.com/embed/QDqlXGg394k?si=6XqWrbJ1ZZJiba7L', 'Planet Coaster® - l\'avenir des jeux de simulation de montagnes russes est arrivé ! Surprenez et enchantez une foule de visiteurs en bâtissant votre empire. Laissez libre cours à votre imagination et partagez votre succès avec le reste du monde. Comprend à présent la mise à jour d\'hiver gratuite.'),
(84, '../Images/BannerHorizontal/ZooTycoonBannerHorizontal.jpg', '../Images/Logos/ZooTycoonLogo.png', 'https://store.steampowered.com/app/613880', 'https://www.youtube.com/embed/_EoiimGQcoU?si=XnBRDx2iUXdyH7bV', 'La série Zoo Tycoon, qui connaît un immense succès, s\'apprête à faire monter d\'un cran l\'excitation, les défis et le plaisir de construire le zoo ultime. Laissez libre cours à votre imagination avec Zoo Tycoon : Ultimate Animal Collection. Construisez, gérez et entretenez le zoo de vos rêves, seul ou avec jusqu\'à quatre joueurs.'),
(85, '../Images/BannerHorizontal/BanishedBannerHorizontal.jpg', '../Images/Logos/BanishedLogo.png', 'https://store.steampowered.com/app/242920', 'https://www.youtube.com/embed/Ls8FBFFjMxk?si=1GnSibNm9sB2Nn6A', 'Dans ce jeu de stratégie de construction de ville, vous incarnez un groupe de voyageurs exilés qui décident de recommencer leur vie sur une nouvelle terre. Ils n\'ont pour seuls biens que les vêtements qu\'ils portent et une charrette remplie de provisions provenant de leur pays d\'origine. Les habitants de Banished constituent votre principale ressource.'),
(86, '../Images/BannerHorizontal/AgeOfEmpires2BannerHorizontal.jpg', '../Images/Logos/AgeOfEmpires2Logo.png', 'https://store.steampowered.com/app/813780', 'https://www.youtube.com/embed/24VGBMYV0b4?si=wThIUeNIK1Q4ZrFi', 'Age of Empires II: Definitive Edition fête le 20e anniversaire de l\'une des franchises de jeux de stratégie les plus populaires au monde avec des graphismes époustouflants en 4K Ultra HD et une bande originale entièrement remasterisée.'),
(87, '../Images/BannerHorizontal/AgeOfEmpires4BannerHorizontal.jpg', '../Images/Logos/AgeOfEmpires4Logo.png', 'https://store.steampowered.com/app/1466860', 'https://www.youtube.com/embed/5TnynE3PuDE?si=OAA8WNdMC5VaIsrb', 'Age of Empires IV : Édition Anniversaire sonne le début d\'une nouvelle ère pour les jeux de stratégie en temps réel avec sa myriade de nouveau contenu gratuit dont de nouvelles civilisations, de nouvelles cartes, plusieurs mises à jour et langues supplémentaires, ainsi que de nouvelles maîtrises, défis, provocations et codes de triches - le tout pour une valeur incroyable qui englobe plus d’histoire que jamais !'),
(88, '../Images/BannerHorizontal/StrongholdCrusaderBannerHorizontal.jpg', '../Images/Logos/StrongholdCrusaderLogo.png', 'https://store.steampowered.com/app/40970', 'https://www.youtube.com/embed/D95s3pdGk38?si=2A8pdFiB0U7BpZqf', 'La suite tant attendue du best-seller Stronghold, Stronghold Crusader HD vous plonge dans des batailles historiques et des sièges de châteaux au temps des Croisades avec des adversaires IA redoutables, de nouvelles unités, 4 campagnes historiques et plus de 100 missions d\'escarmouche.'),
(89, '../Images/BannerHorizontal/CompanyOfHeroes2BannerHorizontal.jpg', '../Images/Logos/CompanyOfHeroes2Logo.png', 'https://store.steampowered.com/app/231430', 'https://www.youtube.com/embed/B5j0cBqhm3A?si=0rCfDFnE-mPVect_', 'Plongez dans le RTS ultime sur la Seconde Guerre Mondiale avec le jeu COH 2 et ses extensions. Ce pack inclut le jeu d\'origine, pour lequel vous pouvez ensuite acheter The Western Front Armies, Ardennes Assault ou encore The British Forces. Voir infos additionnelles ci-dessous.'),
(90, '../Images/BannerHorizontal/40KDawnOfWarBannerHorizontal.jpg', '../Images/Logos/40KDawnOfWarLogo.png', 'https://store.steampowered.com/app/15620', 'https://www.youtube.com/embed/wSBBM-lqRSQ?si=vVl9jFDcxZhdXOvs', 'Tout Warhammer 40,000: Dawn of War II réuni au même endroit. Jouez au légendaire RTS dans toute sa splendeur, avec trois campagnes entières, six factions multijoueur et un mode Last Stand coopératif avec huit héros uniques.'),
(91, '../Images/BannerHorizontal/SlayTheSpireBannerHorizontal.jpg', '../Images/Logos/SlayTheSpireLogo.png', 'https://store.steampowered.com/app/646570', 'https://www.youtube.com/embed/NHRpS2DzIAI?si=5fOmXzugTzJk6WTv', 'En fusionnant les jeux de cartes avec les roguelikes, nous sommes arrivés à créer le jeu de cartes solo le plus intéressant possible. Construisez votre deck, rencontrez toutes sortes d\'ennemis bizarres, découvrez des reliques aux pouvoirs immenses, et éradiquez la tour!'),
(92, '../Images/BannerHorizontal/IntoTheBreachBannerHorizontal.jpg', '../Images/Logos/IntoTheBreachLogo.png', 'https://store.steampowered.com/app/590380', 'https://www.youtube.com/embed/oaiFvuWsfy8?si=ixKQgcuEzLqWR9Uh', 'Contrôlez de puissants Mechas venus du futur pour vaincre une terrible menace extraterrestre. Chaque tentative faite pour sauver le monde est un nouveau défi généré aléatoirement dans ce jeu de stratégie au tour par tour.'),
(93, '../Images/BannerHorizontal/FTLBannerHorizontal.jpg', '../Images/Logos/FTLLogo.png', 'https://store.steampowered.com/app/212680', 'https://www.youtube.com/embed/lQ4FRcu_bjs?si=Q_1I36ZSN0wXYJCX', 'Ce jeu de simulation spatiale de type rogue-like vous permet de piloter votre vaisseau dans une galaxie générée aléatoirement où vous pourrez vous couvrir de gloire... si vous parvenez à éviter la défaite.'),
(94, '../Images/BannerHorizontal/HotlineMiamiBannerHorizontal.jpg', '../Images/Logos/HotlineMiamiLogo.png', 'https://store.steampowered.com/app/219150', 'https://www.youtube.com/embed/mg5s5Dq50Rg?si=pY1KH5fUpn5_1hxg', 'Hotline Miami est un jeu à l\'action explosive qui déborde de brutalité brute, de fusillades et de combats rapprochés sanglants et violents.'),
(95, '../Images/BannerHorizontal/KatanaZEROBannerHorizontal.jpg', '../Images/Logos/KatanaZEROLogo.png', 'https://store.steampowered.com/app/460950', 'https://www.youtube.com/embed/-GcJC0N07Nk?si=JHyUV8Dg9kcz5agH', 'Katana ZERO est un jeu de plate-formes à l\'ambiance très noire, bourré d\'action et de combats mortels. Faites parler votre lame et manipulez le temps pour découvrir votre passé dans un éblouissant ballet acrobatique et brutal.'),
(96, '../Images/BannerHorizontal/CupheadBannerHorizontal.jpg', '../Images/Logos/CupheadLogo.png', 'https://store.steampowered.com/app/268910', 'https://www.youtube.com/embed/NN-9SQXoi50?si=EKT5Cwqs3LQsyURs', 'Incarnez Cuphead ou Mugman (en solo ou en mode coopératif local) et explorez des mondes étranges, mettez la main sur des armes inédites, apprenez des techniques spéciales redoutables et découvrez des secrets cachés pour essayer de rembourser votre dette au Diable en personne !'),
(97, '../Images/BannerHorizontal/HollowKnightBannerHorizontal.jpg', '../Images/Logos/HollowKnightLogo.png', 'https://store.steampowered.com/app/367520', 'https://www.youtube.com/embed/UAO2urG23S4?si=Ewla3tChTjFfxG9p', 'Choisissez votre destin dans Hollow Knight ! Une aventure épique et pleine d’action, qui vous plongera dans un vaste royaume en ruine peuplé d’insectes et de héros. Dans un monde en 2D classique, dessiné à la main.'),
(98, '../Images/BannerHorizontal/Ori1BannerHorizontal.jpg', '../Images/Logos/Ori1Logo.png', 'https://store.steampowered.com/app/387290', 'https://www.youtube.com/embed/cklw-Yu3moE?si=1GxlUtsbpt25WvJV', '\"Ori and the Blind Forest\" relate l\'histoire d\'une jeune créature orpheline à la destinée héroïque, au travers d\'un jeu de plateforme et d\'action aux graphismes époustouflants, développé par Moon Studios.'),
(99, '../Images/BannerHorizontal/Ori2BannerHorizontal.jpg', '../Images/Logos/Ori2Logo.png', 'https://store.steampowered.com/app/1057090', 'https://www.youtube.com/embed/kd0zbNw1VOg?si=GXZIsMAgq9sDQjmk', 'Embarquez pour une nouvelle aventure dans un monde vaste et dépaysant où vous rencontrerez des ennemis gigantesques et des énigmes ardues dans votre quête pour révéler la destinée d\'Ori.'),
(100, '../Images/BannerHorizontal/CelesteBannerHorizontal.jpg', '../Images/Logos/CelesteLogo.png', 'https://store.steampowered.com/app/504230', 'https://www.youtube.com/embed/FqBj2IGg6Uw?si=KVFd8KcEx4E2wcJY', 'Aidez Madeline à survivre à ses démons intérieurs au mont Celeste, dans ce jeu de plateformes ultra relevé, réalisé par les créateurs du classique TowerFall. Relevez des centaines de défis faits à la main, découvrez tous les secrets et dévoilez le mystère de la montagne.'),
(101, '../Images/BannerHorizontal/SARTBannerHorizontal.jpg', '../Images/Logos/SARTLogo.png', 'https://store.steampowered.com/app/212480', 'https://www.youtube.com/embed/7CU3CDOK2Ag?si=6BZvLlms2HwGwiOt', 'Affrontez-vous sur terre, sur mer et dans les airs grâce aux incroyables véhicules transformables en voitures, bateaux ou avions en pleine course. '),
(102, '../Images/BannerHorizontal/NFSHeatBannerHorizontal.jpg', '../Images/Logos/NFSHeatLogo.png', 'https://store.steampowered.com/app/1222680', 'https://www.youtube.com/embed/9ewiJJe_nYI?si=JJzvHvWp1bnKm4Yn', 'Pilotez le jour et risquez tout la nuit dans Need for Speed™ Heat, un jeu palpitant de courses urbaines où les limites de la légalité s\'estompent dès que le soleil se couche. '),
(103, '../Images/BannerHorizontal/TheCrewMotorfestBannerHorizontal.jpg', '../Images/Logos/TheCrewMotorfestLogo.png', 'https://store.steampowered.com/app/2698940', 'https://www.youtube.com/embed/kpVfIqxsE24?si=iCBWlHP2witvAu6y', 'The Crew Motorfest est un jeu de course en ligne en monde ouvert qui se déroule sur l\'île d\'O\'ahu, à Hawaï. Découvrez le meilleur de la culture automobile en participant à des courses intenses, en prenant part à des épreuves thématiques et en collectionnant des centaines de voitures. '),
(104, '../Images/BannerHorizontal/NFSHotPursuitBannerHorizontal.jpg', '../Images/Logos/NFSHotPursuitLogo.png', 'https://store.steampowered.com/app/1328660', 'https://www.youtube.com/embed/HLiY6wwfGX4?si=6kJPLGx_VFSAfnYR', 'Ressentez le frisson de la poursuite et l\'adrénaline de l\'évasion au volant des voitures haute performance les plus rapides au monde dans Need for Speed™ Hot Pursuit Remastered - Une expérience de course palpitante, compétitive et sociale. '),
(105, '../Images/BannerHorizontal/Asphalt9BannerHorizontal.jpg', '../Images/Logos/Asphalt9Logo.png', 'https://store.steampowered.com/app/1815780', 'https://www.youtube.com/embed/rH-eZd01NEQ?si=i0lf14b1E1FChCxc', 'Éveillez votre esprit compétitif avec Asphalt Legends et courez ensemble ! Alliez-vous à d\'autres joueurs pour foncer dans des courses d\'arcade intenses, effectuez des cascades époustouflantes et filez vers la victoire au volant des meilleures hypercars ! '),
(106, '../Images/BannerHorizontal/BeamNGBannerHorizontal.jpg', '../Images/Logos/BeamNGLogo.png', 'https://store.steampowered.com/app/284160', 'https://www.youtube.com/embed/7vGYVUCmxeI?si=5Gmsa0PcDEG2TgWh', 'Un simulateur de véhicules basé sur la dynamique des corps mous et capable de faire à peu près n\'importe quoi.'),
(107, '../Images/BannerHorizontal/AssetoCorsaBannerHorizontal.jpg', '../Images/Logos/AssetoCorsaLogo.png', 'https://store.steampowered.com/app/244210', 'https://www.youtube.com/embed/TDFN-E30jhU?si=OG9hBBniiNhkoJqB', 'Assetto Corsa v1.16 ajoute le nouveau circuit « Laguna Seca » créé au laser, ainsi que 7 nouvelles voitures parmi lesquelles se trouve l\'Alfa Romeo Giulia Quadrifoglio, un modèle très attendu ! Consultez les notes de mise à jour pour en savoir plus !'),
(108, '../Images/BannerHorizontal/ForzaHorizon6BannerHorizontal.jpg', '../Images/Logos/ForzaHorizon6Logo.png', 'https://store.steampowered.com/app/2483190', 'https://www.youtube.com/embed/oYhaW-Vr4wg?si=2bEamEuyTZo5Cqcr', 'Découvrez les paysages à couper le souffle du Japon au volant de plus de 550 voitures réelles et devenez une légende de la course automobile dans la plus grande aventure motorisée Forza Horizon à ce jour.'),
(109, '../Images/BannerHorizontal/NFSUnboundBannerHorizontal.jpg', '../Images/Logos/NFSUnboundLogo.png', 'https://store.steampowered.com/app/1846380', 'https://www.youtube.com/embed/H2Y8XCe7F9E?si=D_aGMETDUJ_t0Bl1', 'Pour atteindre le sommet, pas le droit à l’erreur ! Défiez la police et participez aux qualifications pour participer au Grand, la course de rue ultime. Sublimez votre garage avec des voitures ultra personalisées, et brillez grâce à votre style unique.');
INSERT INTO `carrousel` (`id_jeu`, `image_horizontale`, `logo`, `lien_steam`, `lien_youtube`, `description`) VALUES
(110, '../Images/BannerHorizontal/SGARBannerHorizontal.jpg', '../Images/Logos/SGARLogo.png', 'https://store.steampowered.com/app/2918300', 'https://www.youtube.com/embed/NKUPFtZ4S00?si=A0dzA24rwRt22wVH', 'SPLITGATE: Arena Reloaded fusionne le meilleur de Splitgate 1 et 2, ramenant cette sensation de shooter d\'arène classique. Jouez gratuitement dès maintenant.'),
(111, '../Images/BannerHorizontal/BatmanAABannerHorizontal.jpg', '../Images/Logos/BatmanAALogo.png', 'https://store.steampowered.com/app/35140', 'https://www.youtube.com/embed/T8bu2Y_cZb8?si=McCwCpLteeoDz2o1', 'Soyez Batman et affrontez les super-vilains de Gotham City. Parcourez l\'asile d\'Arkham et son île terrifiante.'),
(112, '../Images/BannerHorizontal/BatmanACBannerHorizontal.jpg', '../Images/Logos/BatmanACLogo.png', 'https://store.steampowered.com/app/200260', 'https://www.youtube.com/embed/MlX--IPxTRU?si=3Qtarcge189VpNLM', 'Batman: Arkham City s’appuie sur l’intensité et l’atmosphère saisissante de Batman: Arkham Asylum, et propulse les joueurs en plein cœur d’Arkham City - un monde ouvert cinq fois plus vaste que celui de Batman: Arkham Asylum.'),
(113, '../Images/BannerHorizontal/BatmanAOBannerHorizontal.jpg', '../Images/Logos/BatmanAOLogo.png', 'https://store.steampowered.com/app/209000', 'https://www.youtube.com/embed/9pnK8akbd2M?si=DtIQoaQqR9JKaOCA', 'Batman™: Arkham Origins est le prochain opus de la série de jeux vidéo à succès des Batman : Arkham. Développé par WB Games Montréal, le jeu vous fait découvrir une Gotham City agrandie dans une préquelle originale et intrigante qui se déroulé plusieurs années avant les événements de Batman: Arkham Asylum et Batman: Arkham City.'),
(114, '../Images/BannerHorizontal/BatmanAKBannerHorizontal.jpg', '../Images/Logos/BatmanAKLogo.png', 'https://store.steampowered.com/app/208650', 'https://www.youtube.com/embed/FX1uGqXD2n8?si=cMQbywdkgu2pQo-y', 'Batman™: Arkham Knight marque le dénouement épique de la trilogie primée Arkham, créée par les studios Rocksteady. Développé exclusivement pour les consoles nouvelle génération, Batman: Arkham Knight introduit une version unique de la Batmobile, créée par Rocksteady.');

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
(100, 14),
(101, 21),
(102, 22),
(103, 23),
(104, 24),
(105, 25),
(106, 26),
(107, 27),
(108, 28),
(109, 29),
(110, 30),
(111, 31),
(112, 31),
(113, 32),
(114, 31);

-- --------------------------------------------------------

--
-- Structure de la table `developpeur`
--

CREATE TABLE `developpeur` (
  `id_developpeur` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `developpeur`
--

INSERT INTO `developpeur` (`id_developpeur`, `nom`) VALUES
(1, 'Valve Corporation'),
(2, 'Rockstar North'),
(3, 'CD Projekt Red'),
(4, 'FromSoftware'),
(5, 'Respawn Entertainment'),
(6, 'Obsidian Entertainment'),
(7, 'Epic Games'),
(8, 'Treyarch'),
(9, 'MachineGames'),
(10, 'Naughty Dog'),
(11, 'ConcernedApe'),
(12, 'Facepunch Studios'),
(13, 'Wildcard Studios'),
(14, 'Supergiant Games'),
(15, 'Behaviour Interactive'),
(16, 'RedLynx'),
(17, 'Focus Home Interactive'),
(18, 'Klei Entertainment'),
(19, 'Firaxis Games'),
(20, 'Saber Interactive'),
(21, 'Sumo Digital'),
(22, 'Ghost Games'),
(23, 'Ubisoft Ivory Tower'),
(24, 'Stellar Entertainment Limited'),
(25, 'Gameloft'),
(26, 'BeamNG'),
(27, 'Kunos Simulazioni'),
(28, 'Playground Games'),
(29, 'Criterion Games'),
(30, '1047 Games'),
(31, 'Rocksteady'),
(32, 'Warner Bros Montreal'),
(33, 'PUBG CORPORATION'),
(34, 'Rockstar Games'),
(35, 'Re-Logic'),
(36, 'Sports Interactive'),
(37, 'Colossal Order'),
(38, 'Paradox Development Studio'),
(39, 'CREATIVE ASSEMBLY'),
(40, 'Innersloth'),
(41, 'Kinetic Games'),
(42, 'Iron Gate'),
(43, 'Ubisoft Montreal'),
(44, 'Digital Extremes'),
(45, 'Bungie'),
(46, 'CAPCOM Co., Ltd.'),
(47, 'Mediatonic'),
(48, 'OVERKILL - A Starbreeze Studio'),
(49, 'Wube Software LTD.'),
(50, 'Coffee Stain Studios'),
(51, 'Hello Games'),
(52, 'Ludeon Studios'),
(53, 'The Indie Stone'),
(54, 'Unknown World Entertainment'),
(55, 'Endnight Games Ltd'),
(56, 'Rare Ltd'),
(57, 'Asobo Studios'),
(58, 'SCS Software'),
(59, 'Squad'),
(60, 'Gearbox Software'),
(61, 'Irrational Games'),
(62, 'id Software'),
(63, 'Bethesda Game Studios'),
(64, 'BioWare'),
(65, 'Ubisoft'),
(68, 'IO Interactive'),
(69, 'KOEI TECMO GAMES CO., LTD.'),
(70, 'One More Level'),
(71, 'Remedy Entertainment'),
(72, 'Maxis'),


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
(100, 14),
(101, 23),
(102, 5),
(103, 6),
(104, 5),
(105, 26),
(106, 27),
(107, 28),
(108, 29),
(109, 5),
(110, 30),
(111, 19),
(112, 19),
(113, 19),
(114, 19);

-- --------------------------------------------------------

--
-- Structure de la table `editeur`
--

CREATE TABLE `editeur` (
  `id_editeur` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `editeur`
--

INSERT INTO `editeur` (`id_editeur`, `nom`) VALUES
(1, 'Valve Corporation'),
(2, 'Rockstar Games'),
(3, 'CD Projekt'),
(4, 'FromSoftware'),
(5, 'Electronic Arts'),
(6, 'Ubisoft'),
(7, 'Activision'),
(8, 'Bethesda Softworks'),
(9, 'Square Enix'),
(10, 'Capcom'),
(11, 'Bandai Namco Entertainment'),
(12, 'Paradox Interactive'),
(13, 'Coffee Stain Publishing'),
(14, 'Raw Fury'),
(15, 'Devolver Digital'),
(16, 'Team17'),
(17, 'Focus Entertainment'),
(18, '505 Games'),
(19, 'Warner Bros. Games'),
(20, 'Take-Two Interactive'),
(21, 'Microsoft'),
(22, 'Sony Interactive Entertainment'),
(23, 'Sega'),
(24, 'Epic Games'),
(25, 'Klei Entertainment'),
(26, 'Gameloft'),
(27, 'BeamNG'),
(28, 'Kunos Simulazioni'),
(29, 'Xbox Games Studios'),
(30, '1047 Games');

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
(38, 'No Man\'s Sky', '2016-08-12', 9, 'https://store.steampowered.com/app/275850', '../Images/BannerVertical/NoMansSkyBannerVertical.jpg', 9),
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
(84, 'Zoo Tycoon', '2013-10-31', 8, 'https://store.steampowered.com/app/613880', '../Images/BannerVertical/ZooTycoonBannerVertical.jpg', 5),
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
(100, 'Celeste', '2018-01-25', 10, 'https://store.steampowered.com/app/504230', '../Images/BannerVertical/CelesteBannerVertical.jpg', 11),
(101, 'Sonic & All-Stars Racing Transformed', '2013-01-31', 9, 'https://store.steampowered.com/app/212480', '../Images/BannerVertical/SARTBannerVertical.jpg', 8),
(102, 'Need for Speed : Heat', '2019-11-08', 8, 'https://store.steampowered.com/app/1222680', '../Images/BannerVertical//NFSHeatBannerVertical.jpg', 8),
(103, 'The Crew : Motorfest', '2024-04-18', 8, 'https://store.steampowered.com/app/2698940', '../Images/BannerVertical/TheCrewMotorfestBannerVertical.jpg', 8),
(104, 'Need for Speed : Hot Pursuit Remastered', '2020-11-06', 8, 'https://store.steampowered.com/app/1328660', '../Images/BannerVertical/NFSHotPursuitBannerVertical.jpg', 8),
(105, 'Asphalt Legends', '2022-08-02', 8, 'https://store.steampowered.com/app/1815780', '../Images/BannerVertical/Asphalt9BannerVertical.jpg', 8),
(106, 'BeamNGdrive', '2015-05-29', 10, 'https://store.steampowered.com/app/284160', '../Images/BannerVertical/BeamNGBannerVertical.jpg', 8),
(107, 'Assetto Corsa', '2014-12-19', 9, 'https://store.steampowered.com/app/244210', '../Images/BannerVertical/AssetoCorsaBannerVertical.jpg', 8),
(108, 'Forza Horizon 6', '2026-05-19', 9, 'https://store.steampowered.com/app/2483190', '../Images/BannerVertical/ForzaHorizon6BannerVertical.jpg', 8),
(109, 'Need for Speed : Unbound', '2022-12-02', 6, 'https://store.steampowered.com/app/1846380', '../Images/BannerVertical/NFSUnboundBannerVertical.jpg', 8),
(110, 'SPLITGATE : Arena Reloaded', '2025-05-22', 7, 'https://store.steampowered.com/app/2918300', '../Images/BannerVertical/SGARBannerVertical.jpg', 4),
(111, 'Batman : Arkham Asylum', '2009-08-25', 9, 'https://store.steampowered.com/app/35140', '../Images/BannerVertical/BatmanAABannerVertical.jpg', 2),
(112, 'Batman : Arkham City', '2011-10-18', 9, 'https://store.steampowered.com/app/200260', '../Images/BannerVertical/BatmanACBannerVertical.jpg', 2),
(113, 'Batman : Arkham Origins', '2013-10-25', 8, 'https://store.steampowered.com/app/209000', '../Images/BannerVertical/BatmanAOBannerVertical.jpg', 2),
(114, 'Batman : Arkham Knight', '2015-06-23', 9, 'https://store.steampowered.com/app/208650', '../Images/BannerVertical/BatmanAKBannerVertical.jpg', 2);

-- --------------------------------------------------------

--
-- Structure de la table `preferences`
--

CREATE TABLE `preferences` (
  `fkUtilisateur` int(11) NOT NULL,
  `recent` varchar(1000) NOT NULL,
  `favori` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `preferences`
--

INSERT INTO `preferences` (`fkUtilisateur`, `recent`, `favori`) VALUES
(9, '10, 44, 75, 8, 80, 68, 69, 70, 77, 74, 78, 53, 5, 87, 76, 30', '0'),
(10, '11, 94', '0');

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
-- Index pour les tables déchargées
--

--
-- Index pour la table `carrousel`
--
ALTER TABLE `carrousel`
  ADD PRIMARY KEY (`id_jeu`);

--
-- Index pour la table `developpe`
--
ALTER TABLE `developpe`
  ADD KEY `id_jeu` (`id_jeu`,`id_developpeur`);

--
-- Index pour la table `developpeur`
--
ALTER TABLE `developpeur`
  ADD PRIMARY KEY (`id_developpeur`);

--
-- Index pour la table `edite`
--
ALTER TABLE `edite`
  ADD KEY `id_editeur` (`id_editeur`),
  ADD KEY `id_editeur_2` (`id_editeur`);

--
-- Index pour la table `editeur`
--
ALTER TABLE `editeur`
  ADD PRIMARY KEY (`id_editeur`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Index pour la table `jeu`
--
ALTER TABLE `jeu`
  ADD PRIMARY KEY (`id_jeu`);

--
-- Index pour la table `preferences`
--
ALTER TABLE `preferences`
  ADD KEY `fkUtilisateur` (`fkUtilisateur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
