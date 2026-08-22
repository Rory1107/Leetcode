DELETE P1 FROM Person AS P1

JOIN(
    SELECT MIN(id) AS min_id, email
    FROM Person
    GROUP BY email
) AS P2
ON P1.email = P2.email
AND P1.id > P2.min_id
;