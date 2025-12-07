SELECT m.medicine_name,
       st.quantity
FROM medicine m
JOIN stock st
ON m.medicine_id = st.medicine_id
WHERE st.quantity < 30;
