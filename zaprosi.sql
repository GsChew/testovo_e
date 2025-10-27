-- 2.1
SELECT
    c.name AS client_name,
    SUM(p.price * oi.quantity) AS total_sum
FROM clients c
JOIN orders o ON o.client_id = c.id
JOIN order_items oi ON oi.order_id = o.id
JOIN products p ON p.id = oi.product_id
GROUP BY c.name
ORDER BY total_sum DESC;


-- 2.2
SELECT
    parent.name AS category_name,
    COUNT(child.id) AS child_count
FROM categories parent
LEFT JOIN categories child ON child.parent_id = parent.id
GROUP BY parent.name
ORDER BY parent.name;
