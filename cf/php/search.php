<?php 

include 'conn.php';
   
 ?>

    <?php 
$search = $_POST['searchJs']; // the data from the ajax call
$existe = $_POST['existe']; // the data from the ajax call
$tableName = $_POST['tableName']; // the data from the ajax call
if (isset($_POST['existe'])){
if (isset($_POST['searchJs'])) {


//// if all else
	if ($search == "all" or $search == '*' ) {
	   $sql1 = "  SELECT * FROM $tableName ORDER BY ID DESC ";
	   
	   $sql = "SELECT uc.tags, code, iDuserCodes , description , uc.iDlenguaje  
	   from  usercodes uc 
	   join  lenguajes l on l.iDlenguaje = uc.iDlenguaje
	   join  usuario usr on uc.iDuser = usr.iDuser
		  where uc.iDuser = 1  and l.nombre = '$tableName' ";
	} 
	  else {
		 $sql = "  SELECT * FROM usercodes WHERE code LIKE '%$search%' Or
		 tags LIKE '%$search%' and iDlenguaje = 2 ";
	} 
	  
//// if all else

/// htmlcode
$tolls = '<div class = "tools"> 
           <i class="fas fa-user-ninja" id = "deleter" onClick = "deleterFunction(event)" ></i> 
          </div>';


/// htmlcode



$result = mysqli_query($conn,$sql);

$queryResult = mysqli_num_rows($result);
		$formS = "<form  id ='Form_editTextArea'>";
		echo $formS;
if ($queryResult > 0) {
	while ($row = mysqli_fetch_assoc($result)) {
		$divOpen = "<div class = 'dataContainer'>";
		$divClose = "</div>";
		$h3 =  "<h3>" .  $row['tags'] . "</h3>";
		$textarea1 =  "<div><textarea readonly ondblclick='upDater(event)' class = 'areaCode'>" .  $row['code'] ." </textarea> <input type = 'hidden' class = 'hiddenId' value = '".$row['iDuserCodes']."'> </div> ";
		$String3 = "<div> <pre><code>". "<textarea id = 'areaDes'> " . $row['description'] . "</textarea>  </code></pre></div>";
		
		// $string4 =  "<a class = 'anchorWeb' href= '" . $row['string4']  ."' > ".$row['string4'] . "</a> ";

			if ($row['description']==" ") {			
		 echo $divOpen . $tolls . $h3 . $textarea1 . $divClose ;  // if string is emply do not show string 3 text area
			} else {
		 echo  $divOpen . $tolls .$h3 . $textarea1 .  $String3.  $divClose ;

			}

		   // echo "<h3> " .  $row['String1'] ." </h3> <textarea>" .  $row['String2'] ." </textarea> ".
		   //  "<pre><code>". "<textarea id = 'areaDes'> " . $row['String3'] . "</textarea> 
		   // </code></pre> 
		   // <a href= '" . $row['string4']  ."' ></a>  ";

	} /// end while

		$formE = "</form>";
		$script = "<script src= 'cf/js/delete.js'> </script>";
		echo $formE . $script;
} else{
	echo "there are not results matching your research";
}


}// if search 

} //if exist
else{
	header('Location: ../index.php');
}

     ?>
    
</div>