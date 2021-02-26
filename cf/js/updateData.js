console.log('update data is working fine');
    let texto = "";
	let hiddenId ="";
	let tableNamer = "";

function upDater(event) {

	let e = event.target;
	if (e.parentNode.querySelector('.spanEditar')) { 
 
	} else {
	e.readOnly = false;
	let spanDiv = document.createElement("DIV");;
	let span = document.createElement("SPAN");
	let spanCerrar = document.createElement("SPAN");

	spanDiv.className = 'spanDiv';
	e.parentNode.appendChild(spanDiv);
	

	span.innerHTML = 'Enviar';
	span.className = 'spanEditar';
	spanDiv.appendChild(span);
	let spanEditor = e.parentNode.querySelector('.spanEditar');


	spanCerrar.innerHTML = 'x';
	spanCerrar.className = 'spanCerrar';
	spanDiv.appendChild(spanCerrar);



    texto = e.parentNode.querySelector('TEXTAREA').value;
    hiddenId = e.parentNode.querySelector('.hiddenId').value;
    tableNamer = document.querySelector('#inputState').value;

    spanCerrar.addEventListener("click", ()=>{
    	spanCerrar.parentNode.remove();
				e.readOnly = true;
    	
    });
    
    spanEditor.addEventListener("click", () =>{
   
   if (texto === e.parentNode.querySelector('TEXTAREA').value  ) {

   	console.log('el texto no ha cambiado');
   	let noahitexto = document.createElement("SPAN");
   	noahitexto.innerHTML = 'No ahi cambios';
   	spanDiv.appendChild(noahitexto);
   	setTimeout(()=>{
   		noahitexto.remove();
   	}, 3000);
  
   } else{
   		texto = e.parentNode.querySelector('TEXTAREA').value;

   		$('#resultAjax').html(''); // limplia cualquier codigo
			$.ajax({
				url: 'php/sendUpdate.php',
				type: 'POST',
				dataType: 'text',
				data: {
			  codeUpdated: texto,
				 identificacion : hiddenId,
			   table:tableNamer },
				success:function(data){
					$('#resultAjax').html(data);///shows the result of the request
					// $('.ajaxProgress').hide();// hides the progresspp
				}
			})
			.done(function() {
				console.log("success");
				spanEditor.remove();
				e.readOnly = true;
				
			})
			.fail(function() {
				console.log("error");
			})
			.always(function() {
				console.log("complete");
			});

   	

   }
   });
	} // end of else 
	
        // e.disabled = false;
} /// end of updater
