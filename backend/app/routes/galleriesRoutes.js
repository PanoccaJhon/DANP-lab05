
const express = require('express');
const router = express.Router();
const pool = require('../db/db');

// Ruta para obtener galerías con paginación
router.get('/galleries', async (req, res) => {
  try {
    // Obtener `limit` y `offset` de los parámetros de consulta, con valores predeterminados
    const limit = parseInt(req.query.limit) || 5;  // Predeterminado a 10 elementos
    const offset = parseInt(req.query.offset) || 0; // Predeterminado a 0 (primer elemento)

    // Consulta a la base de datos con paginación
    const result = await pool.query('SELECT * FROM galleries LIMIT $1 OFFSET $2', [limit, offset]);

    // Enviar respuesta JSON con los datos y detalles de paginación
    res.json({
      success: true,
      data: result.rows,
      count: result.rows.length,
      offset:offset,
      limit:limit
    });
  } catch (error) {
    console.error('Error al obtener las galerías:', error);
    res.status(500).json({ error: 'Error al obtener las galerías' });
  }
});

// Ruta para obtener una galería por su ID
router.get('/galleries/:id', async (req, res) => {
  try {
    // Obtener el ID de los parámetros de la solicitud
    const id = req.params.id;

    // Consulta a la base de datos para obtener una galería por su ID
    const result = await pool.query('SELECT * FROM galleries WHERE id = $1', [id]);

    // Si no se encontró la galería, enviar un error 404
    if (result.rows.length === 0) {
      return res.status(404).json({ error: 'Galería no encontrada' });
    }

    // Enviar respuesta JSON con los datos de la galería
    res.json({
      success: true,
      data: result.rows[0]
    });
  } catch (error) {
    console.error('Error al obtener la galería:', error);
    res.status(500).json({ error: 'Error al obtener la galería' });
  }
});


// Exportar las rutas
module.exports = router;