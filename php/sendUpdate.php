<?php 


if (isset($_POST['exilio'])){

include "conn.php";

if($_POST['type'] == 'update'){

	$codeUpdated = mysqli_real_escape_string($mysqli,$_POST['codeUpdated']);
	$identificacion = $_POST['identificacion'];
	$table = mysqli_real_escape_string($mysqli,$_POST['table']);
	$misqldata = "UPDATE $table SET String2 = '$codeUpdated' WHERE ID = $identificacion ; ";
		mysqli_query($mysqli, $misqldata);
	
echo "update";

} // end if codeUPdated 

} else{
	header("Location: ../index.php");
	exit();

}




 ?>