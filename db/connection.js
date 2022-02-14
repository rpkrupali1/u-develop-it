const mysql = require('mysql2');

//connect to database
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'Ib!26december',
    database: 'election'
}, console.log('Connected to election database'));

module.exports = db;