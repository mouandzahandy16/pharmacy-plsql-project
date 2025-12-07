SELECT m.medicine_name,
       m.category,
       s.supplier_name
FROM medicine m
JOIN supplier s
ON m.supplier_id = s.supplier_id
ORDER BY m.medicine_name;
