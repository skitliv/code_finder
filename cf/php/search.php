<?php 
session_start();
 $iDuser =  $_SESSION["userid"];
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
	   
	   $sql = "SELECT uc.tags, code, iDuserCodes , description , uc.iDlenguaje  
	   from  usercodes uc 
	   join  lenguajes l on l.iDlenguaje = uc.iDlenguaje
	   join  users usr on uc.iDuser = usr.usersId
		  where uc.iDuser = $iDuser  and l.Idlenguaje = '$tableName' order by uc.iDuserCodes  desc";

	} 
	  else {
		$sql = "SELECT uc.tags, code, iDuserCodes , description , uc.iDlenguaje  
		from  usercodes uc 
		join  lenguajes l on l.iDlenguaje = uc.iDlenguaje
		join  users usr on uc.iDuser = usr.usersId
		   where uc.iDuser = $iDuser  and l.Idlenguaje = '$tableName' and code LIKE '%$search%' Or
		         uc.iDuser = $iDuser  and l.Idlenguaje = '$tableName' and tags LIKE '%$search%'  order by uc.iDuserCodes  desc";


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
	
	
		$divOpen = "<div class = 'dataContainer'>";
		$divClose = "</div>";

		if ($queryResult > 0) {
	while ($row = mysqli_fetch_assoc($result)) {

			$h3 =  "<h3 id = 'h3con'>" .  $row['tags'] . "</h3>";
		$textarea1 =  "<div><textarea readonly ondblclick='upDater(event)' class = 'areaCode'>" .  $row['code'] ." </textarea> <input type = 'hidden' class = 'hiddenId' value = '".$row['iDuserCodes']."'> </div> ";
		$String3 = "<div> <pre><code>". "<textarea id = 'areaDes'> " . $row['description'] . "</textarea>  </code></pre></div>";



		$sqlMedia = 'SELECT img_link from media where idUserCodes ='.$row['iDuserCodes'].';';
		
		$resultMedia = mysqli_query($conn,$sqlMedia);
        $queryResultMedia = mysqli_num_rows($resultMedia);
		if ($queryResultMedia > 0) {
			while ($row1 = mysqli_fetch_assoc($resultMedia)) {
				$media = '<div class= "imagenesContainer"><img src= "images/'.$row1['img_link'].'"'.'> </div>';
			}
		} else {
			$media = "";
		}
		// $string4 =  "<a class = 'anchorWeb' href= '" . $row['string4']  ."' > ".$row['string4'] . "</a> ";

			if ($row['description']==" ") {			
		 echo $divOpen . $tolls . $h3 . $textarea1 . $media . $divClose ;  // if string is emply do not show string 3 text area
			} else {
		 echo  $divOpen . $tolls .$h3 . $textarea1 .  $String3. $media.  $divClose ;

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
// phpinfo();
     ?>
</div>