SELECT r.id_recette, r.nom FROM recette r

LEFT JOIN ingredient_recette ir ON r.id_recette = ir.id_recette
WHERE ir.id_ingredient IS NULL 
 
