
# Intake a spy's real name 
# swap the first and last name
# change all vowels to the next vowels
# change all the consonants to next consonant

def changer(real_name)
 downcase_name = real_name.downcase

# def run(downcase_name)
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
		   puts vowels_str.index(letter) + 1
		   new_name[counter] = vowels_str[vowels_str.index(letter) + 1]
	 	elsif downcase_name[counter] == "z"
	 		new_name[counter] = "b"
	 	else 
	 	   letter = downcase_name[counter]
		   new_name[counter] = consonant_str[consonant_str.index(letter) + 1]
	 	end 
		counter += 1
	end
	puts new_name
# enp

 new_name = new_name.split(' ').reverse!
 new_name = "#{new_name[0]} #{new_name[1]}"
 # new_last = new_name[0].split('')
 # new_first = new_name[1].split('')
p new_name
 # first_counter = 0 
 # def flipper(x)
 # 	counter = 0 
 # 	while counter < x.length


end

changer("Felicia Torres")


