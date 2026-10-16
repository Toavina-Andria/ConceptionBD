PLAT (modifié)
(_id_,nom_plat,prix_plat,#id_categorie)

CATEGORIE_PLAT (nouveau)
(_id_,nom_categorie)

COMMANDE (modifié)
(_id_,date,#id_client)

COMMANDE_DETAILS(modifié)
(_id_,#id_plat,#id_commande,quantité,prix)



## Réponses QUESTION:
 Étape 2 : La manipulation des donnée devient problématique après un certains nombre de ligne.
 Exemple : Si nous avons 15 plats malagasy il est facile de modifier la catégories car on touche a une seul donnée la ou si on a juste une collone alors on doit modifier manuellement les 15 lignes qui on le meme categories.

Étape 3 : Placer la quantité dans commandes_détails 

Étape 4 : Non, car les clients sont de passage des fois donc il ne reviennent pas pour enregistrer leurs informations