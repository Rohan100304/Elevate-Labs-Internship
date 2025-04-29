create database practice;
use practice;



select * from orders;






select distinct extract(month from order_date) as Months from orders;





select distinct  date_format(order_date, '%M') as months from orders;




select date_format(order_date, '%M') as months, count(order_id) 
from orders group by months;



select date_format(order_date, '%Y') as years, count(order_id) as total_transaction from orders group by  years;





select date_format(order_date, '%Y') as years, sum(total_cost) as Total_sales
 from orders
 group by  years;



select category,count(order_id) from
 orders group by 
 category;





select category,date_format(order_date, '%Y') as years,sum(total_cost) as total_sales
from orders
 group by category,years
 order by category;



select city, sum(total_cost) as total 
from orders 
where order_date<'2022-12-30' and order_date>'2022-06-01' 
group by city order by total desc limit 5;


select Sub_Category, sum(quantity) as total_items
from orders 
where order_date>'2022-01-01' and order_date<'2023-01-01'
group by sub_category
order by total_items desc
limit 5; 


SELECT `Ship Mode`, COUNT(Order_Id) AS order_count
FROM orders
GROUP BY `Ship Mode`;









