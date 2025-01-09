SELECT nom, nom_categorie, temps_de_preparation /* on dit que l'on veux ces informations*/
FROM recette/* on prend de la table recette*/

INNER JOIN type_recette ON recette.id_type_recette= type_recette.id_type_recette/* on fait la jointure entre les 2 tables sur le champ commun des 2 tables*/
ORDER BY temps_de_preparation DESC/* on ordonne dans l'ordre decroissant par le temps de preparation*/





