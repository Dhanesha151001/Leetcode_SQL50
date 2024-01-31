# Write your MySQL query statement below
SELECT w1.id
FROM weather w1
JOIN weather w2 ON w1.temperature > w2.temperature AND DATEDIFF(w1.recorddate, w2.recorddate) = 1;
