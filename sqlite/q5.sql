--Query 5
/* A situation where it is interesting to calculate  the maximum of a summation in this database.
 Would be for example determing which studio spends the most money on their workers. 
 The average year salary of each worker is known in our database. 
 For this query MAX(SUM()) does not work so 2 queries needs to be done, one that determines the summation (sub-query) 
 and the other that determines the max of all sums (the main-query). 
 Starting with the sub-query, the development studio name and salary of a worker are values 
 that needs to be selected. 
 The table DevelopmentStudio and table Worker can be joined (matching column: DSID).
 Then the sum of salaries of each worker per studio 
 needs to be determined (using SUM on salary and GROUP BY on something unique like the id of the studio) 
 Afterwards only the main query needs to be formed (sub-query is formed by putting it into the FROM). 
 Simply it needs to select the columns of the sub-query (the sums and name) and lastly use MAX for determing the maximum.  */
         
SELECT
	Name,
	MAX(Sums/amountWorker) HighestAverageSalary
FROM
    (SELECT
        DevelopmentStudio.Name,
        SUM(salary) Sums,
        COUNT(*) amountWorker
    FROM
        Worker
    INNER JOIN DevelopmentStudio ON DevelopmentStudio.DSID = Worker.DSID 
    GROUP BY
        DevelopmentStudio.DSID);    


