# Interior 

# Psuedocode
# Indentify client and save their 
# name
# age
# numnber of children
# decor theme
# money is no object?
# favorite colors
# special needs?

client_1 = {
	name: "",
	age: 0,
	children: 0,
	decor: "",
	money: true,
	colors: "",
	requests: "",
}





puts "Enter client's first and last name as one word: first_last"
client_1[:name] = gets.chomp

puts "How old are they?"
client_1[:age] = gets.chomp.to_i

puts "How many children?"
client_1[:children] = gets.chomp.to_i

puts "Favorite decor theme?"
client_1[:decor] = gets.chomp

puts "Money is no object? yes/no"
money = gets.chomp
if money == "no"
	client_1[:money] = false
end

puts "Favorite colors?"
client_1[:colors] = gets.chomp

puts "Any specials requests?"
client_1[:requests] = gets.chomp

print client_1
print " \n"
puts "Updates? enter below: name, age, children, decor, money, colors, requests or none"
x = gets.chomp

if x == "none"
	print client_1
else puts "Enter updated value below"
new_value = gets.chomp
	if x == "name" || x == "decor" || x == "colors" || x == "requests"
	client_1[x.to_sym] = new_value
	elsif x == "money"
		if new_value == "no"
		client_1[:money] = false
		elsif client_1[:money] == true
		end
	else client_1[x.to_sym] = new_value.to_i
	end
	print client_1
end

