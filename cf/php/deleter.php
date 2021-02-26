<?php 


if (isset($_POST['exilio'])){

include "conn.php";

if($_POST['type'] == 'delete'){

	$codeUpdated = mysqli_real_escape_string($conn,$_POST['codeUpdated']);
	$identificacion = $_POST['identificacion'];
	$table = mysqli_real_escape_string($conn,$_POST['table']);
	$misqldata = "delete FROM usercodes   WHERE iDuserCodes = $identificacion ; ";
		mysqli_query($conn, $misqldata);
	
echo "update";

} // end if codeUPdated 

} else{
	header("Location: ../index.php");
	exit();

}




 ?>