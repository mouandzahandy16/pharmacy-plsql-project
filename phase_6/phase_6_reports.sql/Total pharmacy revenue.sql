SELECT SUM(sa.quantity_sold * m.unit_price) AS total_pharmacy_revenue
FROM sale sa
JOIN medicine m
ON sa.medicine_id = m.medicine_id;
