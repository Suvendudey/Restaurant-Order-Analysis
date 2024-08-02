#1.Combine the menu_items table and order_details table into single table

Select * from order_details od left join menu_items mi
on od.item_id=mi.menu_item_id;

#2.what were the least and most ordered items? what categories were they in?

Select item_name,COUNT(order_details_id) AS num_purchases
from order_details od left join menu_items mi
on od.item_id=mi.menu_item_id
group by item_name
order by num_purchases ;

Select item_name,category,COUNT(order_details_id) AS num_purchases
from order_details od left join menu_items mi
on od.item_id=mi.menu_item_id
group by item_name,category
order by num_purchases desc;

#3.what are the top 5 order that spent most money?

Select order_id,SUM(price) as total_spend
from order_details od left join menu_items mi
on od.item_id=mi.menu_item_id
group by order_id
order by total_spend DESC
limit 5;
#4.Vie the details of highest spent order? what insights can you gather from the results?
Select category,COUNT(item_id) as num_items
from order_details od left join menu_items mi
on od.item_id=mi.menu_item_id
where order_id=440
group by category;

#5.View the details of the top 5 highest spend orders.what insights can you gather from this results?
Select order_id,category,COUNT(item_id) as num_items
from order_details od LEFT JOIN menu_items mi
on od.item_id=mi.menu_item_id
WHERE order_id IN(440,2075,1957,330,2675)
group by order_id,category;