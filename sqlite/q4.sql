--Query 4
/*  */

SELECT GameFranchise.FranchiseName
FROM GameFranchise
WHERE FranchiseName IN
(
    SELECT GameFranchise.FranchiseName
    FROM GameFranchise
    INNER JOIN Subfranchise ON Subfranchise.FranchiseName = GameFranchise.FranchiseName 
    LEFT JOIN GameData ON GameData.SubFranchiseName = Subfranchise.SubFranchiseName
    WHERE Genre = "Platformer"
)
EXCEPT
SELECT GameFranchise.FranchiseName
FROM GameFranchise
WHERE FranchiseName NOT IN
(
    SELECT GameFranchise.FranchiseName
    FROM GameFranchise
    INNER JOIN Subfranchise ON Subfranchise.FranchiseName = GameFranchise.FranchiseName 
    LEFT JOIN GameData ON GameData.SubFranchiseName = Subfranchise.SubFranchiseName
    WHERE Genre = "Family"
);