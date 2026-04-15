# Write SQL query here
SELECT V.customer_id, COUNT(V.visit_id) AS count_no_trans 
FROM Visits V LEFT JOIN Transactions T
ON V.visit_id = T.visit_id
WHERE T.transaction_id IS NULL
GROUP BY V.customer_id;

# Other way to solve
SELECT customer_id, COUNT(*) AS count_no_trans 
FROM Visits
WHERE visit_id NOT IN (SELECT DISTINCT visit_id FROM Transactions)
GROUP BY customer_id;
