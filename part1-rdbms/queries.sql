-- Q1: List all customers from Mumbai along with their total order value
SELECT c.customer_name, SUM(oi.quantity * p.price) AS total_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE c.city = 'Mumbai'
GROUP BY c.customer_name;

-- Q2: Find the top 3 products by total quantity sold
SELECT p.product_name, SUM(oi.quantity) AS total_quantity
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC
LIMIT 3;

-- Q3: List all sales representatives and number of unique customers
-- (Since no sales_rep table, using customer count per order)
SELECT customer_id, COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY customer_id;

-- Q4: Find all orders where total value exceeds 10,000
SELECT o.order_id, SUM(oi.quantity * p.price) AS total_value
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY o.order_id
HAVING total_value > 10000;

-- Q5: Identify products that have never been ordered
SELECT p.product_name
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;