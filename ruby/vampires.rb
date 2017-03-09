
p "How many employees will be processed?"
employee_amount = gets.chomp.to_i

i = 0


while i < employee_amount
	
	vampire = "Results inconclusive."
	
	p "What is your name?"
	fname = gets.chomp

	p "How old are you?"
	age = gets.chomp.to_i

	p "What year where you born?"
	birthdate = gets.chomp.to_i

	p "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic = gets.chomp.downcase 

	p "Would you like to enroll in the company’s health insurance?"
	insurance = gets.chomp.downcase


	# age correct
	if age == (2017 - birthdate) || (2016 - birthdate)
		age_correct = true
	else age_correct = false
	end 

	# garlic 
	if garlic == "yes" 
		eat_garlic = true
	else eat_garlic = false
	end

	# insurance 
	if insurance == "yes"
		want_insurance = true
	else want_insurance = false
	end


	if age_correct && (eat_garlic || want_insurance)
		vampire = "Probably isnt a vampire."
	end

	if (age_correct == false) && (eat_garlic == false || want_insurance == false)
		vampire = "Probably a vampire."
	end 

	if (age_correct == false) && (eat_garlic == false) && (want_insurance == false)
		vampire = "Almost certainly a vampire."
	end

	if fname == "Drake Cula" || fname == "Tu Fang"
		vampire = "Definitely a vampire."
	end

	# allergy 
	allergy = "blank"
	until allergy == "done"
		p "Name any allergies, one at a time. Type 'done' when finished."
		allergy = gets.chomp.downcase
		if allergy == "sunshine"
			vampire = "Probably a vampire"
			break
		end
	end

	p vampire

	i += 1
end


puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."


