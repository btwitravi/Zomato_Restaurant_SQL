/*_______________________________________Zomato Restaurant___________________________________*/

SELECT 
    Restaurant_Name,
    CASE
        WHEN Price_range = 1 THEN 'Cheap'
        WHEN Price_range = 2 THEN 'Affordable'
        WHEN Price_Range = 3 THEN 'Expensive'
        WHEN Price_Range = 4 THEN 'Luxury'
        ELSE 'Unknown'
    END AS Price_Category
FROM
    zomato;
