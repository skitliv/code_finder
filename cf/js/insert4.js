
jQuery(document).ready(function() {
	// $('#search-text').keyup(function() {
 //        $('.ajaxProgress').show();
	// 	var txt = $(this).val();
	// 	if (txt !="") {
	// 	$('#result').html('');
	// 		$.ajax({
	// 			url: 'data/fetch.php',
	// 			type: 'POST',
	// 			dataType: 'text',
	// 			data: {search: txt},
	// 			success:function(data){
	// 				$('#result').html(data);//the data show there;
 //                    $('.ajaxProgress').hide(); // progress of request of data
	// 			}
	// 		})
	// 		.done(function() {
	// 			console.log("success");
	// 		})
	// 		.fail(function() {
	// 			console.log("error");
	// 		})
	// 		.always(function() {
	// 			console.log("complete");
	// 		});

	// 	}// end of if text not nothig
	// 	else{

			
	// 	}

	// }); // din de keyup

//// ingresar datos
$('#inserTrigger').click(function(event) {

$('#searchResult').html("");	
var begin = " <form id = 'form3'> <br> <div class=''>  <input type='text' placeholder='Etiquetas' class='form-control' name='Etiquetas' id='Etiquetas'>   ";
var textAreaCode =" <textarea type='text' placeholder='code' class='' name='Code' id='code666' rows='7'> </textarea>" ;
var textAreaDescription = "<textarea type='text' placeholder='Description' class='' name='Description' rows='7' cols='50'> </textarea>";
var links = "<textarea type='text' placeholder='links' class='' name='link' rows='2' cols='50'> </textarea>";
    
var end = "<button  id='insertbtn'> Insert</button> </div> </form>";
let imagenInsert = "<div id = 'imgResult'> </div> ";
var todo = begin+ textAreaCode+textAreaDescription+ links + imagenInsert + end;
$('#insertBox').html(todo);
 	let e = event;

// ajust the areaText 
	

	let textarea = document.querySelector("#code666"); 
        textarea.addEventListener('input', autoResize, false); 
      
        function autoResize() { 
            this.style.height = 'auto'; 
            this.style.height = this.scrollHeight + 'px'; 
        } 

// ajust the areaText 

 	var insertbtn = document.getElementById("insertbtn");

insertbtn.addEventListener("click", function (event) {

	if (document.querySelector('#Etiquetas').value =='') {
		document.querySelector('#Etiquetas').placeholder = 'Sin etiquetas '
		document.querySelector('#code666').placeholder ='Sin codigo';
	event.preventDefault();	



	} else {
		
$.ajax({  
                     url:"cf/php/insert.php",  
                     method:"POST",  
                     data:$('#form3, #form2').serialize() ,   
                     success:function(data){  
						$("#result").html(data);
                          $('#form3').trigger("reset");                            
                     }  
                });
     	
	
event.preventDefault();
 } //ende else


});
	e.preventDefault();
});// btn click





});// fin de ready

