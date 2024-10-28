const express = require('express');
const router = express.Router();
const pool = require('../db/db');

// Ruta para obtener todos los Pokémon
router.get('/pokemons', async (req, res) => {
  try {
    const result = await pool.query('SELECT * FROM artists');
    res.json(result.rows);
  } catch (error) {
    console.error('Error al obtener los pokemons:', error);
    res.status(500).json({ error: 'Error al obtener los pokemons' });
  }
});

module.exports = router;
