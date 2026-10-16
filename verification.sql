-- Étape 1 :  Afficher les plats du plus cher au moins cher
SELECT nom_plat, prix_plat FROM plat ORDER BY prix_plat DESC;

--Étape 2 : Nombre de plat par catégories
SELECT c.id AS id_categorie, c.nom_categorie, COUNT(p.id) AS nombre_de_plats FROM categorie_plat c
LEFT JOIN plat p ON c.id = p.id_categorie GROUP BY c.id, c.nom_categorie
ORDER BY c.id;