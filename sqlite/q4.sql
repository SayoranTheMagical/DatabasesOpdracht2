--Query 4
/*  */

SELECT FranchiseName FROM GameFranchise
WHERE FranchiseName IN(
    SELECT FranchiseName FROM GameFranchise
    INNER JOIN Subfranchise ON Subfranchise.FranchiseName = GameFranchise.FranchiseName 
    LEFT JOIN GameData ON GameData.SubFranchiseName = Subfranchise.SubFranchiseName
    WHERE Genre = "Platformer")
EXCEPT
SELECT FranchiseName FROM GameFranchise
WHERE FranchiseName NOT IN(
    SELECT FranchiseName FROM GameFranchise
    INNER JOIN Subfranchise ON Subfranchise.FranchiseName = GameFranchise.FranchiseName 
    LEFT JOIN GameData ON GameData.SubFranchiseName = Subfranchise.SubFranchiseName
    WHERE Genre = "Family");