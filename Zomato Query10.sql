/*_______________________________________Zomato Restaurant___________________________________*/

select Country, Avg(Aggregate_Rating) as Avg_Rating,rank()
over(order by Avg(Aggregate_rating) desc) 
as Country_Rank from zomato as z
 join country_code as c on z.Country_Code = c.Country_Code  
 group by Country