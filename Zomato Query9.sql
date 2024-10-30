/*_______________________________________Zomato Restaurant___________________________________*/

SELECT 
    Country, AVG(Price_Range) AS Avg_Price_Range
FROM
    zomato AS z
        JOIN
    country_code AS c ON z.Country_Code = c.Country_Code
GROUP BY Country
order by Avg_Price_range desc;
