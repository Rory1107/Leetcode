# Write your MySQL query statement below
SELECT P.product_id, P.product_name
FROM Product AS P
JOIN Sales AS S ON P.product_id = S.product_id
WHERE S.sale_date BETWEEN '2019-01-01' AND '2019-03-31'

EXCEPT

SELECT P.product_id, P.product_name
FROM Product AS P
JOIN Sales AS S ON P.product_id = S.product_id
WHERE S.sale_date NOT BETWEEN '2019-01-01' AND '2019-03-31'
;