SELECT r.nom, ROUND(SUM(ing.prix * ir.quantite),2) AS total
FROM ingredient_recette ir
INNER JOIN ingredient ing ON ir.id_ingredient = ing.id_ingredient
INNER JOIN recette  r ON ir.id_recette = r.id_recette

GROUP BY r.nom

HAVING total >= ALL (
		SELECT ROUND(SUM(ingredient.prix * ingredient_recette.quantite),2) AS total2
		FROM ingredient_recette 
		INNER JOIN ingredient ON ingredient_recette.id_ingredient = ingredient.id_ingredient
		INNER JOIN recette ON ingredient_recette.id_recette = recette.id_recette
		GROUP BY recette.nom
		)


