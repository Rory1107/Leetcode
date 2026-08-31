SELECT MAX(sn) AS num
FROM(
    SELECT MAX(MN.num) AS sn
    FROM MyNumbers AS MN
    GROUP BY MN.num
    HAVING COUNT(MN.num) = 1
) AS single_numbers
;