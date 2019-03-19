'use scrict';

const express = require('express');
const app = express();

//app.use(express.static('./webpages'));

app.use('/', express.static(config.webpages, { extensions: ['html'] }));

// start the server
app.listen(8080, (err) => {
  if (err) console.error('error starting server', err);
  else console.log('server started');
});
