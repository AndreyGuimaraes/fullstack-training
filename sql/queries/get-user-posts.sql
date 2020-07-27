WITH
  variables AS (
    SELECT 
        "email" AS user 
  )

SELECT * FROM posts
INNER JOIN variables
  ON usermail = email
;
