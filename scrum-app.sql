-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mer. 26 fév. 2020 à 18:52
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP :  7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `scrum-app`
--

-- --------------------------------------------------------

--
-- Structure de la table `confirmation_token`
--

CREATE TABLE `confirmation_token` (
  `id` bigint(20) NOT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `confirmation_token`
--

INSERT INTO `confirmation_token` (`id`, `confirmation_token`, `created_date`, `user_id`) VALUES
(8, 'bebcebfb-3168-40f4-8a26-112fc3936e02', '2020-02-12 10:41:48', 7),
(16, '06af437c-155e-404a-875d-862f6e6b7fb8', '2020-02-14 16:43:01', 6),
(17, 'b4e3f41c-9ceb-46ff-b4fd-23d004da9da0', '2020-02-14 16:44:07', 1),
(18, '2eb249ab-63ec-46e4-ac6a-dbf75f234245', '2020-02-14 16:44:57', 2),
(19, 'fb686272-8a6b-4638-be7b-7dc3e2a0ba8b', '2020-02-15 01:05:29', 2),
(25, '4961832b-bf5b-49cd-a24a-47b6c2e949e8', '2020-02-17 22:47:05', 24),
(27, '4c9610f4-4ee3-41f5-a6fa-bdcdcb770643', '2020-02-18 01:07:06', 26),
(29, '6ffb88a6-006e-4388-9ddf-bcd0fd08e2b7', '2020-02-18 01:07:10', 28);

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(51),
(51);

-- --------------------------------------------------------

--
-- Structure de la table `project`
--

CREATE TABLE `project` (
  `id` bigint(20) NOT NULL,
  `name` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `project`
--

INSERT INTO `project` (`id`, `name`) VALUES
(1, 'project1');

-- --------------------------------------------------------

--
-- Structure de la table `project_user`
--

CREATE TABLE `project_user` (
  `project_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `project_user`
--

INSERT INTO `project_user` (`project_id`, `user_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `state`
--

INSERT INTO `state` (`id`, `name`) VALUES
(1, 'EN COURS'),
(2, 'A FAIRE\r\n'),
(3, 'Terminer'),
(39, NULL),
(40, NULL),
(41, NULL),
(42, NULL),
(43, NULL),
(44, NULL),
(45, NULL),
(46, NULL),
(47, NULL),
(48, NULL),
(49, NULL),
(50, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `is_enabled` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `first_name`, `last_name`, `password`, `photo`, `is_enabled`) VALUES
(1, 'saber@saber22222222', 'sjjjjjjjjjjjjjjjjjjjjjjjjjaber', 'saber', '$2a$10$VGT6fiTOmblDNFMG3YB5LOGO/HMFRrlZKK2m64xe3k5CS1k3/i9IG', 'user.png', b'0'),
(2, 'saber@mekkimekkidgbgbbgbg', '1245555', 'ffdeffefrer', '$2a$10$jyX340plGdteApf7cApFLu8qET5wfvc5drIPJrpiC0p8KcOwbjzZS', NULL, b'0'),
(3, 'saber@mekki', 'sauuuuber', NULL, 'saber', NULL, b'0'),
(4, NULL, NULL, NULL, 'saber', NULL, b'0'),
(5, 'saber@saber', 'safffffffffffber', NULL, 'saber', NULL, b'0'),
(6, 'sabe11111111111r@saber', 'sabgdfger huyyu', 'saber', '$2a$10$i51VsEf8BjpzzKI5.v3XPe9XuzMVrPQfxzTf7S13nehJ9Qh6bDWeq', NULL, b'0'),
(7, 'khadija@gmail.com', NULL, NULL, '$2a$10$b/p9BPn5eCunuKEVsGdgnezDq.6gxcD31X7Ge4Hrih7bCRUARKbYa', NULL, b'0'),
(13, NULL, 'khadija', NULL, NULL, NULL, b'0'),
(14, NULL, 'khadija', NULL, NULL, NULL, b'0'),
(15, 'saber@sabdddddder', 'sjjjjjjjjjjjjjjjjjjjjjjjjjaber', 'saber', 'saber', NULL, b'0'),
(24, 'saber@adel', '1111111111111', 'sssssssssssssssssssssssssssssssssssssss', '$2a$10$VcptqbgfmLbI0uO6P9ipHuTnNIgNfizUS4J7Znmn2/4JZBDFPgl9K', NULL, b'0'),
(26, 'saber@mekkimekkidgbgbbgvvvvvbg', '1245555vvvvvvvvv', 'ffdeffefrervvvvvvvvvv', '$2a$10$91bWdFUJabmIy3W39EepoO9N70FQ/HD/foMFnbT/s00lRMaGf3HWG', 'Sélection_022.png', b'0'),
(28, 'saber@mekkimekkidgbgbbgvvvvvbg', '1245555vvvvvvvvv', 'ffdeffefrervvvvvvvvvv', '$2a$10$sIitS0YHqZnlU7mlPox83ee2e11R1LEo/d3k0JSfbVjI0NZ.vzrRu', 'Sélection_022.png', b'0');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `confirmation_token`
--
ALTER TABLE `confirmation_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKhjrtky9wbd6lbk7mu9tuddqgn` (`user_id`);

--
-- Index pour la table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `project_user`
--
ALTER TABLE `project_user`
  ADD PRIMARY KEY (`project_id`,`user_id`),
  ADD KEY `FK4jl2o131jivd80xsuw6pivnbx` (`user_id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `confirmation_token`
--
ALTER TABLE `confirmation_token`
  ADD CONSTRAINT `FKhjrtky9wbd6lbk7mu9tuddqgn` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `project_user`
--
ALTER TABLE `project_user`
  ADD CONSTRAINT `FK4jl2o131jivd80xsuw6pivnbx` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK4ug72llnm0n7yafwntgdswl3y` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
