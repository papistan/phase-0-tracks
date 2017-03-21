

class Santa

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!" 
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def about
		puts "Ethnicity: #{@ethnicity}"
		puts "Gender: #{@gender}"
	end

end

redhat = []

example_genders = ["male", "female", "trans", "non", "furry"]

example_ethnicity = ["mestizo", "white", "black", "what", "human"]

redhat << Santa.new(example_genders[4], example_ethnicity[1])

redhat << Santa.new(example_genders[3], example_ethnicity[2])

redhat[0].about

redhat[1].about
