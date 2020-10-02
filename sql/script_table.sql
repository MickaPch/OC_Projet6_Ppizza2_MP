
CREATE DATABASE IF NOT EXISTS oc_pizza;


CREATE TABLE type_paiement (
                paiement_id INT AUTO_INCREMENT NOT NULL,
                intitule VARCHAR(100) NOT NULL,
                PRIMARY KEY (paiement_id)
);


CREATE TABLE pizza (
                pizza_id INT AUTO_INCREMENT NOT NULL,
                nom VARCHAR(100) NOT NULL,
                prix DOUBLE PRECISION NOT NULL,
                description TEXT(1000),
                PRIMARY KEY (pizza_id)
);


CREATE TABLE ingredient (
                ingredient_id INT AUTO_INCREMENT NOT NULL,
                nom VARCHAR(100) NOT NULL,
                unite VARCHAR(10) NOT NULL,
                PRIMARY KEY (ingredient_id)
);


CREATE TABLE recette_pizza (
                recette_id INT AUTO_INCREMENT NOT NULL,
                quantite DOUBLE PRECISION NOT NULL,
                ingredient_id INT NOT NULL,
                pizza_id INT NOT NULL,
                PRIMARY KEY (recette_id)
);


CREATE TABLE fonction (
                fonction_id INT AUTO_INCREMENT NOT NULL,
                intitule VARCHAR(200) NOT NULL,
                droits_recette_pizza BOOLEAN DEFAULT FALSE NOT NULL,
                droits_livraison_pizza BOOLEAN DEFAULT FALSE NOT NULL,
                droits_commande_ingredients BOOLEAN DEFAULT FALSE NOT NULL,
                droits_gestion_employes BOOLEAN DEFAULT FALSE NOT NULL,
                PRIMARY KEY (fonction_id)
);


CREATE TABLE client (
                client_id INT AUTO_INCREMENT NOT NULL,
                pseudo VARCHAR(20) NOT NULL,
                mot_de_passe VARCHAR(20) NOT NULL,
                prenom VARCHAR(50) NOT NULL,
                nom VARCHAR(50) NOT NULL,
                date_naissance DATE DEFAULT NULL,
                PRIMARY KEY (client_id)
);


CREATE TABLE Coordonnees (
                coordonnees_id INT NOT NULL,
                label_adresse VARCHAR(100) NOT NULL,
                adresse_ligne1 VARCHAR(250) NOT NULL,
                adresse_ligne2 VARCHAR(250) NOT NULL,
                code_postal VARCHAR(5) NOT NULL,
                ville VARCHAR(100) NOT NULL,
                telephone VARCHAR(10) NOT NULL,
                mail VARCHAR(250) DEFAULT NULL,
                PRIMARY KEY (coordonnees_id)
);


CREATE TABLE coordonnees_client (
                coordonnees_client_id INT AUTO_INCREMENT NOT NULL,
                client_id INT NOT NULL,
                coordonnees_id INT NOT NULL,
                PRIMARY KEY (coordonnees_client_id)
);


CREATE TABLE Point_De_Vente (
                pdv_id INT AUTO_INCREMENT NOT NULL,
                nom VARCHAR(100) NOT NULL,
                PRIMARY KEY (pdv_id)
);


CREATE TABLE coordonnees_pdv (
                coordonnees_pdv_id INT AUTO_INCREMENT NOT NULL,
                pdv_id INT NOT NULL,
                coordonnees_pdv_coordonnees_id INT NOT NULL,
                PRIMARY KEY (coordonnees_pdv_id)
);


CREATE TABLE commande (
                commande_id INT AUTO_INCREMENT NOT NULL,
                label_commande VARCHAR(10) NOT NULL,
                date_commande DATE NOT NULL,
                a_livrer BOOLEAN DEFAULT FALSE NOT NULL,
                statut_commande VARCHAR(50) NOT NULL,
                client_id INT NOT NULL,
                pdv_id INT NOT NULL,
                PRIMARY KEY (commande_id)
);


CREATE TABLE pizza_commande (
                pizza_commande_id INT AUTO_INCREMENT NOT NULL,
                pizza_id INT NOT NULL,
                commande_id INT NOT NULL,
                PRIMARY KEY (pizza_commande_id)
);


CREATE TABLE facture (
                facture_id INT AUTO_INCREMENT NOT NULL,
                numero_facture VARCHAR(10) NOT NULL,
                date_facture DATE NOT NULL,
                statut_paiement VARCHAR(50) NOT NULL,
                commande_id INT NOT NULL,
                paiement_id INT NOT NULL,
                PRIMARY KEY (facture_id)
);


CREATE TABLE stock (
                stock_id INT AUTO_INCREMENT NOT NULL,
                quantite DOUBLE PRECISION NOT NULL,
                pdv_id INT NOT NULL,
                ingredient_id INT NOT NULL,
                PRIMARY KEY (stock_id)
);


CREATE TABLE employe (
                matricule_pk VARCHAR(10) NOT NULL,
                prenom VARCHAR(50) NOT NULL,
                nom VARCHAR(50) NOT NULL,
                date_naissance DATE NOT NULL,
                date_creation DATE NOT NULL,
                pdv_id INT NOT NULL,
                fonction_id INT NOT NULL,
                PRIMARY KEY (matricule_pk)
);


CREATE TABLE coordonnees_employe (
                coordonnees_employe_id INT AUTO_INCREMENT NOT NULL,
                coordonnees_employe_matricule_pk VARCHAR(10) NOT NULL,
                coordonnees_employe_coordonnees_id INT NOT NULL,
                PRIMARY KEY (coordonnees_employe_id)
);


ALTER TABLE facture ADD CONSTRAINT type_paiement_facture_fk
FOREIGN KEY (paiement_id)
REFERENCES type_paiement (paiement_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE recette_pizza ADD CONSTRAINT pizza_recette_pizza_fk
FOREIGN KEY (pizza_id)
REFERENCES pizza (pizza_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE pizza_commande ADD CONSTRAINT pizza_produit_commande_fk
FOREIGN KEY (pizza_id)
REFERENCES pizza (pizza_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE stock ADD CONSTRAINT ingredient_stock_fk
FOREIGN KEY (ingredient_id)
REFERENCES ingredient (ingredient_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE recette_pizza ADD CONSTRAINT ingredient_recette_pizza_fk
FOREIGN KEY (ingredient_id)
REFERENCES ingredient (ingredient_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE employe ADD CONSTRAINT fonction_employe_fk
FOREIGN KEY (fonction_id)
REFERENCES fonction (fonction_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE commande ADD CONSTRAINT client_commande_fk
FOREIGN KEY (client_id)
REFERENCES client (client_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE coordonnees_client ADD CONSTRAINT client_coordonnees_client_fk
FOREIGN KEY (client_id)
REFERENCES client (client_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE coordonnees_client ADD CONSTRAINT coordonnees_coordonnees_client_fk
FOREIGN KEY (coordonnees_id)
REFERENCES Coordonnees (coordonnees_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE coordonnees_pdv ADD CONSTRAINT coordonnees_coordonnees_pdv_fk
FOREIGN KEY (coordonnees_pdv_coordonnees_id)
REFERENCES Coordonnees (coordonnees_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE coordonnees_employe ADD CONSTRAINT coordonnees_coordonnees_employe_fk
FOREIGN KEY (coordonnees_employe_coordonnees_id)
REFERENCES Coordonnees (coordonnees_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE employe ADD CONSTRAINT point_de_vente_employe_fk
FOREIGN KEY (pdv_id)
REFERENCES Point_De_Vente (pdv_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE stock ADD CONSTRAINT point_de_vente_stock_fk
FOREIGN KEY (pdv_id)
REFERENCES Point_De_Vente (pdv_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE commande ADD CONSTRAINT point_de_vente_commande_fk
FOREIGN KEY (pdv_id)
REFERENCES Point_De_Vente (pdv_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE coordonnees_pdv ADD CONSTRAINT coordonnees_pdv_point_de_vente_fk
FOREIGN KEY (pdv_id)
REFERENCES Point_De_Vente (pdv_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE facture ADD CONSTRAINT commande_facture_fk
FOREIGN KEY (commande_id)
REFERENCES commande (commande_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE pizza_commande ADD CONSTRAINT commande_produit_commande_fk
FOREIGN KEY (commande_id)
REFERENCES commande (commande_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE coordonnees_employe ADD CONSTRAINT employe_coordonnees_employe_fk
FOREIGN KEY (coordonnees_employe_matricule_pk)
REFERENCES employe (matricule_pk)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
