

function longest(phrase_array) {
	var long = "";
 	for (var i = phrase_array.length - 1; i >= 0; i--) {
 		if(phrase_array[i].length > long.length) {
 		long = phrase_array[i]};
 		}; 
 	console.log(long);
};

// var x = ["jayp", "ja", "jay", "j"];
// longest(x)


function share(x,y) {
  xArray = Object.keys(x);
  var value = false
  for(var i = 0; i < xArray.length; i++) {
	    console.log(xArray[i]);
	    if (x[xArray[i]] == y[xArray[i]]) {
		    value = true
	    }
	}
	return value
}


// Define a funtion 'arrayCreator' that takes an integer
function arrayCreator(y) {
x = y
// make a new empty array
var newArray = [];
// For integer number times
	for (var i = 0; i < x; i++) { 
	// a new string of random letters,
	// make number of random letters also be random between 1..10. 
	    var letters = "abcdefghijklmnopqrstuvwxyz";
		var newString = "";
	    randomNumberToTen = Math.floor(Math.random() * 10);
	    for (var j = 0; j < randomNumberToTen; j++) {
	    newString += letters.charAt(Math.floor(Math.random()*letters.length));
	    }
	// Put into the new empty array
	    newArray.push(newString);
	}
	return newArray
}

console.log(arrayCreator(3));

// var blerg = {name: "Steven", age: 54};
// var tamir = {name: "Tamir", age: 54};
// share(blerg, tamir);
