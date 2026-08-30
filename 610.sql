SELECT T.x, T.y, T.z,
CASE
    WHEN T.x < T.y + T.z 
        AND T.y < T.x + T.z
        AND T.z < T.x + T.y
        THEN "Yes"
    ELSE "No"
END AS triangle
FROM Triangle AS T
;