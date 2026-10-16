-- Active: 1764334637973@@127.0.0.1@5432@conceptiontest
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