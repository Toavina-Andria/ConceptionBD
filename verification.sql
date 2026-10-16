-- Étape 1 :  Afficher les plats du plus cher au moins cher
SELECT nom_plat, prix_plat FROM plat ORDER BY prix_plat DESC;

--Étape 2 : Nombre de plat par catégories
SELECT c.id AS id_categorie, c.nom_categorie, COUNT(p.id) AS nombre_de_plats FROM categorie_plat c
LEFT JOIN plat p ON c.id = p.id_categorie GROUP BY c.id, c.nom_categorie
ORDER BY c.id;

--Étape 3 : Prix de commandes
SELECT c.id AS id_commande, c.date, SUM(cd.quantité * cd.prix) AS montant_total
FROM commande c JOIN commande_details cd ON c.id = cd.id_commande
GROUP BY c.id, c.date ORDER BY c.id;

--Étape 4 : Clients habitués
SELECT 
    cmd.id AS id_commande,
    cmd.date,
    COALESCE(cl.nom_client, 'null') AS client
FROM commande cmd LEFT JOIN client cl ON cmd.id_client = cl.id ORDER BY cmd.id;