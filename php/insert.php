 <?php 

if (isset($_POST['Code'])) {


include "conn.php";

$dataTablahtml = mysqli_real_escape_string($mysqli,$_POST['dataTablahtml']);
$Etiquetas = mysqli_real_escape_string($mysqli,$_POST['Etiquetas']);
$Code = mysqli_real_escape_string($mysqli,$_POST['Code']);
$Description =  mysqli_real_escape_string($mysqli,$_POST['Description']);
$link =  mysqli_real_escape_string($mysqli,$_POST['link']);

	
	$misqldata = " INSERT INTO $dataTablahtml (`String1`, `String2`,`String3` , `string4` ) VALUES
	 ('$Etiquetas','$Code','$Description', '$link');";
	mysqli_query($mysqli, $misqldata);

} else{
	header("Location: ../index.php");
	exit();

}

 ?>