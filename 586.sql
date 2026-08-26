SELECT O.customer_number
FROM Orders AS O
GROUP BY O.customer_number
ORDER BY COUNT(*) DESC
LIMIT 1;