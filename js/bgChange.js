let bgChange = document.getElementById("inputState");
let urls = {
	javascript:'https://developer.mozilla.org/en-US/docs/Web/JavaScript',
	d3js :'https://d3js.org/',
	php :'https://www.php.net/docs.php',
	phyton : 'https://docs.python.org/3/',
	css : 'https://www.w3schools.com/w3css/',
	boostrap : 'https://getbootstrap.com/',
	npm : 'https://docs.npmjs.com/getting-started/',
	git : 'https://git-scm.com/doc',
	mysql : 'https://www.w3schools.com/sql/',
};
let stateValue = urls.javascript;

bgChange.addEventListener("change", (event)=>{	
let e = event.target ;
console.log(urls);
let ext = '.jpg';
document.getElementById("logoBg").style.backgroundImage = `url(firma/imagenes/${e.value + ext})`;
stateValue = e.value;
},true);

	document.getElementById('upDown').addEventListener("click",  (event)=>{
if(event.target.id == "upDown"){
window.open( 
              urls[stateValue], "_blank"); 

}

	},true);