-- Top customers by order count
SELECT c.name, COUNT(o.order_id) AS order_count
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.name
ORDER BY order_count DESC;

-- Top customers by quantity purchased
SELECT c.name, SUM(o.quantity) AS total_items
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.name
ORDER BY total_items DESC;

-- Customers who never placed an order
SELECT c.name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
