'use scrict';

const express = require('express');
const app = express();
const path = require('path');

app.use(express.static(path.join(__dirname + '/webpages')));

app.get('/', function(req, res) {
  res.send('Hello World');
});

// starts the server
app.listen(8080, (err) => {
  if (err) console.error('Error starting server', err);
  else console.log('Server started on port 8080');
});
