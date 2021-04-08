--Query 4
/*  */

SELECT GameFranchise.FranchiseName
FROM GameFranchise
INNER JOIN Subfranchise ON Subfranchise.FranchiseName = GameFranchise.FranchiseName 
LEFT JOIN GameData ON GameData.SubFranchiseName = Subfranchise.SubFranchiseName
GROUP BY GameFranchise.FranchiseName
HAVING GameData.Genre = "Platformer"
EXCEPT
SELECT GameFranchise.FranchiseName
FROM GameFranchise
INNER JOIN Subfranchise ON Subfranchise.FranchiseName = GameFranchise.FranchiseName 
LEFT JOIN GameData ON GameData.SubFranchiseName = Subfranchise.SubFranchiseName
GROUP BY GameFranchise.FranchiseName
HAVING GameData.Genre != "Race";


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