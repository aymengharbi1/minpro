const request = require('supertest');
const app = require('../src/app');  // Supposons que app.js exporte l'instance express

describe('GET /', () => {
  it('should return Hello, Docker & Azure!', async () => {
    const res = await request(app).get('/');
    expect(res.status).toBe(200);
    expect(res.text).toBe('Hello, Docker & Azure!');
  });
});
