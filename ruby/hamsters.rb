puts "What is your name?"
name = gets.chomp

puts "On a scale of 1 to 10, with 10 loudest, is there a volume level that you prefer?"
prefered_volume = gets.chomp.to_i

puts "What is your fur color?"
fur_color = gets.chomp

puts "Are you a good candidate for adoption? yes/no"
adoptable = gets.chomp

puts "How old are you?"
age = gets.chomp

if age == ""
	age = nil
else age = age.to_i
end

if adoptable == "yes"
   adopt = "is"
else adopt = "is not"
end

puts "Hamster's name is #{name}"
puts "Its preferred volume level is #{prefered_volume}"
puts "Its fur is #{fur_color}"
puts "It #{adopt} ready for adoption"
puts "It is #{age} years old."