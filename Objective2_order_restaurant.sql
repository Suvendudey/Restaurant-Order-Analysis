#1.View the order details table
Select * from order_details;

#2. what is the date range of a table
Select * from order_details
order by order_date;
Select MAX(order_date),MIN(order_date) from order_details;

#3. how many orders were made within this date range
Select count(distinct order_id) from order_details;

#4.How many items were ordered within this range
Select count(*) from order_details;
#5. which order has most number of items
Select order_id,count(item_id) as num_items
from order_details
group by order_id
order by num_items desc;
#6.How many orders had more than 12 items?
Select Count(*) from 
(Select order_id,count(item_id) as num_items
from order_details
group by order_id
Having num_items>12) as num_orders;