 <?php 

if (isset($_POST['Code'])) {

	session_start();
	$iDuser = $_SESSION["userid"];
include "conn.php";

$dataTablahtml = mysqli_real_escape_string($conn,$_POST['dataTablahtml']);
$Etiquetas = mysqli_real_escape_string($conn,$_POST['Etiquetas']);
$Code = mysqli_real_escape_string($conn,$_POST['Code']);
$Description =  mysqli_real_escape_string($conn,$_POST['Description']);

	
	$misqldata = " INSERT INTO usercodes (`iDuser`, `iDlenguaje`,`code` , `description`, `tags` ) VALUES
	 ($iDuser, $dataTablahtml ,'$Code','$Description' ,'$Etiquetas');";
	mysqli_query($conn, $misqldata);

} else{
	header("Location: ../index.php");
	exit();

}

 ?>