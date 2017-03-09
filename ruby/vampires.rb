begin 

p "How many employees will be processed?"
employee_amount = gets.chomp.to_i

i = 0

while i < employee_amount

	p "What is your name?"
	name = gets.chomp.capitalize

	p "How old are you?"
	age = gets.chomp.to_i

	p "What year where you born?"
	birthdate = gets.chomp.to_i

	p "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic = gets.chomp.capitalize 

	p "Would you like to enroll in the company’s health insurance?"
	insurance = gets.chomp.capitalize


	vampire = “Results inconclusive.”

	# age correct
	if age = (2017 - birthdate) || (2016 - birthdate)
		age_correct = true
	else age_correct = false
	end 

	# garlic 
	if garlic == "YES" 
		eat_garlic = true
	else eat_garlic = false
	end

	# insurance 
	if insurance == "YES"
		want_insurance = true
	else want_insurance = false
	end


	if age_correct && (eat_garlic || want_insurance)
		vampire = “Probably not a vampire.”
	end

	if (age_correct = false) && (eat_garlic = false || want_insurance = false)
		vampire = “Probably a vampire.”
	end 

	if (age_correct = false) && (eat_garlic = false) && (want_insurance = false)
		vampire = “Almost certainly a vampire.”
	end

	if name == (“Drake Cula” || “Tu Fang”)
		vampire = “Definitely a vampire.”
	end

	until allergy == "DONE"
		p "Name any allergies, one at a time. Type 'done' when finished."
		allergy = gets.chomp.capitalize
		if allergy == "SUNSHINE"
			vampire = "Probably a vampire"
			break
		end
	end

	print vampire

	i += 1
end 

abort ("Actually, never mind! What do these questions have to do with anything? Let's all be friends.")


