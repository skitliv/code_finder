<?php

$servername = "localhost";
$dBUsername = "root";
$dBPassword = "";
$dBName = "db6fdfclbgvv3n";

$conn = mysqli_connect($servername, $dBUsername, $dBPassword, $dBName);

if (!$conn) {
	die("Connection failed: ".mysqli_connect_error());
}
