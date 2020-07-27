WITH
  variables AS (
    SELECT 1 AS id
  )


SELECT *
FROM posts
INNER JOIN variables
  ON  postID = id
;