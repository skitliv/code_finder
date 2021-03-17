<?php
//upload.php



if (isset($_FILES["file"]["name"])) {

if($_FILES["file"]["name"] != '' )
{
	echo "bajado con exito";
 $test = explode('.', $_FILES["file"]["name"]);
 $ext = end($test);
 $name = $_FILES["file"]["name"];
 
 $location = 'images/'.$name;  	
 $locationTemporal = 'imagesTemporal/'.$name;  	

$path= $locationTemporal ;
if (!unlink($path)) {
	echo 'fallo';
}
else{ echo "exito";}
// The name of the folder.
$folder = './imagesTemporal/';

//Get a list of all of the file names in the folder.
$files = glob($folder . '/*');

//Loop through the file list.
foreach($files as $file){
    //Make sure that this is a file and not a directory.
    if(is_file($file)){
        //Use the unlink function to delete the file.
        unlink($file);
    }
}


 move_uploaded_file($_FILES["file"]["tmp_name"], $location);
 echo '<img src="" height="150" width="225" class="img-thumbnail" id="imagenista" src="imagenes"/>';
}	
}


?>
