<?php
// Database connection settings 
 $host = 'localhost';
 $user = 'root';
 $pass = '';
 $db = 'code_finder';
$mysqli = new mysqli($host,$user,$pass,$db) or die($mysqli->error); 