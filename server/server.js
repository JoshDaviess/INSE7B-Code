'use scrict';

const express = require('express');
const app = express();

app.use(express.static('./webpages'));

//starting server on port 8080
app.listen(8080);
console.log("Listening on port 8080");
