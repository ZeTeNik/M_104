-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 08 Juin 2020 à 15:37
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `rodriguez_ilan_bulletin_versement_info1d_2020`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_adresse`
--

CREATE TABLE `t_adresse` (
  `id_adresse` int(11) NOT NULL,
  `adresse_ville` varchar(40) NOT NULL,
  `adresse_rue` varchar(40) NOT NULL,
  `adresse_code_postal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_adresse_canton`
--

CREATE TABLE `t_adresse_canton` (
  `id_adresse_canton` int(11) NOT NULL,
  `fk_adresse` int(11) NOT NULL,
  `fk_canton` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_adresse_pays`
--

CREATE TABLE `t_adresse_pays` (
  `id_adresse_pays` int(11) NOT NULL,
  `fk_pays` int(11) NOT NULL,
  `fk_adresse` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_bulletin_versement`
--

CREATE TABLE `t_bulletin_versement` (
  `id_bulletin_versement` int(11) NOT NULL,
  `prix_bulletin_versement` bigint(20) NOT NULL,
  `motif_bulletin_versement` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_canton`
--

CREATE TABLE `t_canton` (
  `id_canton` int(11) NOT NULL,
  `nom_canton` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_compte`
--

CREATE TABLE `t_compte` (
  `id_compte` int(11) NOT NULL,
  `compte_iban` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_compte`
--

INSERT INTO `t_compte` (`id_compte`, `compte_iban`) VALUES
(2, '56343465365'),
(3, '87463257864');

-- --------------------------------------------------------

--
-- Structure de la table `t_pays`
--

CREATE TABLE `t_pays` (
  `id_pays` int(11) NOT NULL,
  `nom_pays` varchar(42) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_personne`
--

CREATE TABLE `t_personne` (
  `id_personne` int(11) NOT NULL,
  `nom_personne` varchar(120) NOT NULL,
  `prenom_personne` varchar(120) NOT NULL,
  `civilite_personne` varchar(12) NOT NULL,
  `date_naissance_personne` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_personne`
--

INSERT INTO `t_personne` (`id_personne`, `nom_personne`, `prenom_personne`, `civilite_personne`, `date_naissance_personne`) VALUES
(4, 'jfdsjghjkfhgdskjfg', 'Olyvye', 'fsdgsfdg', '2020-06-10'),
(5, 'dfgssfdg', 'gsdfgfdfsg', 'Tout', '2020-06-09'),
(6, 'Makeau', 'jfdhjfhd', 'fsdgsfdg', '2020-06-19');

-- --------------------------------------------------------

--
-- Structure de la table `t_personne_adresse`
--

CREATE TABLE `t_personne_adresse` (
  `id_personne_adresse` int(11) NOT NULL,
  `fk_personne` int(11) NOT NULL,
  `fk_adresse` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_personne_bulletin_versement`
--

CREATE TABLE `t_personne_bulletin_versement` (
  `id_personne_bulletin_versement` int(11) NOT NULL,
  `fk_personne` int(11) NOT NULL,
  `fk_bulletin_versement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `t_personne_compte`
--

CREATE TABLE `t_personne_compte` (
  `id_personne_compte` int(11) NOT NULL,
  `fk_personne` int(11) NOT NULL,
  `fk_compte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_personne_compte`
--

INSERT INTO `t_personne_compte` (`id_personne_compte`, `fk_personne`, `fk_compte`) VALUES
(4, 5, 2);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `t_adresse`
--
ALTER TABLE `t_adresse`
  ADD PRIMARY KEY (`id_adresse`);

--
-- Index pour la table `t_adresse_canton`
--
ALTER TABLE `t_adresse_canton`
  ADD PRIMARY KEY (`id_adresse_canton`),
  ADD KEY `fk_adresse` (`fk_adresse`),
  ADD KEY `fk_canton` (`fk_canton`),
  ADD KEY `fk_adresse_2` (`fk_adresse`),
  ADD KEY `fk_canton_2` (`fk_canton`);

--
-- Index pour la table `t_adresse_pays`
--
ALTER TABLE `t_adresse_pays`
  ADD PRIMARY KEY (`id_adresse_pays`),
  ADD KEY `fk_pays` (`fk_pays`),
  ADD KEY `fk_adresse` (`fk_adresse`),
  ADD KEY `fk_pays_2` (`fk_pays`),
  ADD KEY `fk_adresse_2` (`fk_adresse`);

--
-- Index pour la table `t_bulletin_versement`
--
ALTER TABLE `t_bulletin_versement`
  ADD PRIMARY KEY (`id_bulletin_versement`);

--
-- Index pour la table `t_canton`
--
ALTER TABLE `t_canton`
  ADD PRIMARY KEY (`id_canton`);

--
-- Index pour la table `t_compte`
--
ALTER TABLE `t_compte`
  ADD PRIMARY KEY (`id_compte`);

--
-- Index pour la table `t_pays`
--
ALTER TABLE `t_pays`
  ADD PRIMARY KEY (`id_pays`);

--
-- Index pour la table `t_personne`
--
ALTER TABLE `t_personne`
  ADD PRIMARY KEY (`id_personne`);

--
-- Index pour la table `t_personne_adresse`
--
ALTER TABLE `t_personne_adresse`
  ADD PRIMARY KEY (`id_personne_adresse`),
  ADD KEY `fk_personne` (`fk_personne`),
  ADD KEY `fk_adresse` (`fk_adresse`),
  ADD KEY `fk_personne_2` (`fk_personne`),
  ADD KEY `fk_adresse_2` (`fk_adresse`);

--
-- Index pour la table `t_personne_bulletin_versement`
--
ALTER TABLE `t_personne_bulletin_versement`
  ADD PRIMARY KEY (`id_personne_bulletin_versement`),
  ADD KEY `fk_personne` (`fk_personne`),
  ADD KEY `fk_bulletin_versement` (`fk_bulletin_versement`);

--
-- Index pour la table `t_personne_compte`
--
ALTER TABLE `t_personne_compte`
  ADD PRIMARY KEY (`id_personne_compte`),
  ADD KEY `fk_personne` (`fk_personne`),
  ADD KEY `fk_compte` (`fk_compte`),
  ADD KEY `fk_compte_2` (`fk_compte`),
  ADD KEY `fk_personne_2` (`fk_personne`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `t_adresse`
--
ALTER TABLE `t_adresse`
  MODIFY `id_adresse` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_adresse_canton`
--
ALTER TABLE `t_adresse_canton`
  MODIFY `id_adresse_canton` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_adresse_pays`
--
ALTER TABLE `t_adresse_pays`
  MODIFY `id_adresse_pays` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_bulletin_versement`
--
ALTER TABLE `t_bulletin_versement`
  MODIFY `id_bulletin_versement` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_canton`
--
ALTER TABLE `t_canton`
  MODIFY `id_canton` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_compte`
--
ALTER TABLE `t_compte`
  MODIFY `id_compte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `t_pays`
--
ALTER TABLE `t_pays`
  MODIFY `id_pays` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_personne`
--
ALTER TABLE `t_personne`
  MODIFY `id_personne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `t_personne_adresse`
--
ALTER TABLE `t_personne_adresse`
  MODIFY `id_personne_adresse` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_personne_bulletin_versement`
--
ALTER TABLE `t_personne_bulletin_versement`
  MODIFY `id_personne_bulletin_versement` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_personne_compte`
--
ALTER TABLE `t_personne_compte`
  MODIFY `id_personne_compte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `t_adresse_canton`
--
ALTER TABLE `t_adresse_canton`
  ADD CONSTRAINT `t_adresse_canton_ibfk_1` FOREIGN KEY (`fk_adresse`) REFERENCES `t_adresse` (`id_adresse`),
  ADD CONSTRAINT `t_adresse_canton_ibfk_2` FOREIGN KEY (`fk_canton`) REFERENCES `t_canton` (`id_canton`);

--
-- Contraintes pour la table `t_adresse_pays`
--
ALTER TABLE `t_adresse_pays`
  ADD CONSTRAINT `t_adresse_pays_ibfk_1` FOREIGN KEY (`fk_pays`) REFERENCES `t_pays` (`id_pays`),
  ADD CONSTRAINT `t_adresse_pays_ibfk_2` FOREIGN KEY (`fk_adresse`) REFERENCES `t_adresse` (`id_adresse`);

--
-- Contraintes pour la table `t_personne_adresse`
--
ALTER TABLE `t_personne_adresse`
  ADD CONSTRAINT `t_personne_adresse_ibfk_1` FOREIGN KEY (`fk_personne`) REFERENCES `t_personne` (`id_personne`),
  ADD CONSTRAINT `t_personne_adresse_ibfk_2` FOREIGN KEY (`fk_adresse`) REFERENCES `t_adresse` (`id_adresse`);

--
-- Contraintes pour la table `t_personne_bulletin_versement`
--
ALTER TABLE `t_personne_bulletin_versement`
  ADD CONSTRAINT `t_personne_bulletin_versement_ibfk_1` FOREIGN KEY (`fk_personne`) REFERENCES `t_personne` (`id_personne`),
  ADD CONSTRAINT `t_personne_bulletin_versement_ibfk_2` FOREIGN KEY (`fk_bulletin_versement`) REFERENCES `t_personne_bulletin_versement` (`id_personne_bulletin_versement`);

--
-- Contraintes pour la table `t_personne_compte`
--
ALTER TABLE `t_personne_compte`
  ADD CONSTRAINT `t_personne_compte_ibfk_1` FOREIGN KEY (`fk_personne`) REFERENCES `t_personne` (`id_personne`),
  ADD CONSTRAINT `t_personne_compte_ibfk_2` FOREIGN KEY (`fk_compte`) REFERENCES `t_compte` (`id_compte`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
