-- ✅ Insert more customers
INSERT INTO customers (customer_id, name, city) VALUES
(3, 'Neha', 'Mumbai'),
(4, 'Rahul', 'Chennai'),
(5, 'Ananya', 'Bangalore');

-- ✅ Insert more products
INSERT INTO products (product_id, name, category, price) VALUES
(104, 'Tablet', 'Electronics', 25000),
(105, 'Smartwatch', 'Accessories', 7000),
(106, 'Camera', 'Photography', 45000);

-- ✅ Insert more orders
INSERT INTO orders (order_id, customer_id, product_id, quantity, order_date) VALUES
(4, 3, 104, 1, '2024-06-23'),
(5, 4, 105, 2, '2024-06-23'),
(6, 5, 101, 1, '2024-06-24'),
(7, 2, 106, 1, '2024-06-25'),
(8, 1, 105, 1, '2024-06-26'),
(9, 3, 103, 2, '2024-06-27');
