/*_______________________________________Zomato Restaurant___________________________________*/

SELECT 
    Country,
    ROUND(100.0 * SUM(CASE
                WHEN online_delivery = 'Yes' THEN 1
                ELSE 0
            END) / COUNT(*),
            2) AS delivery_precentages
FROM
    zomato AS z
        JOIN
    country_code AS c ON z.Country_Code = c.Country_Code
GROUP BY Country
order by delivery_precentages desc;