import express from 'express';

const app = express();
app.use(express.json());

app.get('/users', (_, res) => {
  res.json([{
    email: 'user_1@mail.com',
    name: 'User 1',
  }, {
    email: 'user_2@mail.com',
    name: 'User 2',
  }]);
});

export default app;
