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

securityBreach :

CREATE PROCEDURE securityBreach()
BEGIN
SELECT * FROM users WHERE attribute LIKE BINARY CONCAT('%_\%,'first_name,'\_',second_name, '\%%') ORDER BY attribute ASC;
END

testCheck :

CREATE PROCEDURE testCheck()
SELECT id, IF (given_answer IS NULL , 'no answer' , IF(given_answer = correct_answer, 'correct','incorrect')) AS checks
FROM answers
ORDER BY id;

expressionsVerfication :

CREATE PROCEDURE expressionsVerification()
BEGIN
SELECT * FROM expressions
WHERE
CASE operation
WHEN '+' THEN a + b
WHEN '-' THEN a - b
WHEN '/' THEN a / b
WHEN '*' THEN a * b
END = c
ORDER BY id ASC;
END

newsSubscribers :

CREATE PROCEDURE newsSubscribers()
BEGIN
SELECT subscriber FROM full_year WHERE newspaper LIKE '%DAILY%'
UNION
SELECT subscriber FROM half_year WHERE newspaper LIKE '%DAILY%'
ORDER BY subscriber ASC;
END

countriesInfo :

CREATE PROCEDURE countriesInfo()
BEGIN
SELECT COUNT(name) AS number, AVG(population) AS average, SUM(population) AS total 
FROM countries;
END

itemCounts :

CREATE PROCEDURE itemCounts()
BEGIN
SELECT item_name,item_type, COUNT(*) AS item_count
FROM availableItems
GROUP BY item_type,item_name
ORDER BY item_type ASC,item_name ASC;
END

usersByContinent :

CREATE PROCEDURE usersByContinent()
BEGIN
SELECT continent, SUM(users) as users FROM countries
GROUP BY continent
ORDER BY users DESC;
END

movieDirectors :

CREATE PROCEDURE movieDirectors()
BEGIN
SELECT director FROM moviesInfo
WHERE year > 2000
GROUP BY director
HAVING SUM(oscars) > 2
ORDER BY director ASC;
END;

travelDiary :

CREATE PROCEDURE travelDiary()
BEGIN
SELECT GROUP_CONCAT(DISTINCT country ORDER BY country ASC SEPARATOR ';')
AS countries FROM diary;
END

soccerPlayers :

CREATE PROCEDURE soccerPlayers()
BEGIN
SELECT GROUP_CONCAT(first_name,' ',surname,' #',player_number ORDER BY player_number ASC SEPARATOR '; ')
AS players FROM soccer_team;
END

marketReport :

CREATE PROCEDURE marketReport()
BEGIN
SELECT country, COUNT(country) AS competitors FROM foreignCompetitors
GROUP BY country
UNION
SELECT 'Total:',COUNT(country) AS competitors FROM foreignCompetitors;
END












