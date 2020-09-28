-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 12 juil. 2020 à 11:54
-- Version du serveur :  10.4.8-MariaDB
-- Version de PHP :  7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `oc_pizza`
--

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`client_id`, `pseudo`, `mot_de_passe`, `prenom`, `nom`, `date_naissance`) VALUES
(1, 'orc2ec', 'YBU30SLW0GT', 'Phoebe', 'Head', '1967-03-30'),
(2, 'tor8se', 'KWD70FVY8IW', 'Pearl', 'Adams', '1995-06-16'),
(3, 'era2a', 'KAJ24XXT1SJ', 'Maya', 'Barry', '1981-11-13'),
(4, 'rho5em', 'QTZ97OBB9FJ', 'Brent', 'Burnett', '1986-12-19'),
(5, 'arc5g', 'EPT61RQA6JY', 'Kirby', 'Payne', '1993-08-31'),
(6, 'auc4et', 'LJI70ECD2NH', 'Emerald', 'Bond', '1992-04-18'),
(7, 'nec5ce', 'ZPZ51JQX6JJ', 'Jena', 'Alexander', '1955-10-06'),
(8, 'ult7s', 'CGP24OOQ7VV', 'Angela', 'Stevenson', '1998-07-04'),
(9, 'cur0et', 'QSO20YPA5GM', 'Evan', 'Bradley', '1988-11-20'),
(10, 'pen0an', 'ACL72OUM6XC', 'Keelie', 'Herring', '1965-07-29');

--
-- Déchargement des données de la table `point_de_vente`
--

INSERT INTO `point_de_vente` (`pdv_id`, `nom`) VALUES
(1, 'OC PIZZA - Siège social'),
(2, 'OC PIZZA - BIARRITZ'),
(3, 'OC PIZZA - BORDEAUX'),
(4, 'OC PIZZA - TOULOUSE'),
(5, 'OC PIZZA - MARSEILLE'),
(6, 'OC PIZZA - PARIS');

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`commande_id`, `label_commande`, `date_commande`, `a_livrer`, `statut_commande`, `client_id`, `pdv_id`) VALUES
(1, 'domicile', '2020-06-10', 1, 'LIVREE', 1, 4),
(2, 'soirée', '2020-06-13', 1, 'LIVREE', 2, 3),
(3, '13/06/2020', '2020-06-13', 0, 'RETIREE', 3, 4),
(4, 'maison', '2020-06-16', 1, 'LIVREE', 4, 6),
(5, 'soirée', '2020-06-17', 1, 'LIVREE', 5, 2),
(6, 'maison', '2020-06-20', 0, 'RETIREE', 6, 5),
(7, '20/06/20', '2020-06-20', 1, 'LIVREE', 7, 6),
(8, 'travail', '2020-06-22', 1, 'LIVREE', 8, 5),
(9, 'bureau', '2020-06-24', 1, 'LIVREE', 9, 6),
(10, 'réunion', '2020-06-25', 1, 'LIVREE', 10, 2),
(11, 'sport', '2020-07-03', 1, 'LIVREE', 2, 3),
(12, 'sport', '2020-07-07', 0, 'RETIREE', 1, 4),
(13, 'soirée', '2020-07-11', 1, 'EN COURS DE PREPARATION', 3, 4),
(14, 'famille', '2020-07-11', 1, 'EN COURS DE LIVRAISON', 6, 5);

--
-- Déchargement des données de la table `coordonnees`
--

INSERT INTO `coordonnees` (`coordonnees_id`, `label_adresse`, `adresse_ligne1`, `adresse_ligne2`, `code_postal`, `ville`, `telephone`, `mail`) VALUES
(1, 'pdv1', '12, rue de Groussay', '', '64200', 'BIARRITZ', '0544268634', 'pdv1@oc-pizza.fr'),
(2, 'pdv2', '46, cours Jean Jaures', '', '33800', 'BORDEAUX', '0556103338', 'pdv2@oc-pizza.fr'),
(3, 'pdv3', '45, rue Pierre De Coubertin', '', '31400', 'TOULOUSE', '0532531485', 'pdv3@oc-pizza.fr'),
(4, 'pdv4', '98, rue Beauvau', '', '13005', 'MARSEILLE', '0491175834', 'pdv4@oc-pizza.fr'),
(5, 'pdv5', '50, rue La Boétie', '', '75015', 'PARIS', '0115485354', 'pdv5@oc-pizza.fr'),
(6, 'domicile', '30, rue Marie de Médicis', 'Bât C', '64200', 'BIARRITZ', '0647510385', 'employe5@oc-pizza.fr'),
(7, 'domicile', '22, rue Gontier-Patin', '', '64200', 'BIARRITZ', '0647137639', 'employe6@oc-pizza.fr'),
(8, 'domicile', '75, rue Porte d\'Orange', '', '64200', 'BIARRITZ', '0623433395', 'employe7@oc-pizza.fr'),
(9, 'domicile', '19, avenue de Provence', '', '64200', 'BIARRITZ', '0628960035', 'employe8@oc-pizza.fr'),
(10, 'domicile', '19, Place de la Gare', 'Appt 25', '33800', 'BORDEAUX', '0642994169', 'employe9@oc-pizza.fr'),
(11, 'domicile', '37, rue des Chaligny', '', '33800', 'BORDEAUX', '0696477722', 'employe10@oc-pizza.fr'),
(12, 'domicile', '21, Chemin Challet', '1er étage gauche', '33800', 'BORDEAUX', '0699445205', 'employe11@oc-pizza.fr'),
(13, 'domicile', '74, rue de Groussay', '', '33800', 'BORDEAUX', '0674347680', 'employe12@oc-pizza.fr'),
(14, 'domicile', '72, cours Franklin Roosevelt', '', '13005', 'MARSEILLE', '0607880590', 'employe13@oc-pizza.fr'),
(15, 'domicile', '80, rue Isambard', '', '13005', 'MARSEILLE', '0675542932', 'employe14@oc-pizza.fr'),
(16, 'domicile', '35, rue Gontier-Patin', '', '13005', 'MARSEILLE', '0640159170', 'employe15@oc-pizza.fr'),
(17, 'domicile', '40, rue Goya', '', '13005', 'MARSEILLE', '0648786998', 'employe16@oc-pizza.fr'),
(18, 'domicile', '63, rue Jean-Monnet', 'Appt 7', '75015', 'PARIS', '0673835757', 'employe17@oc-pizza.fr'),
(19, 'domicile', '70, rue du Faubourg National', '', '75015', 'PARIS', '0660458331', 'employe18@oc-pizza.fr'),
(20, 'domicile', '29, place de Miremont', '', '75015', 'PARIS', '0638870950', 'employe19@oc-pizza.fr'),
(21, 'domicile', '3, rue Marguerite', '', '75015', 'PARIS', '0698123200', 'employe20@oc-pizza.fr'),
(22, 'domicile', '65, boulevard Amiral Courbet', '', '31400', 'TOULOUSE', '0622145798', 'employe21@oc-pizza.fr'),
(23, 'domicile', '25, boulevard Amiral Courbet', '', '31400', 'TOULOUSE', '0631641799', 'employe22@oc-pizza.fr'),
(24, 'domicile', '70, rue Goya', '', '31400', 'TOULOUSE', '0681992425', 'employe23@oc-pizza.fr'),
(25, 'domicile', '45, rue Porte d\'Orange', 'Appt 5488', '31400', 'TOULOUSE', '0624293730', 'employe24@oc-pizza.fr'),
(26, 'domicile', '73, rue Beauvau', '', '31400', 'TOULOUSE', '0691423517', 'employe1@oc-pizza.fr'),
(27, 'domicile', '7, rue Adolphe Wurtz', '', '31400', 'TOULOUSE', '0610952039', 'employe2@oc-pizza.fr'),
(28, 'domicile', '22, avenue de Bouvines', '', '31400', 'TOULOUSE', '0695325839', 'employe3@oc-pizza.fr'),
(29, 'domicile', '9, rue Marie de M?dicis', 'Appt 6', '31400', 'TOULOUSE', '0630959050', 'employe4@oc-pizza.fr'),
(30, 'domicile', '3, rue Beauvau', '', '31400', 'TOULOUSE', '0660294672', 'ipsum.dolor.sit@ligula.co.uk'),
(31, 'domicile', '45, rue de Groussay', '', '33800', 'BORDEAUX', '0610954161', 'ante@commodoatlibero.net'),
(32, 'domicile', '48, Place de la Gare', '', '31400', 'TOULOUSE', '0635939759', 'non.enim.Mauris@dolor.org'),
(33, 'domicile', '525, rue Pierre De Coubertin', '3ème étage', '75015', 'PARIS', '0692239263', 'auctor.vitae@scelerisque.com'),
(34, 'domicile', '39, rue Marie', '', '64200', 'BIARRITZ', '0662283627', 'auctor.odio@nonluctus.com'),
(35, 'domicile', '4, rue Jean Jaures', '', '13005', 'MARSEILLE', '0671708918', 'nisl@anteblandit.edu'),
(36, 'domicile', '6, Avenue Victor Hugo', '5ème étage - Apt 45', '75015', 'PARIS', '0686118343', 'lectus.Nullam@felis.edu'),
(37, 'bureau', '115, avenue de Provence', 'CompanyName', '13005', 'MARSEILLE', '0645825433', 'sed.pede.nec@Uttincidunt.co.uk'),
(38, 'bureau', '215, rue Goya', '1er étage', '75015', 'PARIS', '0686118343', 'lectus.Nullam@felis.edu'),
(39, 'bureau', '12, cours Franklin Roosevelt', '', '64200', 'BIARRITZ', '0604588794', 'arcu@lectuspede.co.uk'),
(40, 'sport', '1, place Carnot', 'Fitness Park', '33800', 'BORDEAUX', '0638624197', 'mauris@tortordictum.org'),
(41, 'sport', '5, Rue du château', '', '31400', 'TOULOUSE', '0660294672', 'ipsum.dolor.sit@ligula.co.uk');

--
-- Déchargement des données de la table `coordonnees_client`
--

INSERT INTO `coordonnees_client` (`coordonnees_client_id`, `client_id`, `coordonnees_id`) VALUES
(1, 1, 30),
(2, 2, 31),
(3, 3, 32),
(4, 4, 33),
(5, 5, 34),
(6, 6, 35),
(7, 7, 36),
(8, 8, 37),
(9, 9, 38),
(10, 10, 39),
(11, 2, 40),
(12, 1, 41);

--
-- Déchargement des données de la table `fonction`
--

INSERT INTO `fonction` (`fonction_id`, `intitule`, `droits_recette_pizza`, `droits_livraison_pizza`, `droits_commande_ingredients`, `droits_gestion_employes`) VALUES
(1, 'Directeur général', 1, 1, 1, 1),
(2, 'Directeur des Ressources Humaines', 0, 0, 1, 1),
(3, 'Service comptabilité', 0, 0, 1, 0),
(4, 'Service achats', 0, 0, 1, 0),
(5, 'Préparateur de pizza', 1, 0, 0, 0),
(6, 'Livreur de pizza', 0, 1, 0, 0),
(7, 'Hôte de caisse', 1, 0, 0, 0);

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`matricule_pk`, `prenom`, `nom`, `date_naissance`, `date_creation`, `pdv_id`, `fonction_id`) VALUES
('076404-541', 'Orli', 'Hobbs', '1997-10-22', '2018-05-11', 4, 7),
('112072-619', 'Jerome', 'Guerra', '1994-01-07', '2020-06-11', 6, 7),
('112591-242', 'Whilemina', 'Diaz', '1977-05-06', '2020-02-16', 4, 6),
('175800-214', 'Wynne', 'Macias', '1998-08-06', '2018-05-11', 6, 6),
('185266-224', 'Dominique', 'Stanton', '1992-05-04', '2017-12-29', 2, 7),
('186558-759', 'Darius', 'Camacho', '1977-12-12', '2019-05-15', 3, 5),
('202063-294', 'Zelenia', 'Preston', '1990-08-01', '2020-02-16', 3, 6),
('252174-198', 'Tanek', 'Woodward', '1962-06-29', '2019-01-16', 1, 4),
('295007-448', 'Melvin', 'Mason', '1978-12-31', '2017-12-24', 1, 1),
('317862-789', 'Joseph', 'Maxwell', '1985-09-14', '2019-05-15', 4, 5),
('377448-925', 'Miriam', 'Ortiz', '1964-09-28', '2020-02-16', 5, 5),
('386518-311', 'Lara', 'Kemp', '1973-02-04', '2018-10-14', 2, 4),
('424538-655', 'Amery', 'Huffman', '1983-11-16', '2018-05-11', 1, 3),
('545216-320', 'Quinn', 'Bonner', '1983-04-02', '2017-12-29', 4, 4),
('618856-854', 'Bethany', 'Serrano', '1980-03-24', '2019-05-15', 6, 4),
('629117-138', 'Conan', 'Farley', '1974-10-19', '2019-04-21', 1, 2),
('629850-613', 'Kristen', 'Holloway', '1970-01-19', '2019-05-15', 2, 5),
('636546-060', 'Armand', 'Barnes', '1980-11-10', '2020-03-02', 6, 5),
('685763-789', 'Briar', 'Carrillo', '1956-02-15', '2020-03-02', 3, 7),
('687817-183', 'Venus', 'Mcmillan', '1969-10-17', '2019-05-15', 3, 4),
('804633-588', 'Evan', 'Raymond', '1994-07-08', '2018-05-11', 5, 4),
('854998-910', 'Ezra', 'Best', '1990-03-04', '2020-02-16', 2, 6),
('884469-414', 'Tate', 'Murray', '1955-01-22', '2020-03-02', 5, 7),
('958476-428', 'Tallulah', 'Shannon', '1999-05-29', '2019-01-16', 5, 6);

--
-- Déchargement des données de la table `coordonnees_employe`
--

INSERT INTO `coordonnees_employe` (`coordonnees_employe_id`, `coordonnees_employe_matricule_pk`, `coordonnees_employe_coordonnees_id`) VALUES
(1, '076404-541', 17),
(2, '112072-619', 25),
(3, '112591-242', 16),
(4, '175800-214', 24),
(5, '185266-224', 9),
(6, '186558-759', 11),
(7, '202063-294', 12),
(8, '252174-198', 29),
(9, '295007-448', 26),
(10, '317862-789', 15),
(11, '377448-925', 19),
(12, '386518-311', 6),
(13, '424538-655', 28),
(14, '545216-320', 14),
(15, '618856-854', 22),
(16, '629117-138', 27),
(17, '629850-613', 7),
(18, '636546-060', 23),
(19, '685763-789', 13),
(20, '687817-183', 10),
(21, '804633-588', 18),
(22, '854998-910', 8),
(23, '884469-414', 21),
(24, '958476-428', 20);

--
-- Déchargement des données de la table `coordonnees_pdv`
--

INSERT INTO `coordonnees_pdv` (`coordonnees_pdv_id`, `pdv_id`, `coordonnees_pdv_coordonnees_id`) VALUES
(1, 2, 1),
(2, 3, 2),
(3, 4, 3),
(4, 1, 3),
(5, 5, 4),
(6, 6, 5);

--
-- Déchargement des données de la table `type_paiement`
--

INSERT INTO `type_paiement` (`paiement_id`, `intitule`) VALUES
(1, 'Carte bancaire'),
(2, 'Espèces'),
(3, 'Chèque'),
(4, 'Paypal'),
(5, 'Ticket restaurant');

--
-- Déchargement des données de la table `facture`
--

INSERT INTO `facture` (`facture_id`, `numero_facture`, `date_facture`, `statut_paiement`, `commande_id`, `paiement_id`) VALUES
(1, '2006-T-01', '2020-06-10', 'PAYE', 1, 1),
(2, '2006-BO-01', '2020-06-13', 'PAYE', 2, 2),
(3, '2006-T-02', '2020-06-13', 'PAYE', 3, 1),
(4, '2006-P-01', '2020-06-16', 'PAYE', 4, 4),
(5, '2006-BI-01', '2020-07-17', 'PAYE', 5, 2),
(6, '2006-M-01', '2020-07-20', 'PAYE', 6, 1),
(7, '2006-P-02', '2020-07-20', 'PAYE', 7, 3),
(8, '2006-M-02', '2020-06-22', 'PAYE', 8, 5),
(9, '2006-P-03', '2020-06-24', 'PAYE', 9, 5),
(10, '2006-BI-02', '2020-06-25', 'PAYE', 10, 5),
(11, '2007-BO-01', '2020-07-03', 'PAYE', 11, 1),
(12, '2007-T-01', '2020-07-07', 'PAYE', 12, 3),
(13, '2007-T-02', '2020-07-11', 'PAYE', 13, 1),
(14, '2007-M-01', '2020-07-11', 'PAIEMENT A LA LIVRAISON', 14, 2);

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`ingredient_id`, `nom`, `unite`) VALUES
(1, 'sauce tomate', 'cl'),
(2, 'mozzarella', 'u'),
(3, 'champignon de Paris', 'g'),
(4, 'jambon', 'tranche'),
(5, 'roquefort', 'g'),
(6, 'emmental', 'g'),
(7, 'chèvre', 'g'),
(8, 'olive', 'g'),
(9, 'anchois', 'u'),
(10, 'câpres', 'g'),
(11, 'poivron', 'g'),
(12, 'chorizo', 'tranche');

--
-- Déchargement des données de la table `pizza`
--

INSERT INTO `pizza` (`pizza_id`, `nom`, `prix`, `description`) VALUES
(1, 'royale', 13, 'Saute tomate, jambon, champignon, mozzarella, olives'),
(2, 'napolitaine', 12, 'Saute tomate, anchois, câpres, mozzarella, olives'),
(3, 'chorizo', 14, 'Sauce tomate, poivrons, chorizo, mozzarella, olives'),
(4, '4 fromages', 14, 'Sauce tomate, emmental, mozzarella, roquefort, chèvre'),
(5, 'margarita', 11, 'Sauce tomate, mozzarella, olives');

--
-- Déchargement des données de la table `pizza_commande`
--

INSERT INTO `pizza_commande` (`pizza_commande_id`, `pizza_id`, `commande_id`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 1, 2),
(4, 2, 2),
(5, 3, 2),
(6, 4, 2),
(7, 5, 3),
(8, 3, 4),
(9, 1, 4),
(10, 3, 5),
(11, 4, 5),
(12, 1, 6),
(13, 5, 6),
(14, 2, 7),
(15, 1, 8),
(16, 5, 8),
(17, 3, 9),
(18, 1, 10),
(19, 1, 10),
(20, 5, 10),
(21, 5, 10),
(22, 1, 11),
(23, 5, 12),
(24, 1, 13),
(25, 2, 13),
(26, 3, 13),
(27, 4, 13),
(28, 3, 14),
(29, 2, 14),
(30, 4, 14);

--
-- Déchargement des données de la table `recette_pizza`
--

INSERT INTO `recette_pizza` (`recette_id`, `quantite`, `ingredient_id`, `pizza_id`) VALUES
(1, 100, 1, 5),
(2, 1, 2, 5),
(3, 20, 8, 5),
(4, 100, 1, 1),
(5, 2, 4, 1),
(6, 100, 3, 1),
(7, 1, 2, 1),
(8, 20, 8, 1),
(9, 100, 1, 2),
(10, 4, 9, 2),
(11, 20, 10, 2),
(12, 1, 2, 2),
(13, 20, 8, 2),
(14, 100, 1, 3),
(15, 50, 11, 3),
(16, 10, 12, 3),
(17, 1, 2, 3),
(18, 20, 8, 3),
(19, 100, 1, 4),
(20, 100, 6, 4),
(21, 1, 2, 4),
(22, 50, 5, 4),
(23, 50, 7, 4);

--
-- Déchargement des données de la table `stock`
--

INSERT INTO `stock` (`stock_id`, `quantite`, `pdv_id`, `ingredient_id`) VALUES
(1, 5000, 2, 1),
(2, 6000, 3, 1),
(3, 8000, 6, 1),
(4, 3000, 5, 1),
(5, 8000, 4, 1),
(6, 5, 2, 2),
(7, 6, 3, 2),
(8, 10, 4, 2),
(9, 3, 5, 2),
(10, 12, 6, 2),
(11, 200, 2, 3),
(12, 300, 3, 3),
(13, 250, 4, 3),
(14, 260, 5, 3),
(15, 340, 6, 3),
(16, 12, 2, 4),
(17, 10, 3, 4),
(18, 20, 4, 4),
(19, 8, 5, 4),
(20, 14, 6, 4),
(21, 250, 2, 5),
(22, 200, 3, 5),
(23, 350, 4, 5),
(24, 300, 5, 5),
(25, 300, 6, 5),
(26, 600, 2, 6),
(27, 700, 3, 6),
(28, 900, 4, 6),
(29, 700, 5, 6),
(30, 500, 6, 6),
(31, 200, 2, 7),
(32, 250, 3, 7),
(33, 500, 4, 7),
(34, 250, 5, 7),
(35, 300, 6, 7),
(36, 400, 2, 8),
(37, 800, 3, 8),
(38, 1000, 4, 8),
(39, 900, 5, 8),
(40, 700, 6, 8),
(41, 20, 2, 9),
(42, 25, 2, 9),
(43, 30, 4, 9),
(44, 24, 5, 9),
(45, 28, 6, 9),
(46, 100, 2, 10),
(47, 150, 3, 10),
(48, 250, 4, 10),
(49, 300, 5, 10),
(50, 340, 6, 10),
(51, 500, 2, 11),
(52, 400, 3, 11),
(53, 600, 4, 11),
(54, 400, 5, 11),
(55, 450, 6, 11),
(56, 60, 2, 12),
(57, 100, 3, 12),
(58, 500, 4, 12),
(59, 350, 5, 12),
(60, 260, 6, 12);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
