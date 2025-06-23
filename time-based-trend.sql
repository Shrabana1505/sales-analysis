-- Daily sales (total revenue by date)
SELECT order_date, SUM(p.price * o.quantity) AS daily_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY order_date
ORDER BY order_date;

-- Total quantity sold per day
SELECT order_date, SUM(quantity) AS total_items_sold
FROM orders
GROUP BY order_date
ORDER BY order_date;
