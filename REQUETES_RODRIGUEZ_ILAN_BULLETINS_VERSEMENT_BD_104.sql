/*
	Toutes les colonnes
*/
SELECT * FROM t_personne_compte AS T1
INNER JOIN t_personne AS T2 ON T2.id_personne = T1.fk_personne
INNER JOIN t_compte AS T3 ON T3.id_compte = T1.fk_compte

/*
	Seulement certaines colonnes
*/
SELECT id_compte, compte_iban , id_personne, nom_personne FROM t_personne_compte AS T1
INNER JOIN t_personne AS T2 ON T2.id_personne = T1.fk_personne
INNER JOIN t_compte AS T3 ON T3.id_compte = T1.fk_compte

/*
	Permet d'afficher toutes les lignes de la table de droite (t_compte) (qui est écrite en sql à droite de t_personne_compte)
	y compris les lignes qui ne sont pas attribuées à des personne.
*/
SELECT id_compte, compte_iban , id_personne, nom_personne FROM t_personne_compte AS T1
INNER JOIN t_personne AS T2 ON T2.id_personne = T1.fk_personne
RIGHT JOIN t_compte AS T3 ON T3.id_compte = T1.fk_compte

/*
	Permet d'aficher toutes les lignes de la table de droite (t_compte) (qui est écrite en sql à droite de t_personne_compte)
	y compris les lignes qui ne sont pas attribuées à des personne.
*/
SELECT id_compte, compte_iban , id_personne, nom_personne  FROM t_personne_compte AS T1
RIGHT JOIN t_personne AS T2 ON T2.id_personne = T1.fk_personne
LEFT JOIN t_compte AS T3 ON T3.id_compte = T1.fk_compte


/*
	Affiche TOUS les personne qui n'ont pas de compte attribués
*/
SELECT id_compte, compte_iban , id_personne, nom_personne  FROM t_personne_compte AS T1
RIGHT JOIN t_personne AS T2 ON T2.id_personne = T1.fk_personne
LEFT JOIN t_compte AS T3 ON T3.id_compte = T1.fk_compte


/*
	Affiche SEULEMENT les personne qui n'ont pas de compte attribués
*/

SELECT id_compte, compte_iban , id_personne, nom_personne  FROM t_personne_compte AS T1
RIGHT JOIN t_personne AS T2 ON T2.id_personne = T1.fk_personne
LEFT JOIN t_compte AS T3 ON T3.id_compte = T1.fk_compte
WHERE T1.fk_compte IS NULL
