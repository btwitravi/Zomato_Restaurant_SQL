/*_______________________________________Zomato Restaurant___________________________________*/

SELECT 
    Country, Cuisines, COUNT(*) AS Cuisines_Count, Rank() over(partition by Country 
    order by count(*)desc) as Ranking_Cuisine
FROM
    zomato AS z
        JOIN
    country_code AS c
GROUP BY Country , Cuisines;