-- Total revenue
SELECT SUM(p.price * o.quantity) AS total_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id;

-- Revenue by product
SELECT p.name AS product_name, SUM(p.price * o.quantity) AS revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.name
ORDER BY revenue DESC;

-- Revenue by customer
SELECT c.name AS customer_name, SUM(p.price * o.quantity) AS total_spent
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY c.name
ORDER BY total_spent DESC;
