-- Average order value per customer
SELECT c.name, ROUND(SUM(p.price * o.quantity) * 1.0 / COUNT(o.order_id), 2) AS avg_order_value
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY c.name
ORDER BY avg_order_value DESC;

-- Number of customers per city
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city
ORDER BY total_customers DESC;
