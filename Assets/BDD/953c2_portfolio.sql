-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 953c2.myd.infomaniak.com
-- Généré le :  sam. 26 oct. 2019 à 21:37
-- Version du serveur :  5.7.26-log
-- Version de PHP :  7.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `953c2_portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190305100632', '2019-03-07 10:05:16'),
('20190305101500', '2019-03-07 10:05:17');

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE `projet` (
  `id` int(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `liengit` varchar(255) DEFAULT NULL,
  `lienprojet` varchar(255) DEFAULT NULL,
  `dureeprojet` varchar(255) DEFAULT NULL,
  `dateprojet` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `projet`
--

INSERT INTO `projet` (`id`, `titre`, `description`, `liengit`, `lienprojet`, `dureeprojet`, `dateprojet`, `image1`, `image2`, `image3`, `image4`) VALUES
(1, 'Meals on Wheels', 'Ce projet à été réalisé pour un restaurant asiatique situé a Montbéliard.\r\n\r\nIl est composer de leurs coordonnées ainsi que la carte du restaurant.\r\n\r\n\r\nLes technlogies utilisées sont :\r\n\r\n- Wordpress\r\n- Divi\r\n- Googlemaps\r\n- GoogleAnalitics\r\n', NULL, 'https://mealsonwheels.fr', '2 semaines', NULL, 'Assets/Images/ApercuProjets/MealsOnWheels/mealsonwheels01.jpg', 'Assets/Images/ApercuProjets/MealsOnWheels/mealsonwheels02.jpg', 'Assets/Images/ApercuProjets/MealsOnWheels/mealsonwheels03.jpg', 'Assets/Images/ApercuProjets/MealsOnWheels/mealsonwheels04.jpg'),
(2, 'We Transfer', 'Créer un service similaire à wetransfer.com\r\n\r\nUne page avec un formulaire :\r\n- Choisissez le fichier (upload en HTML5)\r\n- Email du destinataire\r\n- Bouton envoyer\r\n\r\n\r\nUne page intermédiaire :\r\n\r\n- Enregistre les informations dans une base de données\r\n- Enregistre le fichier dans un répertoire\r\n- Envoi par mail le lien vers la page de téléchargement du fichier\r\n\r\nUne page de résultat :\r\n\r\n- message de réussite\r\n- lien vers la page à copier/coller\r\n\r\nUne page permettant depuis l\'ID enregistré dans la base de données, d’accéder au téléchargement du fichier.', 'https://github.com/JauneLoke/WeTransfer', 'https://nathan-francois.fr/MesProjets/WeTransfer/index.php', 'Durée du Projet : 4 Jours', NULL, 'Assets/Images/ApercuProjets/RetM/RetM01.png', 'Assets/Images/ApercuProjets/RetM/RetM02.png', 'Assets/Images/ApercuProjets/RetM/RetM03.png', 'Assets/Images/ApercuProjets/RetM/RetM04.png'),
(3, 'Space invaders', 'Reproduction du grand classic des jeux rétro, le Space Invaders!\r\n\r\nLe jeu à été réalisé uniquement en JavaScript après avoir découvert ce language 2 jours avant.\r\n\r\n\r\nLes éléments constituant le jeu :\r\n\r\n- Une vague d\'enemis destructibles\r\n- Possibilitée de tirer et déplacer le vaisseau latéralement\r\n- Condition de victoire, défaite\r\n- Un écran d\'accueil', 'https://github.com/JauneLoke/Space-Invaders', 'https://nathan-francois.fr/MesProjets/Space-Invaders/index.html', 'Durée du Projet : 3 Jours', NULL, 'Assets/Images/ApercuProjets/SpaceInvaders/spaceInvader01.png', 'Assets/Images/ApercuProjets/SpaceInvaders/spaceInvader02.png', 'Assets/Images/ApercuProjets/SpaceInvaders/spaceInvader03.png', 'Assets/Images/ApercuProjets/SpaceInvaders/spaceInvader04.png'),
(4, 'Annuaire de films', 'Ce projet est un exercice réalisé en formation sur une durée de cinq jours en décembre 2018.\r\n\r\nL\'objectif est de coder un annuaire de films de type \"Allociné\", sur lequel figurent neuf films de base.\r\n\r\n\r\nConception du site :\r\n\r\n- Conception du site en utilisant le MVC\r\n- Création d\'un MCD (Modèle Conceptuel des Données)\r\n- Intégration des infos dans la Base de données\r\n- Utilisation de tables liaisons qui permettent de lier plusieurs films à plusieurs genres\r\n- Intégration d\'un fichier .htaccess à la racine\r\n- Création des views Responsive avec un design identitaire', 'https://github.com/JauneLoke/Cinematheque', NULL, 'Durée du Projet : 5 Jours', NULL, 'Assets/Images/ApercuProjets/Cinematheque/cinematheque04.png', 'Assets/Images/ApercuProjets/Cinematheque/cinematheque02.png', 'Assets/Images/ApercuProjets/Cinematheque/cinematheque03.png', 'Assets/Images/ApercuProjets/Cinematheque/cinematheque01.png');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`) VALUES
(1, 'jauneLoke', '[\"ROLE_ADMIN\"]', '$argon2i$v=19$m=1024,t=2,p=2$c3dmZS9Pc0o2UFlObHpFZQ$ZHA8C5JbqPc9JrXRKrrCW/phF68vB8fAgpPEdhJ4SCY');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `projet`
--
ALTER TABLE `projet`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `projet`
--
ALTER TABLE `projet`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
