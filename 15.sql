SELECT r.nom AS recette_avec_ingredient_moins_deux_euros FROM recette r

WHERE r.id_recette NOT IN ( /* je filtre les recettes dont l'id_recette n'est pas présent*/
	SELECT r.id_recette FROM recette  
	INNER JOIN ingredient_recette ON r.id_recette = ingredient_recette.id_recette
	INNER JOIN ingredient ON ingredient.id_ingredient = ingredient_recette.id_ingredient
	WHERE ingredient.prix >=2)

/*INNER JOIN ingredient_recette ir ON r.id_recette = ir.id_recette
INNER JOIN ingredient ing ON ir.id_ingredient = ing.id_ingredient
GROUP BY r.nom
HAVING prix < ALL  (
		SELECT i.prix
		FROM ingredient i
		WHERE prix >=2 )*/
		
		
		