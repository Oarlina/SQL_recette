
SELECT type_recette.nom_categorie, 
		COUNT(type_recette.nom_categorie) FROM recette  /* distinct permet d'eviter les doublons */
/* je recupere le nom d'une recette et le nombre de type de recette dans recette*/

INNER JOIN type_recette ON recette.id_type_recette = type_recette.id_type_recette /* je recupere la table type_recette*/
GROUP BY type_recette.nom_categorie /* et je regroupe selon le nom des type_recette*/