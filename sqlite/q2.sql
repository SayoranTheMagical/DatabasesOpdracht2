--Query 2
/* */

--Default Query A  with WHERE not possible, EXCEPT-query has duplicate rows
SELECT GameData.Title
FROM GameData
EXCEPT
SELECT GameData.Title
FROM System
INNER JOIN Game ON Game.SystemID = System.SystemID
INNER JOIN GameData ON GameData.Title = Game.Title
WHERE System.Name = "Xbox 360";




