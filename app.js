import mysql2 from "mysql2";

const connection = mysql2.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'Muz@sh11kai',
    database: 'manage_my_furniture'
});

connection.connect((err) => {
    if (err) {
        console.log('Error connecting to mysql database', err);
        return;
    }
    console.log('Connection to mysql database established');
});

connection.query('SELECT * FROM users', (err, rows) => {
    if (err) {
        console.log('Error querying users table', err);
        return;
    }
    console.log('Data received from database:');
    console.log(rows);
});

connection.query('SELECT * FROM furniture', (err, rows) => {
    if (err) {
        console.log('Error querying furniture table', err);
        return;
    }
    console.log('Data revieved from database:');
    console.log(rows);
})

connection.end((err) => {
    if (err) {
        console.log('Error disconnecting from mysql database', err);
        return;
    }
    console.log('Connection to mysql database closed');
});