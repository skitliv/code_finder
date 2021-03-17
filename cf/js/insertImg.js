
jQuery(document).ready(function() {
  
    $('#inserTrigger').click(function(event) {
    $('#searchResult').html("");	
    
    
    
    let textAreaCode =' '+
      '<form  id="form_drinks">'+
  
      
       '<div class="col-lg-6 col-sm-6 col-12 ">'+
      
     '<h4 id = "result">Elegir Imagen</h4>'+
     '<label class="btn btn-block btn-primary">'+
                    'Buscarrrr&hellip; <input id="file" name ="file"type="file" style="display: none;">'+
     '</label>'+
       '<!-- <input type="file" name="file" id="file" /> -->'+
       '<br />'+
       '<span id="uploaded_image"></span>'+
       '<img id="img" src="" alt="" style="display: none;">'+
         '<input type="hidden" value="" name="ImagenPath" id="imagen-path">'+
      '</div>'
    
      '</div>'+
      '</form>';
    
    
    $('#imgResult').html(textAreaCode);
    //  setTimeout(calculator(), 333); /// js/calculator.js
     
     
     setTimeout(function  () {
        $("#file").on('change', function(){
      InsertImg("temp.php");
     });
     
    $("#insertbtn").on('click',  function() {
    InsertImg ("upload.php");
    }); /// submit click
    ///<<<<<<<<<<<<<<<<<<<<<<<< insert imagen function>>>>>>>>>>>>>>>>>>>>>>>>>> 
    function InsertImg (phpUrl) {
    var data = "img";
      if (document.getElementById("file").files[0]) {
    
      var name = document.getElementById("file").files[0].name;
      var form_data = new FormData();
      var ext = name.split('.').pop().toLowerCase();
      if(jQuery.inArray(ext, ['gif','png','jpg','jpeg']) == -1) 
      {
       alert("Invalid Image File");
      }
      var oFReader = new FileReader();
      oFReader.readAsDataURL(document.getElementById("file").files[0]);
      var f = document.getElementById("file").files[0];
      var fsize = f.size||f.fileSize;
      if(fsize > 5000000)
      {
       alert("Image File Size is very big");
      }
      else
      {
       form_data.append("file", document.getElementById('file').files[0]);
       $("#imagen-path").val(name);
    
       $.ajax({
        url:phpUrl,
        method:"POST",
        data:form_data,
        contentType: false,
        cache: false,
        processData: false,
        beforeSend:function(){
         $('#uploaded_image').html("<label class='text-success'>Image Uploading...</label>");
        },   
        success:function(data)
        {
         $('#uploaded_image').html(data);
        }
       });
      };
    ////////////<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>
    
        $('.spinner-grow').hide(); // shows the progress
    
    ////////////<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>>>
        
      } /// end of document.getElementById("file").files[0]
    }///<<<<<<<<<<<<<<<<<<<<<<<< insert imagen function>>>>>>>>>>>>>>>>>>>>>>>>>> 
    
    
    // function form_Validation () {
    
    //           let i = 0;
    //   document.querySelectorAll('#form_drinks input, #form_drinks textarea').forEach( function(item) { 
    //           if (item.hasAttribute("name") && item.getAttribute("type")!= "hidden" && item.value== ""&&item.getAttribute("type")!= "file"  ) {
    //               item.style.border = '2px solid red';
    //               item.placeholder = "Introducir " + item.name ;
    //               i++; 
    //           } else if(item.hasAttribute("name") && item.getAttribute("type")!= "hidden" && item.value!= ""&& item.getAttribute("type")!= "file" && item.getAttribute("type")!="submit") {
    //               item.style.border = '2px solid #fff';
    //           }
    
    //       }); 
    //         return i;
    // };
    
     }, 333); /// code to move the imagen to a temporal folder and then the definitive
     // do not forget to create the funcion      
    event.preventDefault(); 
    });
    });// fin de ready
    
    