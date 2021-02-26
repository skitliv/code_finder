

var search = $("#searchBtn");
$('#waiting img').hide();
search.click(function(event) {
  if (document.getElementById("searchInput").value != "" ) {

var tableName = document.getElementById("inputState").value;
$("#insertBox").html(""); 
$('#waiting img').show();

var existe = 'true';  
var searchInput = $('#searchInput').val();

$.ajax({
  url: 'cf/php/search.php',
  type: 'POST',
  dataType: 'html',
  data: {searchJs: searchInput,existe:existe,tableName:tableName},
})
.done(function(data) {
  console.log("success");

  $("#searchResult").html(data);
   $('#waiting img').hide();

/// adjust the size of the text area
   let textarea = document.querySelectorAll('textarea');
    
    	document.querySelectorAll('textarea').forEach(function  (item) {
    		console.log(item.scrollHeight);
    		item.style.height = (item.scrollHeight + 5) + "px";

    	});   	
/// adjust the size of the text area





})
.fail(function() {
  console.log("error");
})
.always(function() {
  console.log("complete");
});
event.preventDefault();
}// close if searchInput
});


