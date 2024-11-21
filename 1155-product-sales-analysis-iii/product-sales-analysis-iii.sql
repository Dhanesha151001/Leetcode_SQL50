select s.product_id, (s.year) as first_year, quantity, price from Sales s
where 
((product_id, year) IN (select product_id, min(year) from Sales group by product_id ) )

#Used IN Clause because wanted to have multiple Where conditions