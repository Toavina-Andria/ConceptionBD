CREATE DATABASE ConceptionTest;
--Aucun changement
CREATE TABLE IF NOT EXISTS plat(
    id SERIAL PRIMARY KEY,
    nom_plat VARCHAR(50) NOT NULL,
    prix_plat INTEGER NOT NULL
);

--Nouveau 
CREATE TABLE IF NOT EXISTS categorie_plat(
    id SERIAL PRIMARY KEY,
    nom_categorie VARCHAR(50) NOT NULL
);

ALTER TABLE plat ADD COLUMN id_categorie INTEGER;

INSERT INTO categorie_plat (nom_categorie) VALUES 
('Plats Malagasy'),
('Plats Chinois'),
('Soupe'),
('Dessert'),
('Boisson');


UPDATE plat
SET id_categorie = 1
WHERE id IN (1, 2, 3);

UPDATE plat
SET id_categorie = 2
WHERE id IN (4)

UPDATE plat
SET id_categorie = 3
WHERE id IN (5)

UPDATE plat
SET id_categorie = 4
WHERE id IN (6)

UPDATE plat
SET id_categorie = 5
WHERE id IN (7)


ALTER TABLE plat 
ALTER COLUMN id_categorie SET NOT NULL;

ALTER TABLE plat
ADD CONSTRAINT fk_plat_categorie 
FOREIGN KEY (id_categorie) 
REFERENCES categorie_plat(id);

--Début Étape 3

CREATE TABLE IF NOT EXISTS commande(
    id SERIAL PRIMARY KEY,
    date DATE
);

CREATE TABLE IF NOT EXISTS commande_details (
    id SERIAL PRIMARY KEY,
    id_commande INTEGER NOT NULL REFERENCES commande(id),
    id_plat INTEGER NOT NULL REFERENCES plat(id),
    quantité INTEGER NOT NULL,
    prix INTEGER NOT NULL
);

INSERT INTO commande (id, date) VALUES (1, '2026-10-16');

INSERT INTO commande_details (id_commande, id_plat, quantité, prix) VALUES 
(1, 1, 2, 12000),
(1, 3, 1, 3000);