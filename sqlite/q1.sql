--Query 1
/*This query is meant for when someone wants to know which games are playable on a specific system.
So for this query it was assumed that a person is looking for Playstation 4 games.
First determine the relevant information that  only needs to get selected: game ID, the name of the game and the system.
Then the whole table Game is joined with its intersection table 
making use of the column that matches (GameID) (using INNER JOIN; returns all the rows that have a match). 
The result (left table, values we want to preserve) is then joined with the table System (right table) containing the system name ( using LEFT JOIN).
The LEFT JOIN is also done  based on a matching columnn (SystemID), but unlike inner it always returns the left table by default even if there are no matches.
Lastly a WHERE clause is used so that only playstation 4 games are going to be selected (ORDER BY is used for a cleaner view).*/
Select  Game.GameID,
        Game.Title,
        System.Name
From Game
INNER JOIN GameSystem ON Game.GameID = GameSystem.GameID 
LEFT Join System ON System.SystemID = GameSystem.SystemID
WHERE System.Name = "Playstation 4"
ORDER BY Game.GameID;


