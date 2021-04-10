--Query 3
/*The query must be of the kind "has only" (selecting columns based on a property).   
A situation that corresponds is for example  someone that wants know which games are exclusively to a specific system.
For this query it is assumed that the user is only interested in games on the Nintendo 3DS.
The necessarily information that needs to be returned is the title of the game.
Like query 1, using joins (using INNER JOIN) the table GameData and Game can be joined 
and the result with table System. Then a clause needs to be added that specifies that only Nintendo 3DS should be selected (using Where).
Then lastly it must be prevented that games that are not on exclusively on the Nintendo 3DS are returned that can be done with EXPECT.
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
