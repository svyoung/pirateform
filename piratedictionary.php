<?php
include("db.php");

$data = connect()->prepare("SELECT english, pirate FROM pirate");
$data->execute();
$results = $data->fetchAll();
echo json_encode($results);