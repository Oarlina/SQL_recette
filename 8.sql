SELECT ROUND(SUM(prix*quantite),2)
FROM ingredient_recette

INNER JOIN ingredient ON ingredient_recette.id_ingredient = ingredient.id_ingredient


WHERE id_recette = 5
