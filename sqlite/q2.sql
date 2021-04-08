--Query 2
/* */

SELECT GameData.Title,
       System.Name
FROM GameData
INNER JOIN Game ON GameData.Title = Game.Title 
INNER JOIN System ON System.SystemID = Game.SystemID
GROUP BY GameData.Title
HAVING System.Name != "Playstation 3";

-- SELECT GameFranchise.FranchiseName,
--         GameData.Genre
-- FROM GameFranchise
-- INNER JOIN SubFranchise ON SubFranchise.FranchiseName = GameFranchise.FranchiseName 
-- INNER JOIN GameData ON GameData.SubFranchiseName = SubFranchise.SubFranchiseName
-- GROUP BY GameFranchise.FranchiseName
-- HAVING GameData.Genre != "Race";

-- SELECT GameFranchise.FranchiseName
-- FROM GameFranchise
-- INNER JOIN SubFranchise ON SubFranchise.FranchiseName = GameFranchise.FranchiseName 
-- INNER JOIN GameData ON GameData.SubFranchiseName = SubFranchise.SubFranchiseName
-- GROUP BY GameData.Title
-- HAVING GameData.Genre = "Race";
-- EXCEPT
-- SELECT GameFranchise.FranchiseName
-- FROM GameFranchise
-- INNER JOIN SubFranchise ON SubFranchise.FranchiseName = GameFranchise.FranchiseName 
-- INNER JOIN GameData ON GameData.SubFranchiseName = SubFranchise.SubFranchiseName
-- GROUP BY GameData.Title
-- HAVING GameData.Genre = "Platformer";


SELECT GameFranchise.FranchiseName
FROM GameFranchise
INNER JOIN SubFranchise ON SubFranchise.FranchiseName = GameFranchise.FranchiseName 
INNER JOIN GameData ON GameData.SubFranchiseName = SubFranchise.SubFranchiseName
GROUP BY GameData.Title
HAVING GameData.Genre != "Race"
EXCEPT
SELECT GameFranchise.FranchiseName
FROM GameFranchise
INNER JOIN SubFranchise ON SubFranchise.FranchiseName = GameFranchise.FranchiseName 
INNER JOIN GameData ON GameData.SubFranchiseName = SubFranchise.SubFranchiseName
GROUP BY GameData.Title
HAVING GameData.Genre = "Platformer";
