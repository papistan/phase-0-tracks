

class Santa

	attr_reader :age, :ethnicity
	attr_accessor :gender

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
		puts "Age: #{@age}"
		puts "Ranking #{@reindeer_ranking}"
		puts "______________"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(take_name)
		@reindeer_ranking.delete_if {|x| x == take_name}
		@reindeer_ranking << take_name
	end


end

redhat = Santa.new("male", "white")
bluehat = Santa.new("female", "black")

redhat.about
bluehat.about

redhat.get_mad_at("Blitzen")
bluehat.get_mad_at("Rudolph")

redhat.celebrate_birthday

redhat.gender=("alien")


puts redhat.age
puts bluehat.ethnicity

redhat.about
bluehat.about


