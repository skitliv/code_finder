<?php 


if (isset($_POST['codeUpdated'])) {


include "conn.php";

$codeUpdated = mysqli_real_escape_string($mysqli,$_POST['codeUpdated']);
$identificacion = $_POST['identificacion'];
$table = mysqli_real_escape_string($mysqli,$_POST['table']);


	$misqldata = "UPDATE $table
SET String2 = '$codeUpdated'
WHERE ID = $identificacion ; ";
	mysqli_query($mysqli, $misqldata);

} else{
	header("Location: ../index.php");
	exit();

}




 ?>