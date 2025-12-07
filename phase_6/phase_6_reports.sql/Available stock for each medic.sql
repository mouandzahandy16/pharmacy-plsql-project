SELECT m.medicine_name,
       st.quantity,
       st.last_updated
FROM medicine m
JOIN stock st
ON m.medicine_id = st.medicine_id
ORDER BY st.quantity DESC;
