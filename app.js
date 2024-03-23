const express = require("express");
const cors = require("cors");
const app = express();

app.use(express.json());
app.use(cors());

const port = process.env.PORT || 3000;

var mysql = require("mysql");

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

// connection.end();
app.listen(port, () => {
  console.log("Server Listening on PORT:", port);
});
