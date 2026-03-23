-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Order Items Table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Sample Data

INSERT INTO customers VALUES
(1, 'Ali', 'Mumbai'),
(2, 'Rahul', 'Delhi'),
(3, 'Sara', 'Bangalore'),
(4, 'Amit', 'Mumbai'),
(5, 'Neha', 'Chennai');

INSERT INTO products VALUES
(101, 'Laptop', 60000),
(102, 'Phone', 20000),
(103, 'Tablet', 30000),
(104, 'Headphones', 2000),
(105, 'Camera', 50000);

INSERT INTO orders VALUES
(1001, 1, '2024-01-01'),
(1002, 2, '2024-01-02'),
(1003, 3, '2024-01-03'),
(1004, 1, '2024-01-04'),
(1005, 4, '2024-01-05');

INSERT INTO order_items VALUES
(1, 1001, 101, 1),
(2, 1001, 102, 2),
(3, 1002, 103, 1),
(4, 1003, 104, 3),
(5, 1004, 105, 1);