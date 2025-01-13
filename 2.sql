SELECT recette.nom, nom_categorie, temps_de_preparation, COUNT(id_ingredient)
FROM recette
INNER JOIN type_recette ON recette.id_type_recette= type_recette.id_type_recette
INNER JOIN ingredient_recette ON recette.id_recette = ingredient_recette.id_recette

GROUP BY recette.nom, nom_categorie, temps_de_preparation
ORDER BY temps_de_preparation DESC
