import request from 'supertest';
import app from './router';

test('get users', () => request(app)
  .get('/users')
  .expect(200)
  .expect('Content-Type', /json/)
  .then(res => {
    expect(res.body).toStrictEqual([{
      email: 'user_1@mail.com',
      name: 'User 1',
    }, {
      email: 'user_2@mail.com',
      name: 'User 2',
    }]);
  })
);
