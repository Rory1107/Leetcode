SELECT DISTINCT V.author_id AS id
FROM Views AS V
WHERE V.author_id = V.viewer_id
ORDER BY id ASC
;