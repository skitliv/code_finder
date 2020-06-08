console.log('firma is working correctly');
let firmaCss = document.createElement("link");
    firmaCss.setAttribute("rel", 'stylesheet');
    firmaCss.setAttribute("href", 'firma/css/firma.css');
    document.head.appendChild(firmaCss);
let	 arrayText = [
 ["Todo lo que vemos o sentimos","es solo un sueño","dentro de un sueño"]
,["Años de amor","han sido olvidados, ","en el odio de un minuto."]
,["En lo profundo de la tierra","mi amor miente","Y debo llorar solo." ]
,["El creyente es feliz","El que duda es sabio."]
,["Los monstruos más temibles","son los que se esconden","en nuestras almas."]
,["Edgar Allan Poe" ]];
function myLogoCreation() {
let myLogoCon = document.createElement("DIV");
myLogoCon.setAttribute("id", "myLogoContainer");
myLogoCon.innerHTML = "<div>" 
 + "<div id= 'textLog'> <div id ='logoBg'> <div id = 'upDown'>"
+ "<div id = 'satelite'></div><div id = 'satelite1'></div><div  id = 'satelite2'></div>"
 +"</div></div>  <div id ='textLogo'>.</div></div>" 
+"</div>";

document.body.appendChild(myLogoCon); // apend the divs

document.getElementById("satelite2").addEventListener("click",(event)=>{
satelite2(event);

});

function satelite2(event) {
	let e = event.target;
	if (document.getElementById("myLogoContainer").className == "goLeft" ) {
      document.getElementById('myLogoContainer').className = 'goRight';
	} else{
      document.getElementById('myLogoContainer').className = 'goLeft';
      
	}

console.log('por fin ');
} // end of function


} // logo creation function

function textAnimation (){	
	let i = 0;
	let s = 0;
	let stop = 0;
let timerAnimation = setInterval( ()=>{ 		
		// console.log("this is I " + i);
		document.getElementById("textLogo").innerHTML = arrayText[s][i];
		i++;

		if (i >= arrayText[s].length ) {
			s++;
			// console.log('this the s' + s);
			i = 0;		 
		    stop ++;
		}

		if (s >= arrayText.length) {
				s =  0 ;
			}
		console.log(stop);	

	if (stop == arrayText.length) {
		console.log("stoped");
		clearInterval(timerAnimation);
	}	
	 }, 3000);

}

myLogoCreation();
textAnimation();

