SELECT * 
FROM Cinema AS C
WHERE (C.id % 2 <> 0) AND C.description <> "boring"
ORDER BY C.rating DESC
;