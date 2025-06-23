-- View table structure
PRAGMA table_info(customers);
PRAGMA table_info(products);
PRAGMA table_info(orders);

-- Count rows in each table
SELECT COUNT(*) AS customer_count FROM customers;
SELECT COUNT(*) AS product_count FROM products;
SELECT COUNT(*) AS order_count FROM orders;

-- View sample data from each table
SELECT * FROM customers LIMIT 5;
SELECT * FROM products LIMIT 5;
SELECT * FROM orders LIMIT 5;

-- Check distinct cities
SELECT DISTINCT city FROM customers;

-- Check if foreign key relationships are working
SELECT o.order_id, c.name AS customer_name, p.name AS product_name
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
LIMIT 5;
