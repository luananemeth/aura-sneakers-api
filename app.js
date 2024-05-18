const express = require("express");
const cors = require("cors");
const app = express();
const jwt = require("jsonwebtoken");

app.use(express.json());
app.use(cors());

const port = process.env.PORT || 3000;

var mysql = require("mysql2");

var connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "Mysql@Pass321",
  database: "aura_sneakers",
});

connection.connect();

app.get("/products", (request, response) => {
  let where = "";

  if (request.query && request.query.name !== undefined) {
    where = `WHERE name LIKE '%${request.query.name}%'`;
  }

  connection.query(
    `SELECT * FROM products ${where}`,
    function (error, results) {
      if (error) throw error;
      response.send(results);
    }
  );
});

app.post("/login", (request, response) => {
  const { email, password } = request.body;

  connection.query(
    `SELECT * FROM customers WHERE email='${email}' and password='${password}'`,
    function (error, results) {
      if (error) throw error;

      if (results.length === 0) {
        return response.status(400).json({ errorCode: "INVALID_CREDENTIALS" });
      }

      response.send(results[0]);
    }
  );
});

app.post("/customers", (request, response) => {
  const { name, password, email } = request.body;

  connection.query(
    `SELECT * FROM customers WHERE email LIKE '%${email}%'`,
    function (error, results) {
      if (error) throw error;

      if (results.length > 0) {
        return response.status(400).json({ errorCode: "USER_ALREADY_EXISTS" });
      }

      connection.query(`INSERT INTO customers (name, password, email) VALUES
      (?,?,?)`, [name, password, email], (error,
        results) => {
        if (error) return response.json({ error: error }).sendStatus(500);

        response.json({
          id: results.insertId,
          name,
          password,
          email,
        });
      });
    }
  );
});

app.listen(port, () => {
  console.log("Server Listening on PORT:", port);
});
