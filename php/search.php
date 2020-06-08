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
       $sql = "  SELECT * FROM $tableName ORDER BY ID DESC ";
	} else{
		 $sql = "  SELECT * FROM $tableName WHERE String1 LIKE '%$search%' Or
		 String2 LIKE '%$search%' ";
	}
//// if all else

$result = mysqli_query($mysqli,$sql);

$queryResult = mysqli_num_rows($result);
		$formS = "<form  id ='Form_editTextArea'>";
		echo $formS;
if ($queryResult > 0) {
	while ($row = mysqli_fetch_assoc($result)) {
		$divOpen = "<div class = 'dataContainer'>"; $divClose = " </div>";
		$h3 =  "<h3'> " .  $row['String1'] . "</h3>";
		$textarea1 =  "<div><textarea readonly ondblclick='upDater(event)' class = 'areaCode'>" .  $row['String2'] ." </textarea> <input type = 'hidden' class = 'hiddenId' value = '".$row['ID']."'> </div> ";
		$String3 = "<pre><code>". "<textarea id = 'areaDes'> " . $row['String3'] . "</textarea>  </code></pre>";
		$string4 =  "<a class = 'anchorWeb' href= '" . $row['string4']  ."' > ".$row['string4'] . "</a> ";

			if ($row['String3']==" ") {			
		 echo $divOpen . $h3 . $textarea1 . $string4 . $divClose ;
			} else {
		 echo  $divOpen .$h3 . $textarea1 .  $String3.   $string4 . $divClose ;

			}

		   // echo "<h3> " .  $row['String1'] ." </h3> <textarea>" .  $row['String2'] ." </textarea> ".
		   //  "<pre><code>". "<textarea id = 'areaDes'> " . $row['String3'] . "</textarea> 
		   // </code></pre> 
		   // <a href= '" . $row['string4']  ."' ></a>  ";

	} /// end while

		$formE = "</form>";
		echo $formE;
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