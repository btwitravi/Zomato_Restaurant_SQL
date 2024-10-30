/*_______________________________________Zomato Restaurant___________________________________*/

with cte as (
Select avg(Aggregate_rating) as Avg_Rating from zomato) 
select Restaurant_Name, City, Aggregate_Rating
,Votes from Zomato,Cte where Aggregate_rating>Avg_rating and Votes >500