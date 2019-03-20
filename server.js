'use scrict';

const express = require('express');
const app = express();
const path = require('path');
//const mysql = require('mysql');

//app.use(express.static(path.join(__dirname + '/webpages')));

//var sqlconnect =  mysql.createConnection({
//      host: 'localhost',
//      user: 'root',
//      password: 'root',
//      database: 'inseDB'
//  });

// starts the server
app.listen(8080, (err) => {
  if (err) console.error('Error starting server', err);
  else console.log('Server started on port 8080');
});

//sqlconnect.connect();
//sqlconnect.query('Select * from Shop', function (error, results, fields) {
//  if (error) throw error;
//  console.log(results);
//});
