--Query 4
/*This query is meant for someone who wants to know what the span of genres is within a given franchise.
In th query below we assumed that this person wants to find a franchise with platformer- as well as familygames.
The relevant information to be projected is the FranchiseName, which we therefore select at the beginning.
After which we check if within said FranchiseName, a game is present which genre is Platformer and make sure to
except the ones where there is not a Family-game.
We join the GameFranchise and Subfranchise table with the matching(FranchiseName) and we thereafter we
join Subfranchise and GameDat with the corresponding Attribute(SubFranchiseName).d*/

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