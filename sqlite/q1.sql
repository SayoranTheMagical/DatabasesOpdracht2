--Query 1
/*This query is meant for when someone wants to know how long a president is a president at a specific studio.
For this query it assumed that we want to know what the time frame of presidency is of all presidents at Crytek.
First determine the relevant information that  only needs to get selected: the name of person, (job)function and the timeframe of presidency.
The table DevelopmentStudio is joined with the table Worker to make it possible to select workers of a specific studio.
The table Worker (left table, values we want to preserve) is then joined with the table President (right table) containing the timeframe of presidency ( using LEFT JOIN).
The LEFT JOIN is also done based on a matching columnn (UserID), but unlike inner it always returns the left table by default even if there are no matches.
Meaning that if there is no-match it still prints out the row with no-match, but with the right table values being NULL.
Since all workers of a studio are selected ofcourse not all workers are presidents. 
As a result the workers that are not a president gets a NULL-value returned, because they do not have a timeframe of presidency.*/

SELECT Worker.FirstName, Worker.LastName, Worker.Function, 
       President.TimeframeOfPresidency 
       FROM Worker   
INNER JOIN DevelopmentStudio ON DevelopmentStudio.DSID = Worker.DSID          
LEFT JOIN President ON President.UserID = Worker.UserID
WHERE DevelopmentStudio.Name = "Crytek";



