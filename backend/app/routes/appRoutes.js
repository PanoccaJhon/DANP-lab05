const express = require('express');
const router = express.Router();
const pool = require('../db/db');

// Ruta para obtener todos los Pokémon
router.get('/usuarios', async (req, res) => {
  try {
    const result = await pool.query('SELECT * FROM usuarios');
    res.json(result.rows);
  } catch (error) {
    console.error('Error al obtener los usuarios:', error);
    res.status(500).json({ error: 'Error al obtener los usuarios' });
  }
});

module.exports = router;
