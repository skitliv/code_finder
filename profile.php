<?php
      include 'header.php';
   if($_SESSION["userid"]){

      // echo $_SESSION["userid"];
      // echo 'Hello '. $_SESSION["useruid"];
   ////////////////////////code <<<<<<<<<<<<<<<<<<<<<   

    ?>
   
       <div id="resultAjax">
         
       </div>
       <div id="container">
         <nav class="navbar  navbar-dark">
   
     <form class="form-inline" id="form2" >
       <input class="form-control mr-sm-2 " type="text" placeholder="Search" id="searchInput" value="all">
   
       <select id="inputState" class="form-control" name="dataTablahtml">
<?php
       $output = '';
       include 'cf/php/conn.php';

        $sql = "  SELECT * FROM lenguajes ORDER BY idlenguaje DESC ";
        $result = mysqli_query($conn,$sql);
        $queryResult = mysqli_num_rows($result);
        if ($queryResult > 0) {
          while ($row = mysqli_fetch_assoc($result)) {
            $output .= "<option value ='".$row['nombre']."'>". $row['nombre']   ."</option>"  ;
          } /// and whilw
        echo $output;
        } /// end if
    ?>
           
         </select>
   
       <button class="btn btn-success" type="submit" id="searchBtn">Search</button> 
       <button class="btn btn-success" type="" id="inserTrigger">Insert</button> 
       <br>
   
   
     </form>
   
   </nav>
   <div id="searchResult">
      <div id="waiting">
      <img src="cf/imagenes/eye.gif" alt=""> 
     </div>
   </div>
     <div id="insertBox">
       
     </div>
   

       </div>
   <?php 
   include 'cf/php/footer.php';  
   
///////////////////<code>>>>>>>>>>>>>>>>>>>>>>>>>>>
   } else {
		header("location: index.php");
      exit();
    
   } // else session userid

?>

