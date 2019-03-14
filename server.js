'use scrict'

//const express = require('express');
//const app = express;

const http = require('http');

const server = http.createServer(function(req, res){
  res.writeHead(200, {'Content-Type': 'text/plain'});
  res.end('Hello World');
});

server.listen(8080, '127.0.0.1');
console.log('Listening on port 8080...');
