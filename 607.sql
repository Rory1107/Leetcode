SELECT SP.name
FROM SalesPerson AS SP

EXCEPT

SELECT SP.name FROM SalesPerson AS SP
LEFT JOIN Orders AS O ON SP.sales_id = O.sales_id
LEFT JOIN Company AS C ON O.com_id = C.com_id
WHERE C.name = "RED";