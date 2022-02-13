const express = require('express');
const PORT = process.env.PORT || 3001;
const app = express();
const mysql = require('mysql2');

app.use(express.urlencoded({extended: false}));
app.use(express.json());

//connect to database
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'Ib!26december',
    database: 'election'
}, console.log('Connected to election database'));

//get all candidates
db.query(`SELECT * FROM candidates`,(err, rows) => {
    console.log(rows);
});

// //get specific candidate
db.query(`SELECT * FROM candidates WHERE id=1`,(err,row) => {
    if(err)
        console.log(err);
    else console.log(row);
});

// //delete record from database
db.query(`DELETE FROM candidates WHERE id = ?`,2,(err,result) => {
    if(err)
        console.log(err);
    else console.log(row);
});

//create a candidate
const sql = `INSERT INTO candidates (id, first_name, last_name, industry_connected)
VALUES (?, ?, ?,?)`;
const params = [1, 'Ronald', 'Firbank', 1];
db.query(sql,params,(err,result) => {
    if (err) {
        console.log(err);
    }
    console.log(result);
})

// Default response for any other request (Not Found)
app.use((req, res) => {
    res.status(404).end();
});

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});