/*_______________________________________Zomato Restaurant___________________________________*/

select city, Count(Restaurant_ID)as Total_Restaurant ,
 Rank() over(partition by City order by count(Restaurant_id) desc) as City_Rank from
 zomato group by City;