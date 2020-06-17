CREATE TABLE users (
  email TEXT PRIMARY KEY,
  password VARCHAR(60),
  name TEXT,

  created_at TIMESTAMP DEFAULT NOW(),
  updated_at TIMESTAMP DEFAULT NOW()
);
