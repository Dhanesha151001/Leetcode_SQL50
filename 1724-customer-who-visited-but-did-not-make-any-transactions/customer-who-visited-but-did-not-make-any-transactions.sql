# Write your MySQL query statement below
SELECT customer_id, COUNT(*) as count_no_trans
FROM Visits V
LEFT JOIN Transactions T ON V.visit_id = T.visit_id
WHERE T.visit_id IS NULL
GROUP BY customer_id
ORDER BY count_no_trans DESC;



<!-- There is another way to solve the problem using NOT IN method; --> 
SELECT customer_id, COUNT(*) as count_no_trans
FROM Visits
WHERE visit_id NOT IN (SELECT DISTINCT visit_id FROM Transactions)
GROUP BY customer_id;
