<?php 
include "php/header.php";
 ?>

    <header>
    <nav id="mainMenu">   
      <!-- <button class="button gray" id="boton"><a href="https://tekila26.angelesydemonios.club">Home</a></button> -->
    </nav>

    </header>

    <div id="resultAjax">
      
    </div>
    <div id="container">
      <nav class="navbar  navbar-dark">

  <form class="form-inline" id="form2" >
    <input class="form-control mr-sm-2 " type="text" placeholder="Search" id="searchInput" value="all">

    <select id="inputState" class="form-control" name="dataTablahtml">
        
        <option value ="javascript">Js</option>
        <option value ="d3js">D3</option>
        <option value ="sass">sass</option>
        <option value="php">php</option>
        <option value ="git">git</option>
        <option value ="css">css</option>
        <option value ="command">command</option>
        <option value="mysql">mysql</option>
        <option value="Bootstrap">Bootstrap</option>
        <option value ="ShortCuts">ShortCuts</option>
        <option value ="phyton">phyton</option>
        
        <option value ="npm">npm</option>
        
      </select>

    <button class="btn btn-success" type="submit" id="searchBtn">Search</button> 
    <button class="btn btn-success" type="" id="inserTrigger">Insert</button> 
    <br>


  </form>

</nav>
<div id="searchResult">
	<div id="waiting">
   <img src="imagenes/eye.gif" alt=""> 
  </div>
</div>
  <div id="insertBox">
    
  </div>



    </div>
<?php   include 'php/footer.php' ?> 
