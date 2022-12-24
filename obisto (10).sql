-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 24 déc. 2022 à 12:04
-- Version du serveur : 8.0.31
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `obisto`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_Categorie` int NOT NULL,
  `Categorie` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id_Categorie`, `Categorie`) VALUES
(17, 'Cuisine'),
(19, 'Electroménagers'),
(16, 'Electroniques'),
(14, 'Fêtes & Evenements'),
(15, 'Gaming'),
(18, 'Image & Son'),
(13, 'Sport & Vacances'),
(20, 'Véhicules');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id_commande` int NOT NULL,
  `id_objet` int NOT NULL,
  `objet` varchar(25) DEFAULT NULL,
  `date_debut` varchar(16) NOT NULL,
  `date_fin` varchar(16) NOT NULL,
  `periode` int NOT NULL,
  `prix_total` int NOT NULL,
  `nom_destinataire` varchar(100) NOT NULL,
  `prenom_destinataire` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `quartier` varchar(50) NOT NULL,
  `id_proprietaire` int NOT NULL,
  `id_client` int NOT NULL,
  `date_de_commande` varchar(16) NOT NULL,
  `statut` varchar(30) NOT NULL DEFAULT 'Reçu',
  `code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `commandes`
--

INSERT INTO `commandes` (`id_commande`, `id_objet`, `objet`, `date_debut`, `date_fin`, `periode`, `prix_total`, `nom_destinataire`, `prenom_destinataire`, `email`, `phone`, `quartier`, `id_proprietaire`, `id_client`, `date_de_commande`, `statut`, `code`) VALUES
(58, 183, 'Fifa 22 (PS4)', '01/12/2022', '09/12/2022', 8, 24000, 'Okome', 'Sloane', 'sloaneobiang@gmail.com', '077398836', 'pg1', 42, 42, '01/12/2022', 'Livrée', '828'),
(59, 183, 'Fifa 22 (PS4)', '02/12/2022', '09/12/2022', 7, 21000, 'obisto', 'Yohann Dian', 'yohanndian@gmail.com', '+24177482253', 'pg1', 42, 42, '01/12/2022', 'Livrée', '2639'),
(61, 185, 'Playstation 4 fat ', '02/12/2022', '23/12/2022', 21, 147000, 'koumba', 'fercia', 'yohanndian@gmail.com', '+24177482253', 'pg1', 42, 42, '05/12/2022', 'Acceptée', '126'),
(66, 277, 'Speaker BOSE', '09/12/2022', '17/12/2022', 8, 16000, 'Obiang', 'Yohann Dian', 'yohanndian@gmail.com', '+24177482253', 'pg1', 41, 42, '08/12/2022', 'En attente', '2963'),
(67, 263, 'Laptop lenovo', '10/12/2022', '11/12/2022', 1, 5000, 'OBIANG', 'Yohann Dian', 'yohanndian@gmail.com', '+24177482253', 'pg1', 42, 42, '09/12/2022', 'Acceptée', '1976'),
(68, 264, 'Speaker V8', '13/12/2022', '15/12/2022', 2, 4000, 'Obiang', 'Yohann', 'yohanndian@gmail.com', '077482253', 'Pg1', 76, 42, '12/12/2022', 'En attente', '4583'),
(69, 286, 'Manette PS5', '16/12/2022', '18/12/2022', 2, 20000, 'Obiang', 'Yohann', 'yohanndian@gmail.com', '077482253', 'Pg1', 42, 42, '12/15/2022', 'Livrée', '7017'),
(70, 264, 'Speaker V8', '24/12/2022', '25/12/2022', 1, 2000, 'Zinga', 'Clenn', 'zingaclenn@gmail.com', '077456321', '', 76, 41, '23/12/2022', 'En attente', '1439');

-- --------------------------------------------------------

--
-- Structure de la table `objets`
--

CREATE TABLE `objets` (
  `id_objet` int NOT NULL,
  `objet` varchar(25) DEFAULT NULL,
  `caution` varchar(30) DEFAULT 'Aucune',
  `etat` varchar(30) NOT NULL DEFAULT 'Excellent',
  `prix_jour` int NOT NULL,
  `description` varchar(500) NOT NULL,
  `Categorie` varchar(40) NOT NULL,
  `id_proprietaire` int NOT NULL,
  `statut` varchar(15) NOT NULL DEFAULT 'Disponible',
  `date_dajout` varchar(14) NOT NULL,
  `image1` varchar(300) NOT NULL DEFAULT 'image.png',
  `image2` varchar(300) NOT NULL DEFAULT 'image.png',
  `image3` varchar(300) NOT NULL DEFAULT 'image.png',
  `image4` varchar(300) NOT NULL DEFAULT 'image.png',
  `image5` varchar(300) NOT NULL DEFAULT 'image.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `objets`
--

INSERT INTO `objets` (`id_objet`, `objet`, `caution`, `etat`, `prix_jour`, `description`, `Categorie`, `id_proprietaire`, `statut`, `date_dajout`, `image1`, `image2`, `image3`, `image4`, `image5`) VALUES
(177, 'Canon 650D', 'Aucune', 'Neuf', 8000, '40000', 'Fêtes & Evenements', 42, 'Disponible', '11-11-2022', 'canon.jfif', 'image.png', 'image.png', 'image.png', 'image.png'),
(178, 'Iphone XS', '50000fcfa', 'Excellent', 7000, '35000', 'Electroniques', 42, 'Disponible', '11-11-2022', 'IphoneX.jpg', 'image.png', 'image.png', 'image.png', 'image.png'),
(180, 'Playstation 4', '75000fcfa', 'Excellent', 10000, '55000', 'Gaming', 41, 'Disponible', '11-11-2022', 'ps4slim.jpg', 'image.png', 'image.png', 'image.png', 'image.png'),
(181, 'Speaker JBL', 'Aucune', 'Bon', 7500, '38000', 'Sport & Vacances', 41, 'Disponible', '11-11-2022', 'jbl.jfif', 'image.png', 'image.png', 'image.png', 'image.png'),
(182, 'Cisaille de jardin', 'Aucune', 'Assez bon', 3500, '25000', 'Cuisine', 41, 'Disponible', '11-11-2022', 'Scisaille.jpg', 'image.png', 'image.png', 'image.png', 'image.png'),
(183, 'Fifa 22 (PS4)', 'Aucune', 'Excellent', 3000, '15000', 'Gaming', 42, 'Disponible', '11-11-2022', 'fifa.jpeg', 'image.png', 'image.png', 'image.png', 'image.png'),
(184, 'Iphone 13 Pro', '200000fcfa', 'Neuf', 15000, '75000', 'Electroniques', 42, 'Disponible', '11-11-2022', 'iphone13.jfif', 'image.png', 'image.png', 'image.png', 'image.png'),
(185, 'Playstation 4 fat ', '40000', 'Excellent', 7000, '1er modele de ps4', 'Gaming', 42, 'Disponible', '13-11-2022', 'ps4.jfif', 'PS4.png', 'image.png', 'image.png', 'image.png'),
(186, 'Moulinex', 'Aucune', 'Excellent', 2000, '10000', 'Image & Son', 42, 'Disponible', '13-11-2022', 'Mixeur.jpeg', 'image.png', 'image.png', 'image.png', 'image.png'),
(263, 'Laptop lenovo', '75000', 'Excellent', 5000, '30000', 'Image & Son', 42, 'Disponible', '11/19/2022', '20221119_021344.jpg', '20221119_021352.jpg', '20221119_021401.jpg', '20221119_021411.jpg', 'http://192.168.43.241:4000/uploads/20221119_021411.jpg'),
(264, 'Speaker V8', 'Aucune', 'Bon', 2000, '12000', 'Sport & Vacances', 76, 'Disponible', '11/19/2022', '20221119_073911.jpg', '20221119_073958.jpg', 'http://192.168.43.241:4000/uploads/20221119_074011.jpg', 'http://192.168.43.241:4000/uploads/20221119_074056.jpg', 'http://192.168.43.241:4000/uploads/20221119_074056.jpg'),
(277, 'Speaker BOSE', 'Aucune', 'Assez bon', 2000, 'Son en très haute definition et une charge qui dure jusqu\'a 4h de temps', 'Sport & Vacances', 41, 'Disponible', '11/23/2022', 'dataFile-1669177647108.jpg', 'dataFile-1669177658960.jpg', 'dataFile-1669177666454.jpg', 'dataFile-1669177676921.jpg', 'dataFile-1669177676921.jpg'),
(286, 'Manette PS5', '50000', 'Excellent', 10000, 'Tres bonne manette parfaitement fonctionelle', 'Gaming', 42, 'Disponible', '11/23/2022', 'dataFile-1669178525040.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `proprietaires`
--

CREATE TABLE `proprietaires` (
  `id_proprietaire` int NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `date_de_naissance` varchar(50) NOT NULL,
  `sexe` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `email_proprio` varchar(150) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `proprietaires`
--

INSERT INTO `proprietaires` (`id_proprietaire`, `nom`, `prenom`, `date_de_naissance`, `sexe`, `telephone`, `email_proprio`, `password`) VALUES
(41, 'Zinga', 'Clenn', '12-05-1998', 'Garçon', '077456321', 'zingaclenn@gmail.com', 'ZingaClenn'),
(42, 'Obiang', 'Yohann', '21-10-1997', 'Garçon', '077482253', 'yohanndian@gmail.com', 'YohannObiang'),
(76, 'Obiang', 'Joan', '2002-11-19', 'Garçon', '066775552', 'obiangjoan@gmail.com', 'Joan'),
(77, 'Bolo', 'Young', '2000-12-11', '0', '077482253', 'yohanndian@outlook.com', '@Bolo1997'),
(78, 'OBIANG', 'Yohann Dian', '2022-12-07T23:00:00.000Z', '0', '077482253', 'yohanndian@outlook.com', '@Bolo1997'),
(79, 'OBIANG', 'Yohann Dian', '2022-12-02T23:00:00.000Z', '0', '+24177482253', 'yohann@gmail.com', '@Bolo1997');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_Categorie`),
  ADD UNIQUE KEY `Categorie` (`Categorie`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id_commande`),
  ADD KEY `id_objet` (`id_objet`),
  ADD KEY `id_proprietaire` (`id_proprietaire`),
  ADD KEY `objet` (`objet`);

--
-- Index pour la table `objets`
--
ALTER TABLE `objets`
  ADD PRIMARY KEY (`id_objet`),
  ADD KEY `Categorie` (`Categorie`),
  ADD KEY `id_proprietaire` (`id_proprietaire`),
  ADD KEY `objet` (`objet`);

--
-- Index pour la table `proprietaires`
--
ALTER TABLE `proprietaires`
  ADD PRIMARY KEY (`id_proprietaire`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_Categorie` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id_commande` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT pour la table `objets`
--
ALTER TABLE `objets`
  MODIFY `id_objet` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT pour la table `proprietaires`
--
ALTER TABLE `proprietaires`
  MODIFY `id_proprietaire` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`id_proprietaire`) REFERENCES `proprietaires` (`id_proprietaire`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `commandes_ibfk_2` FOREIGN KEY (`id_objet`) REFERENCES `objets` (`id_objet`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `objets`
--
ALTER TABLE `objets`
  ADD CONSTRAINT `objets_ibfk_1` FOREIGN KEY (`Categorie`) REFERENCES `categories` (`Categorie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `objets_ibfk_2` FOREIGN KEY (`id_proprietaire`) REFERENCES `proprietaires` (`id_proprietaire`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
