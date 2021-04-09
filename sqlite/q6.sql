--Query 6
/*The usecase of this query is wanting to find the gamedesigner with the secondmost experience, when the studio itself
already has contacted or contracted the one with the most experience.
First we determine the relevent information that needs to be selected. In the before described usercase we need 
contactinformation thus we need the relevant: First Name, Last Name and Phone number.
We join the tables of Worker, where this information is stored, and GameDesigner, where the experience can be found.
This is done by using the matching attribute (UserID).*/

-- Query A
SELECT FirstName, LastName, Phone FROM Worker
INNER JOIN GameDesigner ON GameDesigner.UserID = Worker.UserID
WHERE Experience =(
    SELECT MAX(Experience) FROM GameDesigner 
    WHERE Experience !=(
        SELECT MAX(Experience) FROM GameDesigner));

    

