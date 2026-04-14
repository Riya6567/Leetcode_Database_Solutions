# Write your MySQL query statement below
SELECT E.name, B.bonus
from Employee E LEFT JOIN Bonus B
ON E.empId = B.empId
where B.bonus is null or B.bonus < 1000;
