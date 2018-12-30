CREATE PROCEDURE gradeDistribution()
BEGIN
SELECT name, ID FROM Grades WHERE Final > 0.5 * Midterm1 + 0.5 * Midterm2 ORDER BY LEFT (Name,3) , ID ASC;
END