CREATE PROCEDURE suspectsInvestigation2()
BEGIN
SELECT Suspect.id AS id , Suspect.name AS name , Suspect.surname AS surname FROM Suspect
WHERE NOT
(Suspect.height > 170 AND lower(Suspect.surname) LIKE 'Gre_n' AND lower(Suspect.name) LIKE 'b%')
ORDER BY id;
END