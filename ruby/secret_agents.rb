# ENCRYPT 

# take string 
# change each letter to one letter forward
# Return newly changed string
# Do not change spaces 


	def encrypt(str)
	  # puts str
	  y = 0
	  $z = "a"
	  while y < str.length
	    a = str[y].next.sub("!", " ")
	    if a == "aa"
	    	$z = $z + "a"
	    else $z = $z + a
	    end
	  y += 1
	  r = str.length
	  $w = $z[1..r]
	  end
	  p $w
	end

# encrypt("zed")

# DECRYPT
# Take in a string 
# change each letter back one letter
# return newly changed string 

	def decrypt(str)
		# puts str
		y = 0 
		v = "x"
		while y < str.length 
			w = "abcdefghijklmnopqrstuvwxyz "
			v = str[y]
			b =  w[w.index(v) - 1]
			if b == "z"
				print " "
			elsif b == " "
				print "z"
			else print b
			end 
			y += 1
		end
	end 

# decrypt("a b")
# encrypt("swordfish")
# encrypt("swordfish")
# p $w
# decrypt(encrypt("swordfish"))



# Prompt question of if they would like to decrypt encrypt a password. 
# ask for the password
# run through code
# Print results results to screen
# Exits 

# Ask user if they want to encryp or decrypt 
puts "Would you like to encrypt of decrypt a password?"
response = gets.chomp

# ask for password
puts "Enter password"
password= gets.chomp

if response == "encrypt"
	encrypt(password)
else decrypt(password)
end


