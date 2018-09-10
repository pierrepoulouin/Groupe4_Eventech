USE `Eventech`;

SELECT * FROM `utilisateurs`
INNER JOIN `evenements` ON refCreateur = mailUtilisateur
WHERE dateEvent > '2018-09-01'
AND typeUtilisateur = 'normal';