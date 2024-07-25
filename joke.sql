-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 25 juil. 2024 à 22:38
-- Version du serveur : 10.5.20-MariaDB
-- Version de PHP : 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `id21827468_blague`
--

-- --------------------------------------------------------

--
-- Structure de la table `joke`
--

CREATE TABLE `joke` (
  `id` int(11) NOT NULL,
  `question` varchar(300) NOT NULL,
  `reponse` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `joke`
--

INSERT INTO `joke` (`id`, `question`, `reponse`) VALUES
(1, 'Quel est le comble pour un footballeur ?', 'C\'est de ne pas avoir de but dans sa vie !'),
(2, 'Quel est le comble pour un électricien ?', 'De ne pas être au courant.'),
(3, 'Pourquoi Florent est-il toujours le bienvenu aux fêtes ?', 'Parce qu\'il apporte toujours une ambiance florissante !'),
(4, 'qu\'es qu\'un fou qui mange des pâtes', 'un psychopathe'),
(5, 'Monsieur et Madame honnête ont une fille, comment s\'appelle-t-elle ', 'Camille (Camille-honnette)'),
(6, 'Monsieur et Madame honnête ont une fille. Comment s\'appelle t-elle ? ', ' Marie (Marie Honnette)'),
(7, 'Un jour, il y a une fille. Elle s\'est mariée derrière le dos de son père', 'il s\'est tourné et il l\'a vue'),
(8, 'Qu’est-ce qui n’est pas un steak ?', ' Une pastèque'),
(9, 'Quel est le crustacé le plus léger de la mer', 'La palourde'),
(10, 'Quel est le comble pour un jardinier ? ', ' C’est de raconter des salades'),
(11, 'la fée que les enfants détestent?', 'La fée C '),
(12, 'Qu\'es qu\'un rat qui court et qui s\'assit ?', 'Un rat-cour-si'),
(13, 'Pourquoi est-ce que les livres ont-ils toujours chaud ?', 'Parce qu\'ils ont une couverture.'),
(14, 'Que dit les gens après une blague \n nul de momo ?', 'C\'est PARIS rigolo'),
(15, 'Pourquoi Noah est-il toujours calme et détendu ? ', 'Parce qu\'il sait comment rester \"No-ah-stress\" !'),
(16, 'Qu\'est-ce que un yaourt dans la foret ?', 'Un yaourt nature'),
(17, 'Une maîtresse dit a ses éléves : si je vous dit je suis belle c\'est à quelle temps ?', 'Ta un élève se lève et dit c\'est au passé'),
(18, ' Que fait une vache quand elle a les yeux fermés ? ', 'Elle fait du lait concentré !!!!! '),
(19, ' Quelle différence entre une échelle et un pistolet ? ', 'L’échelle sert à monter, le pistolet sert à descendre '),
(20, ' Qu’est-ce qui est vert, qui monte et qui descend ? ', 'Un petit pois dans un ascenseur '),
(21, ' Qu’est-ce que crie un Donuts à la plage ? ', 'J’vais m’beignet '),
(22, ' Quel est le poisson le plus drôle ? ', 'Le poisson clown !'),
(23, ' Quel animal a le plus de dents ? ', 'la petite souris '),
(24, ' Comment les abeilles communiquent entre elles ? ', 'Par E-miel '),
(25, 'Qui est la star qui demande 2 glaçon dans son verre', 'Mickel Douglas'),
(26, ' Que prend un éléphant quand il va au restaurant ? ', 'De la place !! '),
(27, ' Qu’est-ce qui commence par un E, finit par un E et ne contient qu’une seule lettre ? ', 'Une enveloppe'),
(31, 'Comment fait un mouton pour s\'endormir', 'Il compte sur lui meme'),
(32, ' Que dit un alien dans mon frigo ? ', 'Ils sont extra-tes-restes !!!! '),
(29, ' Quelles sont les deux sœurs qui ont la meilleure vue ? ', 'Les soeurs jumelles '),
(30, ' Que dit une maman mésange quand ses petits vont se coucher ? ', 'Bonne nuit mes anges. '),
(33, ' A quoi sert un archipel ? ', 'A faire des archi trous ! '),
(34, 'Pourquoi la mer monte et descend', 'Parce qu\'elle est en train de se marrer'),
(35, 'qu\'est ce qui est jaune et qui attend?', 'JONATHAN'),
(36, 'Un poussin, ça fait piou piou, mais que fait un poussin de 200kg ?', 'PIOU PIOU'),
(37, 'Quel est le fruit le plus fort ?', 'Le citron, car même en pression, il reste concentré.'),
(38, 'Que fait un cendrier devant un ascenseur ?', 'Il veut des cendres.'),
(39, 'où vont les abeilles quand elles se marient?', ' Voir la réponse en lune de miel '),
(40, 'Qu’est-ce qui est vert, qui se déplace sous l’eau', 'Un chou marin'),
(41, 'Pourquoi les poissons-chats s’ennuient-ils ? ', 'Parce qu’il n’y a pas de poissons-souris !'),
(42, 'Que font deux dinosaures qui ne savent pas se décider ?', 'Un tirajosaure (tirage au sort)'),
(43, 'Quel est le fruit que détestent les poissons ?', 'La pêche'),
(44, '2 geeks discutent le 2 janvier : Quelle est ta résolution cette année ? ', '1280 x 768'),
(45, 'Quel est le mode de transport préféré des vampires ? ', 'Le vaisseau sanguin.'),
(46, 'Tout petit, petit, je n’ai ni corps, ni vie, quand je viens au monde je crie. Qui suis-je ? ', 'Le pet'),
(60, 'Un homme tombe d\'une tour Eiffel et ses cheuveux tombent 10 min aprés pourquoi ?', 'Car il à utliser un shampooing qui ralenti la chute de cheuveux'),
(61, 'je mange', 'tout'),
(62, 'Qu\'est-ce qui court et qui se jette', 'Une courgette');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `joke`
--
ALTER TABLE `joke`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `joke`
--
ALTER TABLE `joke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
