class Game 

attr_reader :hint_word, :guess_counter, :guess_word_arr, :secret_word, :length

# -----------------------------------
# Upon initialize, make: 
# - Guess counter starts at 0
# - create an array to hold guess words guess_word_arr = []
# - Prompt “User 1: Enter secret word.”
# - Save secret word as secret_word string
# - create a instance variable hint_word , set as a string “_” times secret_word lenght
	def initialize(pass_in)
		@secret_word = pass_in
		@guess_counter = 0
		@guess_word_arr = [9]
		@length = @secret_word.length
		@hint_word = ("_ " * @length)
	end

	# end
# # ------------------------
# Create method called arr_check, intakes guess_word
#   IF guess_word is in guess_word_arr, 
# 	Print “You’ve guessed that already, ding-dong!”
# 	 RETURN true
#   Else 
#       save guess_word in guess_word_arr
#       RETURN false
	def arr_check(guess_word)
		if @guess_word_arr.include?(guess_word) == true
			puts  "You’ve guessed that already, you ding-dong!"
			true
		else 
			@guess_word_arr << guess_word
			false
		end
	end
# ------------------------------
# Create method called word_letter_check, intake guess_word
#   IF guess_word is one letter
#   	create index_var = 0
#      save as index_var the return of the index of guess_word in secret_word
# 		IF index_var is an integer or not nil 
# 			change hint_word to hint_word with guess_word at index_var
# 		ELSE 
# 			print "Letter not found"
# 			break
#      true
#    ELSE 
#      false
# END
	def hint_check(guess_word)
		if guess_word.length == 1
			index_var = (@secret_word.index(guess_word))
			if index_var == nil
				puts "Letter not found"
			elsif index_var == 0
				@hint_word.slice!(index_var) 
				@hint_word = @hint_word.insert((index_var), guess_word)
				puts "You're close '#{@hint_word}'"
			else 
				@hint_word.slice!(index_var)
				@hint_word = @hint_word.insert((index_var * 2), guess_word)
				puts "You're close '#{@hint_word}'"
			end 
		end
		@guess_counter += 1
	end   

end

# ---------------------------------
# Driver Code

# While guess counter < secret word length

# Prompt “User 2: Guess the FULL SECRET WORD or enter ONE LETTER you want to try. You only have #{secret.word length} tries. Here’s a hint: #{hint_word}”
#   Save guess as guess_word

#  IF guess_word equal to secret_word
# 	print “Holy cow…you guessed it!”
# 	break
# 	end program
#  ELSE
# 	run arr_check
# 	IF arr_check returns true
# 		break
#   ELSE 
# 		run word_letter_check
# 		if true 
# 		   break back to while loop
# 		end
# end 
#print out "Too many guesses! You lose"
# end 

puts "User 1: Enter secret word."
secret_word = gets.chomp

game = Game.new(secret_word)


while game.guess_counter < game.length
	puts "User 2: Guess the FULL SECRET WORD or enter ONE LETTER you want to try. You only have #{game.length} tries. Here’s a hint: #{game.hint_word}"
	guess_word = gets.chomp
	if guess_word == game.secret_word
		puts "Winner, winner, chicken dinner!"
		break
	elsif game.arr_check(guess_word) == true
		
	else game.hint_check(guess_word)
		if game.guess_counter >= game.secret_word.length
			puts "Too many guesses! You lose"
		end 
	end 
end 
