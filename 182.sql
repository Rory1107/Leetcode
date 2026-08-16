SELECT P.email FROM Person AS P
GROUP BY P.email
HAVING COUNT(*) > 1
;