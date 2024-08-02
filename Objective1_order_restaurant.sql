SELECT * FROM restaurant_db.menu_items;
# 1.View the manu Item table
Select * from menu_items;
#2.Find the number of item on the menu
Select distinct(count(item_name)) from menu_items;
#3. what are the most least and expensive items on the menu
Select  * from menu_items
order by price;

Select  * from menu_items
order by price desc;

#4.How many itallian dishes on the menu
Select COUNT(*) from menu_items
where category="Italian";

#5.what are the most expensive italian dished on menu
Select * from menu_items
where category="Italian"
ORDER by price desc;
#6.How many dishes are in each category
Select category,COUNT(menu_item_id) as num_dishes
from menu_items
group by category;

#7.what is the average dish price within each category
Select category,avg(price) as AVG_dish_price
from menu_items
group by category;