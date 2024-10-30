const express = require('express');
const router = express.Router();
const pool = require('../db/db');

// Ruta para obtener usuarios con paginación
router.get('/usuarios', async (req, res) => {
  try {
    // Obtener `limit` y `offset` de los parámetros de consulta, con valores predeterminados
    const limit = parseInt(req.query.limit) || 5;  // Predeterminado a 10 elementos
    const offset = parseInt(req.query.offset) || 0; // Predeterminado a 0 (primer elemento)

    // Consulta a la base de datos con paginación
    const result = await pool.query('SELECT * FROM users LIMIT $1 OFFSET $2', [limit, offset]);

    // Enviar respuesta JSON con los datos y detalles de paginación
    res.json({
      success: true,
      data: result.rows,
      count: result.rows.length,
      offset:offset,
      limit:limit
    });
  } catch (error) {
    console.error('Error al obtener los usuarios:', error);
    res.status(500).json({ error: 'Error al obtener los usuarios' });
  }
});

// Ruta para obtener un usuario por su ID
router.get('/usuarios/:id', async (req, res) => {
  try {
    // Obtener el ID de los parámetros de la solicitud
    const id = req.params.id;

    // Consulta a la base de datos para obtener un usuario por su ID
    const result = await pool.query('SELECT * FROM users WHERE id = $1', [id]);

    // Si no se encontró el usuario, enviar un error 404
    if (result.rows.length === 0) {
      return res.status(404).json({ error: 'Usuario no encontrado' });
    }

    // Enviar respuesta JSON con los datos del usuario
    res.json({
      success: true,
      data: result.rows[0]
    });
  } catch (error) {
    console.error('Error al obtener el usuario:', error);
    res.status(500).json({ error: 'Error al obtener el usuario' });
  }
});

// Ruta para crear un nuevo usuario
router.post('/usuarios', async (req, res) => {
  try {
    // Obtener los datos del usuario del cuerpo de la solicitud
    const { nombre, correo, telefono, contrasena, foto} = req.body;

    // Validar que los datos requeridos se proporcionen
    if (!nombre || !correo || !edad || !telefono || !contrasena || !foto) {
      return res.status(400).json({ error: 'Faltan datos requeridos' });
    }

    // Consulta a la base de datos para insertar un nuevo usuario
    const result = await pool.query('INSERT INTO users (name, email, phone, password, photoUrl) VALUES ($1, $2, $3, $4, $5) RETURNING *', [nombre, correo, telefono, contrasena, foto]);

    // Enviar respuesta JSON con los datos del usuario creado
    res.status(201).json({
      success: true,
      data: result.rows[0]
    });
  } catch (error) {
    console.error('Error al crear el usuario:', error);
    res.status(500).json({ error: 'Error al crear el usuario' });
  }
});

// Ruta para actualizar un usuario por su ID
router.put('/usuarios/:id', async (req, res) => {
  try {
    // Obtener el ID y los datos del usuario del cuerpo de la solicitud
    const id = req.params.id;
    const { nombre, correo, telefono, contrasena, foto } = req.body;

    // Validar que los datos requeridos se proporcionen
    if (!nombre || !correo || !edad || !telefono || !contrasena || !foto) {
      return res.status(400).json({ error: 'Faltan datos requeridos' });
    }

    // Consulta a la base de datos para actualizar un usuario por su ID
    const result = await pool.query('UPDATE usuarios SET nombre = $1, correo = $2, edad = $3 WHERE id = $4 RETURNING *', [nombre, correo, telefono, contrasena, foto, id]);

    // Si no se encontró el usuario, enviar un error 404
    if (result.rows.length === 0) {
      return res.status(404).json({ error: 'Usuario no encontrado' });
    }

    // Enviar respuesta JSON con los datos del usuario actualizado
    res.json({
      success: true,
      data: result.rows[0]
    });
  } catch (error) {
    console.error('Error al actualizar el usuario:', error);
    res.status(500).json({ error: 'Error al actualizar el usuario' });
  }
});

// Ruta para eliminar un usuario por su ID
router.delete('/usuarios/:id/delete', async (req, res) => {
  try {
    // Obtener el ID de los parámetros de la solicitud
    const id = req.params.id;

    // Consulta a la base de datos para eliminar un usuario por su ID
    const result = await pool.query('DELETE FROM users WHERE id = $1 RETURNING *', [id]);

    // Si no se encontró el usuario, enviar un error 404
    if (result.rows.length === 0) {
      return res.status(404).json({ error: 'Usuario no encontrado' });
    }

    // Enviar respuesta JSON con los datos del usuario eliminado
    res.json({
      success: true,
      data: result.rows[0]
    });
  } catch (error) {
    console.error('Error al eliminar el usuario:', error);
    res.status(500).json({ error: 'Error al eliminar el usuario' });
  }
});

// Ruta para obtener la tabla user_preferencias por el id del usuario
router.get('/usuarios/:id/preferencias', async (req, res) => {
  try {
    // Obtener el ID de los parámetros de la solicitud
    const id = req.params.id;

    // Consulta a la base de datos para obtener las preferencias de un usuario por su ID
    const result = await pool.query('SELECT * FROM user_preferences WHERE user_id = $1', [id]);

    // Si no se encontraron preferencias, enviar un error 404
    if (result.rows.length === 0) {
      return res.status(404).json({ error: 'Preferencias no encontradas' });
    }

    // Enviar respuesta JSON con los datos de las preferencias del usuario
    res.json({
      success: true,
      data: result.rows
    });
  } catch (error) {
    console.error('Error al obtener las preferencias del usuario:', error);
    res.status(500).json({ error: 'Error al obtener las preferencias del usuario' });
  }
});

// Esportar las rutas
module.exports = router;
