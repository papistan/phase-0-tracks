


# ENCRYPT 

# take string 
# change each letter to one letter forward
# Return newly changed string
# Do not change spaces 

def encrypt(str)
  puts str
  y = 0
  while y < str.length
    a = str[y].next.sub("!", " ")
  print a
  y += 1
  end
end

encrypt("a d")


# DECRYPT
# Take in a string 
# change each letter back one letter
# return newly changed string 

def decrypt(str)
	puts str
	y = 0 
	a = "x"
	while y < str.length 
	w = "abcdefghijklmnopqrstuvwxyz "
	a = str[y]
	b =  w[w.index(a) - 1]
	if b == "z"
		print " "
	elsif b == " "
		print "z"
	else print b
	end 
	y += 1
	end
end 

decrypt("a b")
 