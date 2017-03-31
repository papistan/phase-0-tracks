var colors = ["Blue", "Red", "Green", "Yellow"];

var names = ["Seabiscuit", "Earl", "Minxy", "Ralph"];

//Colors.push("Teal")
//Names.push("Horace")

var horses = {};

for (var i = 0; i < names.length; i++) {
	name = names[i]
	horses[name] = colors[i]
}
console.log(horses)

function Car(make, age, isRunning) {

	this.make = make;
	this.age = age;
	this.isRunning = isRunning;

	this.honk = function() {console.log("HONK!"); };

	console.log("CAR INITIALIZATION COMPLETE");
}

var car1 = new Car("Honda", 5, true)
console.log(car1)
car1.honk()

var car2 = new Car("Ford", 10, false)
console.log(car2)