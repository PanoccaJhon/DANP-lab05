
const express = require('express');
const router = express.Router();
const pool = require('../db/db');

// Ruta para obtener exhibiciones con paginación
router.get('/exhibitions', async (req, res) => {
  try {
    // Obtener `limit` y `offset` de los parámetros de consulta, con valores predeterminados
    const limit = parseInt(req.query.limit) || 5;  // Predeterminado a 10 elementos
    const offset = parseInt(req.query.offset) || 0; // Predeterminado a 0 (primer elemento)

    // Consulta a la base de datos con paginación
    const result = await pool.query('SELECT * FROM exhibitions LIMIT $1 OFFSET $2', [limit, offset]);

    // Enviar respuesta JSON con los datos y detalles de paginación
    res.json({
      success: true,
      data: result.rows,
      count: result.rows.length,
      offset:offset,
      limit:limit
    });
  } catch (error) {
    console.error('Error al obtener las exhibiciones:', error);
    res.status(500).json({ error: 'Error al obtener las exhibiciones' });
  }
});

// Ruta para obtener una exhibición por su ID
router.get('/exhibitions/:id', async (req, res) => {
  try {
    // Obtener el ID de los parámetros de la solicitud
    const id = req.params.id;

    // Consulta a la base de datos para obtener una exhibición por su ID
    const result = await pool.query('SELECT * FROM exhibitions WHERE id = $1', [id]);

    // Si no se encontró la exhibición, enviar un error 404
    if (result.rows.length === 0) {
      return res.status(404).json({ error: 'Exhibición no encontrada' });
    }

    // Enviar respuesta JSON con los datos de la exhibición
    res.json({
      success: true,
      data: result.rows[0]
    });
  } catch (error) {
    console.error('Error al obtener la exhibición:', error);
    res.status(500).json({ error: 'Error al obtener la exhibición' });
  }
});

// Exportar las rutas
module.exports = router;