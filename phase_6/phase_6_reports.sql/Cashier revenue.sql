SELECT u.username,
       COUNT(sa.sale_id) AS number_of_sales
FROM user_account u
JOIN sale sa
ON u.user_id = sa.user_id
GROUP BY u.username
ORDER BY number_of_sales DESC;
