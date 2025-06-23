-- Most ordered products
SELECT p.name, COUNT(o.order_id) AS order_count
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.name
ORDER BY order_count DESC;

-- Total quantity sold per product
SELECT p.name, SUM(o.quantity) AS units_sold
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.name
ORDER BY units_sold DESC;

-- Products never ordered
SELECT p.name
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id
WHERE o.order_id IS NULL;
