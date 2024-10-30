/*_______________________________________Zomato Restaurant___________________________________*/

with Cte as 
(Select c.Country, z.Restaurant_Name, z.Aggregate_Rating,rank() 
over(partition by Country order by Aggregate_Rating desc)
as Rank_Rating from zomato as z 
join country_code as c on z.country_code = c.country_code)
select Country, Restaurant_Name, Rank_Rating From Cte
where Rank_Rating<=5