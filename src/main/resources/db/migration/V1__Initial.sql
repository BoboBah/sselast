-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 31 juil. 2018 à 02:33
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `sse`
--

-- --------------------------------------------------------

--
-- Structure de la table `accident`
--

DROP TABLE IF EXISTS `accident`;
CREATE TABLE IF NOT EXISTS `accident` (
  `id_accident` bigint(20) NOT NULL,
  `causes` varchar(255) DEFAULT NULL,
  `temoins` varchar(255) DEFAULT NULL,
  `tiers_responsable` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_accident`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `accident`
--

INSERT INTO `accident` (`id_accident`, `causes`, `temoins`, `tiers_responsable`) VALUES
(7, 'AAAAAAAAAAAAAAAAAAA', 'AAAAAAAAAAAAAAAA', 'AAAAAAAAAAAA'),
(13, 'BBBBBBBBBBBBB', 'BBBBBBBBBBBBBBB', 'BBBBBBBBBBBBB'),
(19, 'BBBBBBBBBBBBB', 'BBBBBBBBBBBBBBB', 'BBBBBBBBBBBBB'),
(25, 'BBBBBBBBBBBBB', 'BBBBBBBBBBBBBBB', 'BBBBBBBBBBBBB'),
(31, 'BBBBBBBBBBBBB', 'BBBBBBBBBBBBBBB', 'BBBBBBBBBBBBB'),
(37, 'BBBBBBBBBBBBB', 'BBBBBBBBBBBBBBB', 'BBBBBBBBBBBBB'),
(51, 'ddddddddddddddd', 'ddddddddddddddd', 'dddddddddddd'),
(71, 'NNNNNNNNNNNNNNNNNNN', 'NNNNNNNNNNNNNNNNNNNNNN', 'NNNNNNNNNNNNNNNN'),
(77, 'llllllllllllllll', 'lllllllllllllllllll', 'lllllllllllllll'),
(83, 'CCCCCCCCCCCCCCCC', 'CCCCCCCCCCCCCCCC', 'CCCCCCCCCCCCCC'),
(96, 'WWWWWWWWWWWWW', 'WWWWWWWWW', 'WWWWWWWWWW'),
(103, 'SSSSSSSSSSSSSSSSS', 'SSSSSSSSSSSSSSSSS', 'SSSSSSSSSSSSSSS'),
(110, 'XXXXXXXXXXXXX', 'XXXXXXXXXXXXX', 'XXXXXXXXXXXX'),
(118, '', '', ''),
(125, 'BBBBBBBBBBBBB', 'BBBBBBBBBBBBBBB', 'BBBBBBBBBBBBB');

-- --------------------------------------------------------

--
-- Structure de la table `assurance`
--

DROP TABLE IF EXISTS `assurance`;
CREATE TABLE IF NOT EXISTS `assurance` (
  `ninea` bigint(20) NOT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `code_assurance` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `nom_assurance` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `id_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ninea`),
  KEY `FKq0c10ypxe6yhxoi5blaelejbs` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `assurance`
--

INSERT INTO `assurance` (`ninea`, `adresse`, `code_assurance`, `email`, `fax`, `nom_assurance`, `telephone`, `id_user`) VALUES
(2, 'rue berenger', NULL, 'axa@gmail.com', NULL, 'AXA ASSURANCE', NULL, NULL),
(66, 'Rue berenger 3', NULL, 'sonam@gmail.com', NULL, 'Sonam Assurance', '333333333333333', NULL),
(112, 'Rue berenger 3', NULL, 'aliensenegal@gmail.com', NULL, 'CTIK Assurance', '222222222222', NULL),
(128, 'abidjan', NULL, 'nsia@gmail.com', NULL, 'nsia', NULL, 'nsia');

-- --------------------------------------------------------

--
-- Structure de la table `assure`
--

DROP TABLE IF EXISTS `assure`;
CREATE TABLE IF NOT EXISTS `assure` (
  `id_assure` bigint(20) NOT NULL,
  `nom_assure` varchar(255) DEFAULT NULL,
  `prenom_assure` varchar(255) DEFAULT NULL,
  `ref_police` varchar(255) DEFAULT NULL,
  `societe_assure` varchar(255) DEFAULT NULL,
  `type_assure` varchar(255) DEFAULT NULL,
  `ninea` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_assure`),
  KEY `FKegkltb997wdue0c8w8ojyp9qx` (`ninea`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `assure`
--

INSERT INTO `assure` (`id_assure`, `nom_assure`, `prenom_assure`, `ref_police`, `societe_assure`, `type_assure`, `ninea`) VALUES
(3, 'AAAAAAAAAAAAAA', 'AAAAAAAAAAAA', 'AAAAAAAAAA', NULL, NULL, 2),
(9, 'BBBBBBBBBBBBB', 'BBBBBBBBB', 'BBBBBBBBBBBBBBBB', NULL, NULL, 2),
(15, 'BBBBBBBBBBBBB', 'BBBBBBBBB', 'BBBBBBBBBBBBBBBB', NULL, NULL, 2),
(21, 'BBBBBBBBBBBBB', 'BBBBBBBBB', 'BBBBBBBBBBBBBBBB', NULL, NULL, 2),
(27, 'BBBBBBBBBBBBB', 'BBBBBBBBB', 'BBBBBBBBBBBBBBBB', NULL, NULL, 2),
(33, 'BBBBBBBBBBBBB', 'BBBBBBBBB', 'BBBBBBBBBBBBBBBB', NULL, NULL, 2),
(47, 'DDDDDDDDDD', 'DDDDDDDDDDDD', 'DDDDDDDDDD', NULL, NULL, 2),
(67, 'NNNNNNNNNNNNNNNN', 'NNNNNNNNNNNNNNNNNNNN', 'NNNNNNNNNNNNNNN', NULL, NULL, 2),
(73, 'LLLLLLLLLLLLLLLLL', 'LLLLLLLLLLLLLLLL', 'LLLLLLLLL', NULL, NULL, 2),
(79, '', '', 'CCCCCCCCC', NULL, NULL, 2),
(92, 'WWWWWWWWW', 'WWWWWWWWWWW', 'WWWWWWWW', NULL, NULL, 2),
(99, 'SSSSSSSSSSSSSSSS', 'SSSSSSSSSSSSS', 'SSSSSSSSSSS', NULL, NULL, 2),
(106, 'XXXXXXXXXXXXX', 'XXXXXXXXXXXX', 'XXXXXXX', NULL, NULL, 2),
(114, 'MBAYE', 'PATHE', 'BEN677', NULL, NULL, 112),
(121, 'ZZZZZZZZZZZ', 'ZZZZZZZZZZZZZ', 'ZZZZZZZZZZZZZZZ', NULL, NULL, 112),
(129, 'Diop', 'Malick', 'Ben-2333444', NULL, NULL, NULL),
(135, 'Senghor', 'Alou', 'Ben-2333444A', NULL, NULL, 128),
(141, 'Senghor', 'Malick', 'Ben-2333', NULL, NULL, 2),
(147, 'Diop', 'Malick', 'Ben-2333444', NULL, NULL, 2),
(153, 'Pouye', 'Fatou', 'Ali0025', NULL, NULL, 128),
(159, 'Senghor', 'Dib', 'P450', NULL, NULL, 2),
(165, 'Sall', 'lamine', 'Vb-560', NULL, NULL, 128),
(171, 'Ndiaye', 'Karime', 'Tr2366V', NULL, NULL, 66),
(177, 'Basse', 'Cécile', 'V563', NULL, NULL, 66),
(183, 'Fall', 'Pathé', 'ben8965', NULL, NULL, 112),
(189, 'Niang', 'Mareme', 'C5365', NULL, NULL, 2),
(195, 'Sarr', 'Malick', 'A5422', NULL, NULL, 112),
(201, 'Boly', 'Emilie', 'TT45', NULL, NULL, 2),
(207, 'Ndiaye', 'Fatou', 'Il5632', NULL, NULL, 128),
(213, 'Fall', 'Modou', 'Bzn5556', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Structure de la table `beneficiaire`
--

DROP TABLE IF EXISTS `beneficiaire`;
CREATE TABLE IF NOT EXISTS `beneficiaire` (
  `id_beneficaire` bigint(20) NOT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `date_naissance` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `ref_police` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_beneficaire`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `beneficiaire`
--

INSERT INTO `beneficiaire` (`id_beneficaire`, `adresse`, `date_naissance`, `nom`, `prenom`, `ref_police`) VALUES
(4, 'AAAAAAAAAAAAA', NULL, 'AAAAAAAAA', 'AAAAAAAAAA', 'AAAAAAAAAA'),
(10, 'BBBBBBBBBBBBBBB', NULL, 'BBBBBBBBBBBB', 'BBBBBBBBBBBBBBBB', 'BBBBBBBBBBBBBBBB'),
(16, 'BBBBBBBBBBBBBBB', NULL, 'BBBBBBBBBBBB', 'BBBBBBBBBBBBBBBB', 'BBBBBBBBBBBBBBBB'),
(22, 'BBBBBBBBBBBBBBB', NULL, 'BBBBBBBBBBBB', 'BBBBBBBBBBBBBBBB', 'BBBBBBBBBBBBBBBB'),
(28, 'BBBBBBBBBBBBBBB', NULL, 'BBBBBBBBBBBB', 'BBBBBBBBBBBBBBBB', 'BBBBBBBBBBBBBBBB'),
(34, 'BBBBBBBBBBBBBBB', NULL, 'BBBBBBBBBBBB', 'BBBBBBBBBBBBBBBB', 'BBBBBBBBBBBBBBBB'),
(48, 'DDDDDDDDDDDDDDDD', NULL, 'DDDDDDDDDDDDD', 'DDDDDDDDDDDDD', 'DDDDDDDDDD'),
(68, 'NNNNNNNNNNNNNNNNNNNNNN', NULL, 'NNNNNNNNNNNNNNN', 'NNNNNNNNNNNNNNNN', 'NNNNNNNNNNNNNNN'),
(74, 'LLLLLLLLLLLLLLL', NULL, 'LLLLLLLLLLLLLLL', 'LLLLLLLLLLLLLLLLL', 'LLLLLLLLL'),
(80, 'CCCCCCCCCCCCC', NULL, 'CCCCCCCCCCCCCC', 'CCCCCCCCCCCCCC', 'CCCCCCCCC'),
(93, 'WWWWWWWWWWWWWW', 'WWWWWWWWWWWWW', 'WWWWWWWWWW', 'WWWWWWWWWWWW', 'WWWWWWWW'),
(100, 'SSSSSSSSSSSSSSSSSS', NULL, 'SSSSSSSSSSSSSSSSSSS', 'SSSSSSSSSSSSSS', 'SSSSSSSSSSS'),
(107, 'XXXXXXXXXX', NULL, 'XXXXXXX', 'XXXXXXXXXX', 'XXXXXXX'),
(115, 'KMF', NULL, 'MBAYE', 'FATOU', 'BEN677'),
(122, 'ZZZZZZZZZZZZZZZZZZZ', NULL, 'ZZZZZZZZZZ', 'ZZZZZZZZZZZZZZ', 'ZZZZZZZZZZZZZZZ'),
(130, 'keur mbaye fall, rue 10, villa 1A', NULL, 'Diop', 'Mounass', 'Ben-2333444'),
(136, 'Lamp Fall', NULL, 'Senghor', 'Issa', 'Ben-2333444A'),
(142, 'keur mbaye fall, rue 10, villa 1A', NULL, 'Diop', 'Mounass', 'Ben-2333'),
(148, 'keur mbaye fall, rue 10, villa 1A', NULL, 'fdddfd', 'dfdfdf', 'Ben-2333444'),
(154, 'rufisque', NULL, 'Pouye', 'El Hadji', 'Ali0025'),
(160, 'keur mbaye fall, rue 10, villa 1A', NULL, 'Senghor', 'Mbaye', 'P450'),
(166, 'keur mbaye fall', NULL, 'sall', 'Ibra', 'Vb-560'),
(172, 'pikine', NULL, 'Ndiaye', 'Mansour', 'Tr2366V'),
(178, 'Guediawaye', NULL, 'Basse', 'Betty', 'V563'),
(184, 'Kaolack', NULL, 'Fall', 'Pathé', 'ben8965'),
(190, 'Fann', NULL, 'Niang', 'Mareme', 'C5365'),
(196, 'Medina', NULL, 'Sarr', 'Lathyr', 'A5422'),
(202, 'Rufisque', NULL, 'Boly', 'Motombo', 'TT45'),
(208, 'Diamniadio', NULL, 'Hane', 'Fallou', 'Il5632'),
(214, 'Mboro', NULL, 'Fall', 'Maty', 'Bzn5556');

-- --------------------------------------------------------

--
-- Structure de la table `cabinet`
--

DROP TABLE IF EXISTS `cabinet`;
CREATE TABLE IF NOT EXISTS `cabinet` (
  `id` bigint(20) NOT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `nom_ville` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `conditionpc`
--

DROP TABLE IF EXISTS `conditionpc`;
CREATE TABLE IF NOT EXISTS `conditionpc` (
  `id` bigint(20) NOT NULL,
  `nature` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `duree` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `conditionpc`
--

INSERT INTO `conditionpc` (`id`, `nature`, `date`, `duree`) VALUES
(6, 'AAAAAAAAAAA', NULL, 'AAAAAAAAAAAAA'),
(12, 'BBBBBBBB', NULL, 'BBBBBBBBBB'),
(18, 'BBBBBBBB', NULL, 'BBBBBBBBBB'),
(24, 'BBBBBBBB', NULL, 'BBBBBBBBBB'),
(30, 'BBBBBBBB', NULL, 'BBBBBBBBBB'),
(36, 'BBBBBBBB', NULL, 'BBBBBBBBBB'),
(50, 'dddddddddddd', NULL, 'ddddddddddddddd'),
(70, 'NNNNNNNNNNNNNNN', NULL, 'NNNNNNNNNNNNNNNNNN'),
(76, 'llllllllllllllllll', NULL, 'lllllllllllllllll'),
(82, 'CCCCCCCCCCCCC', NULL, 'CCCCCCCCCCCCCCCC'),
(95, 'WWWWWWWWWW', NULL, 'WWWWWWWWW'),
(102, 'SSSSSSSSSSSSSSSS', NULL, 'SSSSSSSSSSSSS'),
(109, 'XXXXXXXXXXXX', NULL, 'XXXXXXXXX'),
(117, 'paludisme', NULL, '3'),
(124, 'ZZZZZZZZZZZZZ', NULL, 'ZZZZZZZZZZZZZZZ'),
(132, 'paludisme', NULL, '5'),
(138, 'Paludisme', NULL, '3'),
(144, 'paludisme', NULL, '5'),
(150, 'f', NULL, '5'),
(156, 'Cholera', NULL, '21'),
(162, 'Renversé par une voiture', NULL, '5'),
(168, 'Fievre Jaune', NULL, '3'),
(174, 'Drépano', NULL, '3'),
(180, 'Grippe', NULL, '00'),
(186, 'Diarrée', NULL, '3'),
(192, 'Paludismee', NULL, '2'),
(198, 'Brulure de stomac', NULL, '5'),
(204, 'Paludisme', NULL, '3'),
(210, 'Paludisme', NULL, '5'),
(216, 'Paludisme', NULL, '1');

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

DROP TABLE IF EXISTS `facture`;
CREATE TABLE IF NOT EXISTS `facture` (
  `id_facture` bigint(20) NOT NULL,
  `date` datetime DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `signature` bit(1) NOT NULL,
  `id_traitement` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_facture`),
  KEY `FK7v6xtnt4lqt5birgllbm5o2cq` (`id_traitement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `facture`
--

INSERT INTO `facture` (`id_facture`, `date`, `etat`, `signature`, `id_traitement`) VALUES
(39, '2018-05-20 22:26:10', 'rejetée', b'0', 38),
(40, '2018-05-20 22:26:13', 'rejetée', b'0', 32),
(41, '2018-05-20 22:26:16', 'validée', b'0', 26),
(53, '2018-05-24 16:46:32', 'rejetée', b'0', 52),
(85, '2018-05-28 10:33:26', 'rejetée', b'0', 84),
(98, '2018-05-28 13:31:19', 'rejetée', b'0', 97),
(105, '2018-05-28 15:10:28', 'En Cours', b'0', 104),
(120, '2018-06-03 13:01:19', 'En Cours', b'0', 119),
(127, '2018-06-03 13:26:26', 'validée', b'0', 126),
(140, '2018-07-29 16:54:37', 'En Cours', b'0', 139),
(146, '2018-07-30 16:29:46', 'En Cours', b'0', 145),
(152, '2018-07-30 17:48:56', 'validée', b'0', 151),
(158, '2018-07-30 18:05:01', 'En Cours', b'0', 157),
(164, '2018-07-30 18:12:23', 'rejetée', b'0', 163),
(170, '2018-07-30 18:14:49', 'En Cours', b'0', 169),
(176, '2018-07-30 18:19:39', 'validée', b'0', 175),
(182, '2018-07-30 18:24:03', 'En Cours', b'0', 181),
(188, '2018-07-30 18:40:19', 'rejetée', b'0', 187),
(194, '2018-07-30 18:42:03', 'validée', b'0', 193),
(200, '2018-07-30 18:45:14', 'validée', b'0', 199),
(206, '2018-07-30 18:47:38', 'validée', b'0', 205),
(212, '2018-07-30 20:16:02', 'validée', b'0', 211),
(218, '2018-07-31 01:08:03', 'En Cours', b'0', 217);

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(219),
(219),
(219),
(219),
(219),
(219),
(219),
(219),
(219),
(219),
(219);

-- --------------------------------------------------------

--
-- Structure de la table `lieu_de_travail`
--

DROP TABLE IF EXISTS `lieu_de_travail`;
CREATE TABLE IF NOT EXISTS `lieu_de_travail` (
  `id` bigint(20) NOT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `nom_ville` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `medecin`
--

DROP TABLE IF EXISTS `medecin`;
CREATE TABLE IF NOT EXISTS `medecin` (
  `id_medcin` bigint(20) NOT NULL,
  `cabinet` tinyblob,
  `email` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `specialite` varchar(255) DEFAULT NULL,
  `telephone_fixe` varchar(255) DEFAULT NULL,
  `telephone_mobile` varchar(255) DEFAULT NULL,
  `id_user` varchar(255) DEFAULT NULL,
  `date_naissance` datetime DEFAULT NULL,
  PRIMARY KEY (`id_medcin`),
  KEY `FK9kubtmxn468t0wm9avdao3biv` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `medecin`
--

INSERT INTO `medecin` (`id_medcin`, `cabinet`, `email`, `nom`, `prenom`, `region`, `specialite`, `telephone_fixe`, `telephone_mobile`, `id_user`, `date_naissance`) VALUES
(1, NULL, 'bobobah542@gmail', 'bobo', 'bah', NULL, NULL, '44444444444444', NULL, NULL, NULL),
(64, NULL, 'ffffffffffffffffff', 'ffffffffffff', 'ffffffffffffff', NULL, NULL, NULL, 'fffffffffffffffffffffffff', NULL, NULL),
(65, NULL, 'mamadou@gmail.com', 'bah', 'mamadou', NULL, NULL, NULL, NULL, 'test', NULL),
(113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

DROP TABLE IF EXISTS `personne`;
CREATE TABLE IF NOT EXISTS `personne` (
  `id_personne` bigint(20) NOT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `ninea` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_personne`),
  KEY `FKt5xpp6eswf64jjx5ekyxccl33` (`ninea`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `role` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`role`, `description`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `traitement`
--

DROP TABLE IF EXISTS `traitement`;
CREATE TABLE IF NOT EXISTS `traitement` (
  `id_traitement` bigint(20) NOT NULL,
  `date` datetime DEFAULT NULL,
  `id_accident` bigint(20) DEFAULT NULL,
  `id_assure` bigint(20) DEFAULT NULL,
  `id_beneficiare` bigint(20) DEFAULT NULL,
  `id_conditionpc` bigint(20) DEFAULT NULL,
  `id_medecin` bigint(20) DEFAULT NULL,
  `id_type_soins` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_traitement`),
  KEY `FKb7tm7ycjpddp8othle1jfx0k8` (`id_accident`),
  KEY `FK2ddbvaiabierekqlv42qlul89` (`id_assure`),
  KEY `FKghk71twm50ypc5gfnwibe1fv3` (`id_beneficiare`),
  KEY `FKpw4tuw6gn5knqy06wexequd8g` (`id_conditionpc`),
  KEY `FK7lgyutfp8bq7eujmcjlfps34k` (`id_medecin`),
  KEY `FK79karr7umlponbwqonpnurnpf` (`id_type_soins`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `traitement`
--

INSERT INTO `traitement` (`id_traitement`, `date`, `id_accident`, `id_assure`, `id_beneficiare`, `id_conditionpc`, `id_medecin`, `id_type_soins`) VALUES
(8, '2018-05-20 22:18:13', 7, 3, 4, 6, 1, 5),
(14, '2018-05-20 22:24:36', 13, 9, 10, 12, 1, 11),
(20, '2018-05-20 22:25:00', 19, 15, 16, 18, 1, 17),
(26, '2018-05-20 22:25:14', 25, 21, 22, 24, 1, 23),
(32, '2018-05-20 22:25:28', 31, 27, 28, 30, 1, 29),
(38, '2018-05-20 22:26:07', 37, 33, 34, 36, 1, 35),
(52, '2018-05-24 16:45:55', 51, 47, 48, 50, 1, 49),
(72, '2018-05-27 16:20:24', 71, 67, 68, 70, 1, 69),
(78, '2018-05-27 18:04:14', 77, 73, 74, 76, 1, 75),
(84, '2018-05-28 10:32:29', 83, 79, 80, 82, 1, 81),
(97, '2018-05-28 13:30:54', 96, 92, 93, 95, 65, 94),
(104, '2018-05-28 15:10:19', 103, 99, 100, 102, 1, 101),
(119, '2018-06-03 13:00:53', 118, 114, 115, 117, 65, 116),
(126, '2018-06-03 13:26:26', 125, 121, 122, 124, 65, 123),
(139, '2018-07-29 16:54:37', NULL, 135, 136, 138, 65, 137),
(145, '2018-07-30 16:29:46', NULL, 141, 142, 144, 65, 143),
(151, '2018-07-30 17:48:56', NULL, 147, 148, 150, 65, 149),
(157, '2018-07-30 18:05:01', NULL, 153, 154, 156, 65, 155),
(163, '2018-07-30 18:12:23', NULL, 159, 160, 162, 65, 161),
(169, '2018-07-30 18:14:49', NULL, 165, 166, 168, 65, 167),
(175, '2018-07-30 18:19:39', NULL, 171, 172, 174, 65, 173),
(181, '2018-07-30 18:24:03', NULL, 177, 178, 180, 65, 179),
(187, '2018-07-30 18:40:19', NULL, 183, 184, 186, 65, 185),
(193, '2018-07-30 18:42:03', NULL, 189, 190, 192, 65, 191),
(199, '2018-07-30 18:45:14', NULL, 195, 196, 198, 65, 197),
(205, '2018-07-30 18:47:38', NULL, 201, 202, 204, 65, 203),
(211, '2018-07-30 20:16:02', NULL, 207, 208, 210, 65, 209),
(217, '2018-07-31 01:08:03', NULL, 213, 214, 216, 65, 215);

-- --------------------------------------------------------

--
-- Structure de la table `type_soins`
--

DROP TABLE IF EXISTS `type_soins`;
CREATE TABLE IF NOT EXISTS `type_soins` (
  `id` bigint(20) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `montant` double NOT NULL,
  `montant_honoraire` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_soins`
--

INSERT INTO `type_soins` (`id`, `designation`, `montant`, `montant_honoraire`) VALUES
(5, 'Consultation', 400000, 0),
(11, 'Consultation', 5555555555, 0),
(17, '', 0, 0),
(23, '', 0, 0),
(29, '', 0, 0),
(35, 'Consultation', 20000, 0),
(49, 'Consultation', 234444444, 0),
(69, 'Consultation', 20000, 0),
(75, 'Consultation', 20000, 0),
(81, 'Consultation', 2222222, 0),
(94, 'Consultation', 44444444444444, 0),
(101, 'SSSSSSSSSSS', 555555555, 0),
(108, 'XXXXXXXXXXXX', 5555555555, 0),
(116, 'Consultation', 20000, 0),
(123, 'Consultation', 400000, 0),
(131, 'Consultation', 15000, 0),
(137, 'Consultation', 20000, 0),
(143, 'Consultation', 10000, 0),
(149, 'Consultation', 200000, 0),
(155, 'Consultation', 40000, 0),
(161, 'Hospitalisation', 500000, 0),
(167, 'Consultation', 12000, 0),
(173, 'Consultation', 20000, 0),
(179, 'Consultation', 50000, 0),
(185, 'Consultation', 7500, 0),
(191, 'Consultation', 15000, 0),
(197, 'Opération chirurgicale', 120000, 0),
(203, 'Consultation', 15000, 0),
(209, 'Opération', 100000, 0),
(215, 'Consultation ', 15000, 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(255) NOT NULL,
  `actived` bit(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`username`, `actived`, `password`) VALUES
('axa', b'0', 'axa'),
('nsia', b'0', 'nsia'),
('passer', b'0', 'passer'),
('test', b'0', 'test');

-- --------------------------------------------------------

--
-- Structure de la table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
CREATE TABLE IF NOT EXISTS `users_roles` (
  `user_username` varchar(255) NOT NULL,
  `roles_role` varchar(255) NOT NULL,
  KEY `FK9bxfby7rpenikksf47nelxdbt` (`roles_role`),
  KEY `FK1y8kc6nr793297gijoc5t5qmx` (`user_username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users_roles`
--

INSERT INTO `users_roles` (`user_username`, `roles_role`) VALUES
('passer', 'admin'),
('passer', 'admin'),
('passer', 'admin'),
('test', 'admin'),
('test', 'admin'),
('test', 'admin'),
('axa', 'admin'),
('nsia', 'admin');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `assurance`
--
ALTER TABLE `assurance`
  ADD CONSTRAINT `FKq0c10ypxe6yhxoi5blaelejbs` FOREIGN KEY (`id_user`) REFERENCES `users` (`username`);

--
-- Contraintes pour la table `assure`
--
ALTER TABLE `assure`
  ADD CONSTRAINT `FKegkltb997wdue0c8w8ojyp9qx` FOREIGN KEY (`ninea`) REFERENCES `assurance` (`ninea`);

--
-- Contraintes pour la table `facture`
--
ALTER TABLE `facture`
  ADD CONSTRAINT `FK7v6xtnt4lqt5birgllbm5o2cq` FOREIGN KEY (`id_traitement`) REFERENCES `traitement` (`id_traitement`);

--
-- Contraintes pour la table `medecin`
--
ALTER TABLE `medecin`
  ADD CONSTRAINT `FK9kubtmxn468t0wm9avdao3biv` FOREIGN KEY (`id_user`) REFERENCES `users` (`username`);

--
-- Contraintes pour la table `personne`
--
ALTER TABLE `personne`
  ADD CONSTRAINT `FKt5xpp6eswf64jjx5ekyxccl33` FOREIGN KEY (`ninea`) REFERENCES `assurance` (`ninea`);

--
-- Contraintes pour la table `traitement`
--
ALTER TABLE `traitement`
  ADD CONSTRAINT `FK2ddbvaiabierekqlv42qlul89` FOREIGN KEY (`id_assure`) REFERENCES `assure` (`id_assure`),
  ADD CONSTRAINT `FK79karr7umlponbwqonpnurnpf` FOREIGN KEY (`id_type_soins`) REFERENCES `type_soins` (`id`),
  ADD CONSTRAINT `FK7lgyutfp8bq7eujmcjlfps34k` FOREIGN KEY (`id_medecin`) REFERENCES `medecin` (`id_medcin`),
  ADD CONSTRAINT `FKb7tm7ycjpddp8othle1jfx0k8` FOREIGN KEY (`id_accident`) REFERENCES `accident` (`id_accident`),
  ADD CONSTRAINT `FKghk71twm50ypc5gfnwibe1fv3` FOREIGN KEY (`id_beneficiare`) REFERENCES `beneficiaire` (`id_beneficaire`),
  ADD CONSTRAINT `FKpw4tuw6gn5knqy06wexequd8g` FOREIGN KEY (`id_conditionpc`) REFERENCES `conditionpc` (`id`);

--
-- Contraintes pour la table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FK1y8kc6nr793297gijoc5t5qmx` FOREIGN KEY (`user_username`) REFERENCES `users` (`username`),
  ADD CONSTRAINT `FK9bxfby7rpenikksf47nelxdbt` FOREIGN KEY (`roles_role`) REFERENCES `role` (`role`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
