const express = require('express');
const PORT = process.env.PORT || 3001;
const app = express();
const mysql = require('mysql');

app.use(express.urlencoded({extended: false}));
app.use(express.json());

//connect to database
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'Ib!26december',
    database: 'election'
}, console.log('Connected to election database'));

db.query(`SELECT * FROM candidates`,(err, rows) => {
    console.log(rows);
});

// Default response for any other request (Not Found)
app.use((req, res) => {
    res.status(404).end();
});

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});