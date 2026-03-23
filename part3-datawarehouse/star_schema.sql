-- Dimension: Date
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    day INT,
    month INT,
    year INT
);

-- Dimension: Store
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50)
);

-- Dimension: Product
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- Fact Table: Sales
CREATE TABLE fact_sales (
    sales_id INT PRIMARY KEY,
    product_id INT,
    store_id INT,
    date_id INT,
    quantity INT,
    revenue DECIMAL(10,2),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id)
);

-- dim_date
INSERT INTO dim_date VALUES
(1, '2024-01-01', 1, 1, 2024),
(2, '2024-01-02', 2, 1, 2024),
(3, '2024-01-03', 3, 1, 2024);

-- dim_store
INSERT INTO dim_store VALUES
(1, 'Store A', 'Mumbai'),
(2, 'Store B', 'Delhi'),
(3, 'Store C', 'Bangalore');

-- dim_product
INSERT INTO dim_product VALUES
(101, 'Laptop', 'Electronics'),
(102, 'T-Shirt', 'Clothing'),
(103, 'Milk', 'Groceries');

-- fact_sales
INSERT INTO fact_sales VALUES
(1, 101, 1, 1, 1, 60000),
(2, 102, 2, 2, 2, 2400),
(3, 103, 3, 3, 5, 300),
(4, 101, 1, 2, 1, 60000),
(5, 102, 2, 3, 3, 3600),
(6, 103, 3, 1, 2, 120);