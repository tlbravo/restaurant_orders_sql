-- Exploring the items table first by viewing the entire table 
SELECT * 
FROM menu_items;

-- View the menu_items table and write a query to find the number of items on the menu
SELECT 
COUNT(menu_item_id)
FROM menu_items;
-- 32 rows in this table

-- What are the least and most expensive items on the menu?
SELECT *
FROM menu_items
ORDER BY price DESC;
-- most expensive = Shrimp Scampi
-- least expensive = Edamame

-- How many Italian dishes are on the menu? 
SELECT 
COUNT(menu_item_id)
FROM menu_items
WHERE category = 'Italian';
-- 9 Italian dishes in total

-- What are the least and most expensive Italian dishes on the menu?
SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC;
-- most expensive = Shrimp Scampi
-- least expensive = Fettuccine Alfredo and Spaghetti

-- How many dishes are in each category? What is the average dish price within each category
SELECT category,
COUNT(menu_item_id) AS num_dishes
FROM menu_items
GROUP BY category;

--What is the average dish price within each category
SELECT category,
AVG(price) AS average_price
FROM menu_items
GROUP BY category;

--View the order_details table. What is the date range of the table?
SELECT *
FROM order_details
-- 01-01-2023 to 03-01-2023

--How many orders were made within this date range? How many items were ordered within this date range?
SELECT order_date,
COUNT(order_id) AS num_orders
FROM order_details
GROUP BY order_date;

SELECT order_date,
COUNT(order_details_id) AS num_items
FROM order_details
GROUP BY order_date;

--Which orders had the most number of items?
SELECT order_id
FROM order_details
GROUP BY order_id
ORDER BY order_id DESC;

--How many orders had more than 12 items?
SELECT order_id
FROM order_details
GROUP BY order_id
ORDER BY order_id DESC;