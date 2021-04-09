--Query 3
/*The query must be of the kind "has only" (selecting columns based on a property).   
A situation that corresponds is for example  someone that wants know which games are exclusively to a specific franchise.
For this query it is assumed that the user is only interested in Mario games.
The necessarily information (needs to be selected) for a person to pick the game 
would then be the id of the game, genre, name of the game, the subfranchise and franchise.
Like query 1, using joins (using INNER JOIN) the table game and subfranchise can be joined (SubfranchiseName matches) 
and the result with table gamefranchise ()(the table containing the information we want).
Lastly a clause needs to be added that specifies that only mario games should be selected (using Where).
The condition that needs to be added is that the Franchise Name (of GameFranchise) is equal to "Mario" .
 */

--Query A
SELECT Title FROM GameData
INNER JOIN Game ON GameData.Title = Game.Title 
INNER JOIN System ON System.SystemID = Game.SystemID
WHERE System.Name = "Nintendo 3DS"
EXCEPT
SELECT Title FROM GameData
INNER JOIN Game ON GameData.Title = Game.Title 
INNER JOIN System ON System.SystemID = Game.SystemID
WHERE System.Name != "Nintendo 3DS";

--Query B
SELECT Title FROM GameData
WHERE Title IN(
    SELECT Title FROM GameData
    INNER JOIN Game ON GameData.Title = Game.Title 
    INNER JOIN System ON System.SystemID = Game.SystemID
    WHERE System.Name = "Nintendo 3DS")
EXCEPT 
SELECT Title FROM GameData
WHERE Title IN(
    SELECT Title FROM GameData
    INNER JOIN Game ON GameData.Title = Game.Title 
    INNER JOIN System ON System.SystemID = Game.SystemID
    WHERE System.Name != "Nintendo 3DS");
