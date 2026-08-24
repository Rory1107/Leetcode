SELECT DISTINCT A.player_id, MIN(A.event_date) AS first_login 
FROM Activity AS A
GROUP BY A.player_id
;