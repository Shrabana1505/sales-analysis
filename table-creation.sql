-- ✅ Enable foreign keys in SQLite
PRAGMA foreign_keys = ON;

-- ✅ Drop child table first (it has foreign keys)
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;

-- ✅ Create parent tables first
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    name TEXT,
    city TEXT
);

CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    name TEXT,
    category TEXT,
    price INTEGER
);

-- ✅ Now create the child table that references them
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    order_date TEXT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- ✅ Insert data into parent tables first
INSERT INTO customers (customer_id, name, city) VALUES
(1, 'Riya', 'Kolkata'),
(2, 'Amit', 'Delhi');

INSERT INTO products (product_id, name, category, price) VALUES
(101, 'Laptop', 'Electronics', 55000),
(102, 'Phone', 'Electronics', 30000),
(103, 'Headphones', 'Accessories', 2000);

-- ✅ Now insert into the child table
INSERT INTO orders (order_id, customer_id, product_id, quantity, order_date) VALUES
(1, 1, 101, 2, '2024-06-20'),
(2, 2, 102, 1, '2024-06-21'),
(3, 1, 103, 3, '2024-06-22');
