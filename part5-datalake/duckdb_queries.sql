-- Q1: Preview all datasets

SELECT * FROM read_csv_auto('datasets/customers.csv');

SELECT * FROM read_json_auto('datasets/orders.json');

SELECT * FROM read_parquet('datasets/products.parquet');

-- Q2: Count total orders per customer

SELECT 
    c.customer_id,
    c.name,
    COUNT(o.order_id) AS total_orders
FROM read_csv_auto('datasets/customers.csv') c
LEFT JOIN read_json_auto('datasets/orders.json') o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;

-- Q3: Show order details with product info

SELECT 
    o.order_id,
    o.product_id,
    p.product_name,
    p.price
FROM read_json_auto('datasets/orders.json') o
JOIN read_parquet('datasets/products.parquet') p
ON o.product_id = p.product_id;

-- Q4: Calculate total revenue

SELECT 
    SUM(o.quantity * p.price) AS total_revenue
FROM read_json_auto('datasets/orders.json') o
JOIN read_parquet('datasets/products.parquet') p
ON o.product_id = p.product_id;

