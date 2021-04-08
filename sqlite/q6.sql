--Query 6
/* */

-- Query A
SELECT Worker.FirstName,
       Worker.LastName
FROM Worker
INNER JOIN GameDesigner ON GameDesigner.UserID = Worker.UserID
WHERE Experience = 
(
    SELECT MAX(Experience) 
    FROM GameDesigner 
    WHERE Experience != 
    (
        SELECT MAX(Experience) 
        FROM GameDesigner
    )
)

    

