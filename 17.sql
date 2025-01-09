SELECT * FROM ingredient_recette

INNER JOIN ingredient ON ingredient_recette.id_ingredient = ingredient.prix
WHERE prix<2