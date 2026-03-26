-- Q1
SELECT customer_name, SUM(quantity * price) AS total_value
FROM orders_flat
WHERE city = 'Mumbai'
GROUP BY customer_name;

-- Q2
SELECT product_name, SUM(quantity) AS total_quantity
FROM orders_flat
GROUP BY product_name
ORDER BY total_quantity DESC
LIMIT 3;

-- Q3
SELECT sales_rep, COUNT(DISTINCT customer_id)
FROM orders_flat
GROUP BY sales_rep;

-- Q4
SELECT order_id, SUM(quantity * price) AS total_value
FROM orders_flat
GROUP BY order_id
HAVING total_value > 10000;

-- Q5
SELECT product_name
FROM orders_flat
GROUP BY product_name
HAVING SUM(quantity) = 0;