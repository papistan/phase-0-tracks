// function creates string as parameter and reverses the string
// for each letter in a string, starting with the last, 
// move the letter into a new string from index 0 and higher



function reverse(str) {

var newString = "";
for (var i = 1; i <= str.length; i++) {
	newString = newString + str[str.length - i];
	}
return newString;
};

var reversed = reverse('jay');

f = 1
if (f > 0) { 
	console.log(reversed);
}
