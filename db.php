<?php

define("DB_HOST_DB_NAME", "mysql:host=localhost;dbname=pirate");
define("USERNAME", "root");
define("PASSWORD", "");

function connect() {
	try {
    $conn = new PDO(DB_HOST_DB_NAME, USERNAME, PASSWORD);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    return $conn;
} catch(PDOException $e) {
    echo 'Error: ' . $e->getMessage();
}
}

