const { Pool } = require('pg');

const pool = new Pool({
  user: 'myuser',
  host: 'database-db-1',  // El nombre del servicio PostgreSQL en Docker
  database: 'mydatabase',
  password: 'mypassword',
  port: 5432,
});

module.exports = pool;
