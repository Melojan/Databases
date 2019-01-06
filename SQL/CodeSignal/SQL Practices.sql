projectList : 

CREATE PROCEDURE projectList()
BEGIN
SELECT project_name,team_lead,income FROM Projects;
END

countriesSelection :

SELECT PROCEDURE countriesSelection()
BEGIN
SELECT name,continent,population FROM countries
WHERE continent = 'Africa';
END

monthlyScholarships :

CREATE PROCEDURE monthlyScholarships()
BEGIN
SELECT id, (scholarship/12) AS scholarship FROM
scholarships ORDER BY id ASC;
END

projectsTeam :

CREATE PROCEDURE projectsTeam()
BEGIN
SELECT DISTINCT name FROM projectLog ORDER BY name ASC;
END

automaticNotifications :

CREATE PROCEDURE automaticNotifications()
SELECT email FROM users
WHERE NOT role IN ("admin","premium")
ORDER BY email

volleyballResults :

CREATE PROCEDURE volleyballResults()
BEGIN
SELECT * FROM results ORDER BY wins ASC;
END

mostExpensive :

CREATE PROCEDURE mostExpensive()
BEGIN
SELECT name FROM Products ORDER BY (price * quantity) DESC,name ASC LIMIT 1;
END

contestLeaderboard :

CREATE PROCEDURE contestLeaderboard()
BEGIN
SELECT name FROM leaderboard ORDER BY score DESC LIMIT 5 OFFSET 3;
END

gradeDistribution :

CREATE PROCEDURE gradeDistribution()
BEGIN
SELECT name, ID FROM Grades WHERE Final > 0.5 * Midterm1 + 0.5 * Midterm2 ORDER BY LEFT (Name,3) , ID ASC;
END

suspectsInvestigation :

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

suspectsInvestigation2 :

CREATE PROCEDURE suspectsInvestigation2()
BEGIN
SELECT Suspect.id AS id , Suspect.name AS name , Suspect.surname AS surname FROM Suspect
WHERE NOT
(Suspect.height > 170 AND lower(Suspect.surname) LIKE 'Gre_n' AND lower(Suspect.name) LIKE 'b%')
ORDER BY id;
END