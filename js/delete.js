
    
function deleterFunction(event) {
   let fight = event.target; 

    let texto = fight.parentNode.parentNode.querySelector('TEXTAREA').value;
    let hiddenId = fight.parentNode.parentNode.querySelector('.hiddenId').value;
    let tableNamer = document.querySelector('#inputState').value;
    alert(hiddenId);
    $.ajax({
        url: 'php/deleter.php',
        type: 'POST',
        dataType: 'text',
        data: {
        codeUpdated: texto,
         type:'delete',
         exilio: 'si',
         identificacion : hiddenId,
         table:tableNamer },
        success:function(data){
            // $('#resultAjax').html('');

             $('#resultAjax').html(data);
            ///shows the result of the request
            // $('.ajaxProgress').hide();// hides the progresspp
        }
    })
    .done(function() {
        console.log("success");
        
    })
    .fail(function() {
        console.log("error");
    })
    .always(function() {
        console.log("complete");
    });    


} /// deleterFunction fin




// document.getElementById('deleter').addEventListener('click',function (event) {
//     let e = event.target;
//     deleterFunction(e);
// })
