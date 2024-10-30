/*_______________________________________Zomato Restaurant___________________________________*/

select City, count(*) as Delivey_Restaurant,
 rank() over(partition by City order by Count(*) desc)as
 City_Rank from Zomato
where Online_Delivery = "Yes" group by City
limit 5;