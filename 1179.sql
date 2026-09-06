SELECT D.id, 
MAX(CASE
    WHEN D.month = 'Jan' THEN D.revenue
END) AS Jan_Revenue,
MAX(CASE
    WHEN D.month = 'Feb' THEN D.revenue
END) AS Feb_Revenue,
MAX(CASE
    WHEN D.month = 'Mar' THEN D.revenue
END) AS Mar_Revenue,
MAX(CASE
    WHEN D.month = 'Apr' THEN D.revenue
END) AS Apr_Revenue,
MAX(CASE
    WHEN D.month = 'May' THEN D.revenue
END) AS May_Revenue,
MAX(CASE
    WHEN D.month = 'Jun' THEN D.revenue
END) AS Jun_Revenue,
MAX(CASE
    WHEN D.month = 'Jul' THEN D.revenue
END) AS Jul_Revenue,
MAX(CASE
    WHEN D.month = 'Aug' THEN D.revenue
END) AS Aug_Revenue,
MAX(CASE
    WHEN D.month = 'Sep' THEN D.revenue
END) AS Sep_Revenue,
MAX(CASE
    WHEN D.month = 'Oct' THEN D.revenue
END) AS Oct_Revenue,
MAX(CASE
    WHEN D.month = 'Nov' THEN D.revenue
END) AS Nov_Revenue,
Max(CASE
    WHEN D.month = 'Dec' THEN D.revenue
END) AS Dec_Revenue

FROM Department AS D
GROUP BY D.id
;