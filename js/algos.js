

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

var blerg = {name: "Steven", age: 54};
var tamir = {name: "Tamir", age: 54};
share(blerg, tamir);
