<?php
  include_once 'header.php';


  if(isset($_SESSION["userid"])) {
 

  } else{
 ?>
<section class="seclogin">
<div id="conLogin">

<form action="includes/login.inc.php" method="post">
    <input type="text" name="uid" placeholder="Username/Email..." required >
    <input type="password" name="pwd" placeholder="Password..." required > 
    <br> <br>
    <button type="submit" name="submit" class="btn btn-dark">Log in</button>
  
</form>

</div>
</section>
 <?php
  }
?>
  <?php
    // Error messages
    if (isset($_GET["error"])) {
      if ($_GET["error"] == "emptyinput") {
        echo "<p>Fill in all fields!</p>";
      }
      else if ($_GET["error"] == "wronglogin") {
        echo "<p>Wrong login!</p>";
      }
    }
  ?>
</section>

<?php
  include_once 'footer.php';
?>
