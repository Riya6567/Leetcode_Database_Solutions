# Write your MySQL query statement below
SELECT W1.id
FROM Weather W1 INNER JOIN Weather W2
WHERE DATEDIFF(W1.recordDate, W2.recordDate) = 1
AND W1.temperature > W2.temperature

# Here We use SELF JOIN to solve this
