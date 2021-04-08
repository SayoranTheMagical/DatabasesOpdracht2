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