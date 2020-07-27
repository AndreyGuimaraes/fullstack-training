WITH
  variables AS (
    SELECT 
        'user_1@mail.com' AS email,
        'password' AS password,
        'name' AS name 
  )

INSERT INTO users (users.email, users.password, users.name)
VALUES (variables.email, variables.password, variables.name)
INNER JOIN variables;