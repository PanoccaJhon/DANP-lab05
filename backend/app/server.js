const express = require('express');
const app = express();

// Importar las rutas
const appRoutes = require('./routes/appRoutes');

// Middleware para las rutas
app.use('/api', appRoutes);

// Puerto en el que escuchará el servidor
const port = 3000;
app.listen(port, () => {
  console.log(`Servidor escuchando en http://localhost:${port}`);
});
