SELECT m.medicine_name,
       SUM(sa.quantity_sold * m.unit_price) AS total_revenue
FROM medicine m
JOIN sale sa
ON m.medicine_id = sa.medicine_id
GROUP BY m.medicine_name
ORDER BY total_revenue DESC;
