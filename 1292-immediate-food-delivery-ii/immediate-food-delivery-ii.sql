# Write your MySQL query statement below
SELECT Round(Sum(IF(min_order_date = min_customer_pref_delivery_date, 1, 0) *100) / Count(customer_id), 2)
  AS immediate_percentage

FROM  (SELECT delivery_id,
              customer_id,
              Min(order_date)                  AS min_order_date,
              Min(customer_pref_delivery_date) AS
              min_customer_pref_delivery_date
       FROM   delivery
       GROUP  BY customer_id) AS new_table 