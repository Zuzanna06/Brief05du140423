-- Création de la base de données si elle n'existe pas

CREATE DATABASE  IF NOT EXISTS `euro_fit_zuzanna` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;


-- on utilise la base de données créée
USE euro_fit_zuzanna;
-- on commence par les feuilles tel que les tables les plus éloignées

-- Si elle n'existe pas on crée la table admnistrateur
CREATE TABLE IF NOT EXISTS coach
(
-- id_coach en auto increment et non nulle c'est un int
id_coach INT NOT NULL AUTO_INCREMENT, 

-- id_coach est non nulle c'est un text de 25 caractères
prenom_coach VARCHAR(30) NOT NULL,
nom_coach VARCHAR(30) NOT NULL,
mail_coach VARCHAR(50) NOT NULL,
tel_coach VARCHAR(15) NOT NULL,

-- la clé primaire est id_coach
PRIMARY KEY (id_coach)
);

-- Si elle n'existe pas on crée la table

 -- ------------------------------------------
-- PAYS
-- ------------------------------------------

CREATE TABLE IF NOT EXISTS pays
(
id_pays INT NOT NULL AUTO_INCREMENT, 
nom_pays  VARCHAR(30) NOT NULL,
PRIMARY KEY (id_pays)
);

-- ------------------------------------------
-- ADRESSE
-- ------------------------------------------

CREATE TABLE IF NOT EXISTS adresse
(
id_adresse INT NOT NULL AUTO_INCREMENT, 
numero_adresse  VARCHAR(20) NOT NULL,
rue_adresse  VARCHAR(15) NOT NULL,
ville_adresse  VARCHAR(50) NOT NULL,
code_postale_adresse  VARCHAR(15) NOT NULL,
id_pays INT,
PRIMARY KEY (id_adresse),

-- on défini la clé étrangère avec le nom fk_id_pays
-- elle fait le lien en id_adresse de notre table

CONSTRAINT `fk_id_pays` FOREIGN KEY (id_pays) REFERENCES pays (id_pays) ON DELETE SET NULL ON UPDATE CASCADE
);

-- ------------------------------------------
-- MEMBRE
-- ------------------------------------------


CREATE TABLE IF NOT EXISTS membre
(
id_membre INT NOT NULL AUTO_INCREMENT, 
nom_membre VARCHAR(30) NOT NULL,
prenom_membre VARCHAR(30) NOT NULL,
email_membre VARCHAR(50) NOT NULL,
tel_membre VARCHAR(15) NOT NULL,
id_adresse INT,
PRIMARY KEY (id_membre),

CONSTRAINT `fk_id_adresse` FOREIGN KEY (id_adresse) REFERENCES adresse (id_adresse) ON DELETE SET NULL ON UPDATE CASCADE
);


-- ------------------------------------------
-- TYPE ABONNEMENT
-- ------------------------------------------

CREATE TABLE IF NOT EXISTS type_abonnement
(
id_type_abonnement INT NOT NULL AUTO_INCREMENT, 
libele  VARCHAR(25) NOT NULL,
prix_abonnement FLOAT,
PRIMARY KEY (id_type_abonnement)
);

-- ------------------------------------------
-- ABONNEMENT
-- ------------------------------------------


CREATE TABLE IF NOT EXISTS abonnement
(
id_abonnement INT NOT NULL AUTO_INCREMENT, 
date_debut DATE,
date_fin DATE,
-- date_debut et date_fin est une variable de type DATE
num_badge VARCHAR(30) NOT NULL,
id_type_abonnement INT,
id_membre INT,


PRIMARY KEY (id_abonnement),
CONSTRAINT `fk_id_membre` FOREIGN KEY (id_membre ) REFERENCES membre (id_membre ) ON DELETE SET NULL ON UPDATE CASCADE,
CONSTRAINT `fk_id_type_abonnement` FOREIGN KEY (id_type_abonnement) REFERENCES type_abonnement (id_type_abonnement) ON DELETE SET NULL ON UPDATE CASCADE
);




-- ------------------------------------------
-- ACTIVITE
-- ------------------------------------------


CREATE TABLE IF NOT EXISTS activite
(
id_activite INT NOT NULL AUTO_INCREMENT, 
libele VARCHAR(25) NOT NULL,
id_coach INT,
PRIMARY KEY (id_activite),
CONSTRAINT `fk_id_coach` FOREIGN KEY (id_coach) REFERENCES coach (id_coach) ON DELETE SET NULL ON UPDATE CASCADE
);

-- ------------------------------------------
-- ACTIVITE CLIENT
-- ------------------------------------------


CREATE TABLE IF NOT EXISTS activite_client
(
id_activite_client INT NOT NULL AUTO_INCREMENT, 
libele VARCHAR(25) NOT NULL,
heure_debut DATETIME,
dateheure_fin DATETIME,
-- heure_debut et heure_fin est une variable de type DATETIME
date_activite DATE,
id_membre INT,
id_activite INT,

PRIMARY KEY (id_activite_client),
CONSTRAINT `fk_id_membres` FOREIGN KEY (id_membre) REFERENCES membre (id_membre) ON DELETE SET NULL ON UPDATE CASCADE,
CONSTRAINT `fk_id_activite` FOREIGN KEY (id_activite) REFERENCES activite (id_activite) ON DELETE SET NULL ON UPDATE CASCADE
);

