WITH
  variables AS (
    SELECT "a" AS search_term
  )


SELECT *
FROM posts
INNER JOIN variables
WHERE TITLE LIKE search_term
    OR content LIKE search_term
    OR email LIKE search_term
;