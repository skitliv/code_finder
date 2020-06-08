console.log('todo va bien ');
document.getElementById("searchInput").addEventListener("click",function () {
	
	document.getElementById("searchResult").addEventListener("dblclick", 
		function (event) {
			let e = event.target;
			if (e.tagName == "TEXTAREA") {
				e.select();
				document.execCommand("copy");

			}/// end of if code
		});
})/// end of click event serachResult

document.getElementById("searchBtn").addEventListener("click", function () {
	let textarea = document.querySelectorAll('textarea');
    setTimeout(  function () {
    	document.querySelectorAll('textarea').forEach(function  (item) {
    		console.log(item.scrollHeight);
    		item.style.height = item.scrollHeight + "px";

    	})
    } ,1000)


});