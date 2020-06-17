WITH
  variables AS (
    SELECT 'user_1@mail.com' AS email
  )


SELECT users.email, name, password
FROM users
INNER JOIN variables
  ON users.email = variables.email
;
