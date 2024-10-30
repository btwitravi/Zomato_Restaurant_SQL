/*_______________________________________Zomato Restaurant___________________________________*/

SELECT 
    Country,
    AVG(Aggregate_Rating) AS Avg_Rating,
    SUM(votes) AS Total_Votes
FROM
    zomato AS z
        JOIN
    country_code AS c ON z.Country_Code = c.Country_Code
WHERE
    Table_booking = 'Yes'
GROUP BY Country;
