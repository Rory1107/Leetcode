SELECT AD.actor_id, AD.director_id
FROM ActorDirector AS AD
GROUP BY AD.actor_id, AD.director_id
HAVING COUNT(AD.timestamp) >= 3
;