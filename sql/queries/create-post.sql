WITH
  variables AS (
    SELECT 
        1 AS id,
        'post_title' AS title,
        'some_text_here' AS content,
        GETDATE() AS date,
        'FK_mail' AS email
  )

INSERT INTO posts (posts.id, posts.title, posts.content, posts.date, posts.email)
VALUES (variables.id, variables.title, variables.content, variables.date, variables.email)
INNER JOIN variables;