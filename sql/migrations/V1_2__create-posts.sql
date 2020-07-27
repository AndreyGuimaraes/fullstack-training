CREATE TABLE posts (
  postID INT PRIMARY KEY,
  title VARCHAR(100),
  content TEXT,
  pub_date TIMESTAMP,
  usermail TEXT,
  
  CONSTRAINT FK_EMAIL FOREIGN KEY (usermail)
    REFERENCES users(email),


  created_at TIMESTAMP DEFAULT NOW(),
  updated_at TIMESTAMP DEFAULT NOW()
);
