'use scrict';

const express = require('express');
const app = express();
const path = require('path');
const mysql = require('mysql2/promise');

app.use(express.static(path.join(__dirname + '/webpages')));

app.get('/', function(req, res) {
  mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: 'root',
      database: 'database'
  }).then(function(conn){
    var result = conn.query('select * from Shop');
    conn.end();
    console.log(result);
    res.send(result);
  });
});

// starts the server
app.listen(8080, (err) => {
  if (err) console.error('Error starting server', err);
  else console.log('Server started on port 8080');
});
