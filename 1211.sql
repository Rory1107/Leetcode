SELECT Q.query_name, 
ROUND(AVG(Q.rating/Q.position),2) AS quality,
ROUND(100*SUM(IF(Q.rating < 3, 1,0))/COUNT(*), 2) AS poor_query_percentage
FROM Queries AS Q
GROUP BY Q.query_name
;