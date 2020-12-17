-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 26 juin 2019 à 22:21
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

DROP TABLE IF EXISTS `projet`;
CREATE TABLE IF NOT EXISTS `projet` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `liengit` varchar(255) DEFAULT NULL,
  `lienprojet` varchar(255) DEFAULT NULL,
  `dureeprojet` varchar(255) DEFAULT NULL,
  `dateprojet` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `projet`
--

INSERT INTO `projet` (`id`, `titre`, `description`, `liengit`, `lienprojet`, `dureeprojet`, `dateprojet`, `image1`, `image2`, `image3`, `image4`) VALUES
(1, 'Job for You', 'Le point de départ de ce projet était de faire de la publicité pour un salon de l\'emploi. \r\nIl permettait de mettre en relation des employeurs avec des candidats.\r\n\r\n\r\n\r\nCe projet se décompose en 3 parties :\r\n\r\n\r\n- La partie Administrateur, permettant au client de gérer l\'ensemble du site et des utilisateurs.\r\n\r\n- La partie Employeur, permettant créer un compte afin de déposer des offres mais également réserver un stand pour le forum.\r\n\r\n- La partie Candidat, permettant d\'accéder aux offres d\'emploi disponible mais également de mettre en ligne son profil et son CV.\r\n\r\n\r\n\r\nProjet réalisé à partir du framework Symfony 4.', 'https://github.com/JauneLoke/JobforYou', NULL, 'Durée du Projet : 3 semaines', NULL, 'Assets/Images/ApercuProjets/JobAndYou/jobandyou01.png', 'Assets/Images/ApercuProjets/JobAndYou/jobandyou02.png', 'Assets/Images/ApercuProjets/JobAndYou/jobandyou03.png', 'Assets/Images/ApercuProjets/JobAndYou/jobandyou04.png'),
(2, 'We Transfer', 'L\'objectif de ce projet était de recréer un site web similaire à \"wetransfer.com\".\r\n\r\nCe type de site permettent de stocker des fichiers pouvant être supérieur à 50 Mo correspondant à la taille maximale d\'un fichier envoyé par e-mail.\r\n\r\nLe lien vers ce fichier est ensuite envoyé à un destinataire par mail.\r\n\r\n\r\n\r\nLe projet se décompose en 3 parties :\r\n\r\n\r\n- La page d\'Accueil permettant de charger le fichier à envoyer.\r\n\r\n- Un e-mail pour le destinataire avec un lien vers le fichier\r\n\r\n- Une page avec un lien sécurisé permettant de télécharger le fichier.', 'https://github.com/JauneLoke/WeTransfer', 'https://web-developpement.eu/MesProjets/WeTransfer/index.php', 'Durée du Projet : 4 Jours', NULL, 'Assets/Images/ApercuProjets/RetM/RetM01.png', 'Assets/Images/ApercuProjets/RetM/RetM02.png', 'Assets/Images/ApercuProjets/RetM/RetM03.png', 'Assets/Images/ApercuProjets/RetM/RetM04.png'),
(3, 'Space invaders', 'Reproduction du grand classic des jeux rétro, le Space Invaders!\r\n\r\nLe jeu à été réalisé uniquement en JavaScript après avoir découvert ce language 2 jours avant.\r\n\r\n\r\n\r\nLes éléments constituant le jeu :\r\n\r\n\r\n- Une vague d\'enemis destructibles\r\n\r\n- Possibilitée de tirer et déplacer le vaisseau latéralement\r\n\r\n- Condition de victoire, défaite\r\n\r\n- Un écran d\'accueil', 'https://github.com/JauneLoke/Space-Invaders', 'https://web-developpement.eu/MesProjets/Space-Invaders/main.html', 'Durée du Projet : 3 Jours', NULL, 'Assets/Images/ApercuProjets/SpaceInvaders/spaceInvader01.png', 'Assets/Images/ApercuProjets/SpaceInvaders/spaceInvader02.png', 'Assets/Images/ApercuProjets/SpaceInvaders/spaceInvader03.png', 'Assets/Images/ApercuProjets/SpaceInvaders/spaceInvader04.png'),
(4, 'Annuaire de films', 'Ce projet est un exercice réalisé au début de ma formation de dévelopeur Web en décembre 2018.\r\n\r\n\r\nL\'objectif était de créer un site web de type \"Allociné\".\r\n\r\n\r\n\r\nConception du site :\r\n\r\n- Architecture MVC (Models, Views, Controllers)\r\n\r\n- Création d\'un MCD (Modèle Conceptuel des Données)\r\n\r\n- Première utilisation de tables liaison\r\n\r\n- Intégration d\'un fichier .htaccess à la racine\r\n\r\n- Création des \"views\" Responsive avec un design identitaire', 'https://github.com/JauneLoke/Cinematheque', NULL, 'Durée du Projet : 5 Jours', NULL, 'Assets/Images/ApercuProjets/Cinematheque/cinematheque04.png', 'Assets/Images/ApercuProjets/Cinematheque/cinematheque02.png', 'Assets/Images/ApercuProjets/Cinematheque/cinematheque03.png', 'Assets/Images/ApercuProjets/Cinematheque/cinematheque01.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
