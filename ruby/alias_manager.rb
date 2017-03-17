
# Intake a spy's real name 
# swap the first and last name
# change all vowels to the next vowels
# change all the consonants to next consonant

def changer(real_name)
 downcase_name = real_name.downcase
	counter = 0
	new_name = ""
	vowels_str = "aeiou"
	consonant_str = "bcdfghjklmnpqrstvwxyz"

	while counter < downcase_name.length
	letter = ""
	
		if downcase_name[counter] == " "
		   new_name[counter] = " "
		elsif downcase_name[counter] == "u"
		   new_name[counter] = "a"
		elsif vowels_str.include?(downcase_name[counter])
		   letter = downcase_name[counter]
		   # puts vowels_str.index(letter) + 1
		   new_name[counter] = vowels_str[vowels_str.index(letter) + 1]
	 	elsif downcase_name[counter] == "z"
	 		new_name[counter] = "b"
	 	else 
	 	   letter = downcase_name[counter]
		   new_name[counter] = consonant_str[consonant_str.index(letter) + 1]
	 	end 
		counter += 1
	end
	# puts new_name
# enp

 new_name = new_name.split(' ').reverse!
 new_name = "#{new_name[0]} #{new_name[1]}"

# p new_name

end

real_name = "empty"

counter = 0
repeat_counter = "open"
real_namez = []
alias_namez = []
sub_counter = 0

Until repeat_counter = "closed"
	puts "Type in your real name to get your alias name. When done type 'quit'"
	real_name = gets.chomp

# THIS CHUNK IS CAUSING ME PROBLEMS BUT RAN OUT OF TIME
	if real_name == "quit"
	 alias_namez.each {|i| 
	 	print real_namez[sub_counter] " is also " alias_namez[sub_counter]
	 	sub_counter +=1
	 }
	 repeat_counter = "closed"
# THIS CHUNK IS CAUSING ME PROBLEMS BUT RAN OUT OF TIME

	else 
	puts "Type in your real name to get your alias name. When done type 'quit'"
	real_name = gets.chomp
	real_namez[counter] = real_name
	puts "Your new alias is #{changer(real_name)}"
	alias_namez[counter] = changer(real_name)
	end
end


