-- Active: 1764334637973@@127.0.0.1@5432@conceptiontest
CREATE DATABASE ConceptionTest;

CREATE TABLE IF NOT EXISTS plat(
    id SERIAL PRIMARY KEY,
    nom_plat VARCHAR(50) NOT NULL,
    prix_plat INTEGER NOT NULL
);



INSERT INTO plat (nom_plat,prix_plat) VALUES
('Romazava', 7000),
('Ravitoto sy Henakisoa', 8000),
('Akoho sy Voanio', 8500),
('Mi sao', 6000),
('Soupe Chinoise', 5000),
('Mofo gasy (Les 4)', 1000),
('Ranona Apango', 500);