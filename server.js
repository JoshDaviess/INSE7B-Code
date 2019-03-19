'use scrict';

const express = require('express');
const app = express();

app.use(express.static(__dirname + 'webpages'));

// starts the server
app.listen(8080, (err) => {
  if (err) console.error('Error starting server', err);
  else console.log('Server started on port 8080');
});
