const express = require('express');
const path = require('path');
const app = express();

// Importar las rutas
const usersRoutes = require('./routes/usersRoutes');
const artistsRoutes = require('./routes/artistsRoutes');
const galleriesRoutes = require('./routes/galleriesRoutes');
const exhibitionsRoutes = require('./routes/exhibitionsRoutes');
const worksRoutes = require('./routes/worksRoutes');

// Servir imágenes desde el directorio 'images' dentro de 'server'
app.use('/api/img', express.static(path.join(__dirname, 'public')));

// Middleware para las rutas
app.use('/api', usersRoutes);
app.use('/api', artistsRoutes);
app.use('/api', galleriesRoutes);
app.use('/api', exhibitionsRoutes);
app.use('/api', worksRoutes);

// Puerto en el que escuchará el servidor
const port = 3000;
app.listen(port, () => {
  console.log(`Servidor escuchando en http://localhost:${port}`);
});
