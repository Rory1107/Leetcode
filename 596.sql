SELECT C.class
FROM Courses AS C
GROUP BY C.class
HAVING COUNT(C.student) >=5
;