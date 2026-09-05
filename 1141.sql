SELECT DISTINCT A.activity_date AS `day`, COUNT(DISTINCT A.user_id) AS active_users
FROM Activity AS A
GROUP BY `day`
HAVING active_users >= 1 AND A.activity_date BETWEEN ('2019-07-27' - INTERVAL 29 DAY) AND '2019-07-27'; 
; 