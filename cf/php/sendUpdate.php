<?php 


if (isset($_POST['codeUpdated'])) {


include "conn.php";

$codeUpdated = mysqli_real_escape_string($conn,$_POST['codeUpdated']);
$identificacion = mysqli_real_escape_string($conn,$_POST['identificacion']);

$table = mysqli_real_escape_string($conn,$_POST['table']);


	$misqldata = "UPDATE usercodes SET code = '$codeUpdated' WHERE IduserCodes = $identificacion ;";
	mysqli_query($conn, $misqldata);

} else{
	header("Location: ../index.php");
	exit();

}


 ?>