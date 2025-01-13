SELECT ingredient.nom, COUNT(ir.id_ingredient) FROM ingredient_recette ir

INNER JOIN ingredient ON ir.id_ingredient = ingredient.id_ingredient 

GROUP BY ir.id_ingredient
HAVING (COUNT(ir.id_ingredient)>=4)