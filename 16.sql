
SELECT nom AS plus_rapide FROM recette

WHERE temps_de_preparation <= ALL (
		SELECT MIN(r2.temps_de_preparation) FROM recette r2
		GROUP BY r2.temps_de_preparation
		)





