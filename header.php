<?php
  session_start();
  include_once 'includes/functions.inc.php';
?>
<?php 
include "cf/php/header.php";

?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Cf</title>
    <!--I won't do more than barebone HTML, since this isn't an HTML tutorial.-->
    <script src="cf/js/jquery/jquery.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="cf/bootstrap4.3.1/css/bootstrap.css">
    <script src="cf/bootstrap4.3.1/js/bootstrap.js"></script>

 
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="cf/csss/logincircle.css">

  
  </head>
  <body>

 <nav id="nav_top_menu" class="navbar navbar-expand-lg navbar-dark bg-dark">

        <a class="navbar-brand" href="index.php">Navbar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">

          
            <?php
            if (isset($_SESSION["useruid"])) {
              echo "
              <li class='nav-item active'>
                    <li><a class='nav-link' href='profile.php'>Code Finder  <span class='sr-only'>(current)</span></a>
              </li> ";


              echo "<li class='nav-item active'>
                      <li><a class='nav-link' href='logout.php'>Log out  <span class='sr-only'>(current)</span></a>
                     </li>";
            }
            else {
              echo "
              <li class='nav-item active'>
                    <li><a class='nav-link' href='signup.php'>Sing up  <span class='sr-only'>(current)</span></a>
              </li> ";


              echo "<li class='nav-item active'>
                      <li><a class='nav-link' href='index.php'>Log in  <span class='sr-only'>(current)</span></a>
                     </li>";  

  
            }
          ?>
            


            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Dropdown
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Something else here</a>
              </div>
            </li>
            <!-- <li class="nav-item">
              <a class="nav-link disabled" href="#">Disabled</a>
            </li> -->
          </ul>
          <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
          </form>
        </div>
      </nav>



    <!--A quick navigation-->
   




    

<!--A quick wrapper to align the content (ends in footer.php)-->
<div class="wrapper">
