



document.getElementById("searchBtn").addEventListener("click", function () {
	let textarea = document.querySelectorAll('textarea');
    setTimeout(  function () {
    	document.querySelectorAll('textarea').forEach(function  (item) {
    		// console.log(item.scrollHeight);
    		item.style.height = (item.scrollHeight + 5) + "px";

    	})
    } ,1000)


});