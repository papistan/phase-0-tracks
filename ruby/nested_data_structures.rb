lunch_bags = {
	monday: {
		sandwhich: ["meat", "bread", "mayo"],
		drink: "milk",
		side: ["chips", "apple"]
	},
	tuesday: {
		pizza: ["cheese", "sauce", "ham"],
		drink: "milk",
		side: "orange"

	},
	friday: {
		noodles: ["noodles", "tofu", "carrots"],
		drink: "beer"
	}
}

p lunch_bags[:monday][:side][0]
p lunch_bags[:friday][:noodles][1]