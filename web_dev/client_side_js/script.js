

var background1 = document.getElementById('button1'); 
var background2 = document.getElementById('button2');
var background3 = document.getElementById('button3');
var body = document.getElementById('body');

function changeBackgroundRed() {
	body.style.background = "red"; 
}

function changeBackgroundBlue() {
	body.style.background = 'blue'; 
}

function changeBackgroundBlack() {
	body.style.background = 'black'; 
}

background1.addEventListener("click", changeBackgroundRed);
background2.addEventListener("click", changeBackgroundBlue);
background3.addEventListener("click", changeBackgroundBlack);