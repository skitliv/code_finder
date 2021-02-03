 <?php 

if (isset($_POST['Code'])) {


include "conn.php";

$dataTablahtml = mysqli_real_escape_string($mysqli,$_POST['dataTablahtml']);
$Etiquetas = mysqli_real_escape_string($mysqli,$_POST['Etiquetas']);
$Code = mysqli_real_escape_string($mysqli,$_POST['Code']);
$Description =  mysqli_real_escape_string($mysqli,$_POST['Description']);
$link =  mysqli_real_escape_string($mysqli,$_POST['link']);
$idLenguaje = mysqli_real_escape_string($mysqli,$_POST['idLenguaje']);
	
	$misqldata = " INSERT INTO usercodes (`tags`, `code`,`description`  ) VALUES
	 ('$Etiquetas','$Code','$Description');";
	mysqli_query($mysqli, $misqldata);

} else{
	header("Location: ../index.php");
	exit();

}

 ?>