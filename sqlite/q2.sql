--Query 2
/* With this query, the games which cannot be played on Xbox 360 may be found.
This query is directed at someone who wants to know which games cannot be played on a certain, which may be used to
determine whether some of the desired games cannot be played on a console which the user may want to buy.
In this scenario the only relevant information is the title of the games, which cannot be played on the specified 
system.
The table System is joined with the Game table and then the GameData table to determine the platforms of the games where the
games are playable. First we use the SystemID to join the system and game table and then the Title attribute is used to join
the Game- and GameData table.
We used the except beforehand and looked for all games playable on the Xbox 360 so that at the end only the games,
which are not playable on this system remain.*/

--Default Query A  with WHERE not possible, EXCEPT-query has duplicate rows
SELECT GameData.Title FROM GameData
EXCEPT
SELECT GameData.Title FROM System
INNER JOIN Game ON Game.SystemID = System.SystemID
INNER JOIN GameData ON GameData.Title = Game.Title
WHERE System.Name = "Xbox 360";




