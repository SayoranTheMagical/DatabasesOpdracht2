--Query 2
/* */

--Default Query A  with WHERE not possible, EXCEPT-query has duplicate rows
SELECT GameData.Title
FROM GameData
EXCEPT
SELECT GameData.Title
       System.Name
FROM System
INNER JOIN Game ON Game.SystemID = System.SystemID
INNER JOIN GameData ON GameData.Title = Game.Title
WHERE System.Name != "Playstation 3";


--Query B with HAVING
SELECT GameData.Title,
        System.Name
FROM GameData
INNER JOIN Game ON GameData.Title = Game.Title 
LEFT JOIN System ON System.SystemID = Game.SystemID
GROUP BY GameData.Title
HAVING System.Name != "Playstation 3";

SELECT GameFranchise.FranchiseName,
        GameData.Genre
FROM GameFranchise
INNER JOIN SubFranchise ON SubFranchise.FranchiseName = GameFranchise.FranchiseName 
INNER JOIN GameData ON GameData.SubFranchiseName = SubFranchise.SubFranchiseName
GROUP BY GameFranchise.FranchiseName
HAVING GameData.Genre != "Race";



