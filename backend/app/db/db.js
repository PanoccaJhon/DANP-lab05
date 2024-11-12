const { Pool } = require('pg');

const pool = new Pool({
  user: 'myuser',
  host: 'localhost',  // El nombre del servicio PostgreSQL en Docker
  database: 'cc_unsa_db',
  password: 'mypassword',
  port: 5432,
});

module.exports = pool;
