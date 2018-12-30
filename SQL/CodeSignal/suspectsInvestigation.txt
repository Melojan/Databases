CREATE PROCEDURE suspectsInvestigation()
BEGIN
SELECT Suspect.id AS id, Suspect.name AS name, Suspect.surname AS surname
FROM
Suspect
WHERE
Suspect.height <= 170
AND LEFT(Suspect.name, 1) = 'B'
AND Suspect.surname LIKE 'Gre_n';
END