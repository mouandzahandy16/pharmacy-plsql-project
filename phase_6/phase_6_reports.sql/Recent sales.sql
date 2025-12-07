SELECT * FROM (
  SELECT m.medicine_name,
         SUM(sa.quantity_sold) AS total_sold
  FROM medicine m
  JOIN sale sa
  ON m.medicine_id = sa.medicine_id
  GROUP BY m.medicine_name
  ORDER BY total_sold DESC
)
FETCH FIRST 5 ROWS ONLY;
