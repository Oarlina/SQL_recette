SELECT nom, quantite, unite, prix FROM ingredient_recette /* je veux afficher le nom, la quantite, l'unite et le prix des ingredients d'une recette */

INNER JOIN ingredient ON ingredient_recette.id_ingredient = ingredient.id_ingredient /* je recupere la table ingredient*/

WHERE id_recette = 5 /* ou l'id de la recette vaut 5*/