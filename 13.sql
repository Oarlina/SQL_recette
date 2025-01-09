
SELECT recette.nom, ingredient.nom FROM ingredient_recette /* je veux afficher le nom de la recette et l'ingredient */

INNER JOIN recette  ON ingredient_recette.id_recette = recette.id_recette /* je recupere la table recette */
INNER JOIN ingredient  ON ingredient_recette.id_ingredient = ingredient.id_ingredient /* je recupere la table ingredient */

WHERE ingredient.nom = 'boeuf' /* je fais afficher les recettes avec du boeuf */