'use scrict';

const express = require('express');
const app = express();

app.use(express.static('./webpages'));

app.get('/', (req, res) => {
  res.send('Hello World');
});

// start the server
app.listen(8080, (err) => {
  if (err) console.error('error starting server', err);
  else console.log('server started');
});
