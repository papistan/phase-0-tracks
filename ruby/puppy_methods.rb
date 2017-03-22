class Puppy

	def initialize
		puts "initialize new puppy instance..."
	end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
  	num.times{puts "Woof!"}
  end

  def rollover
  	puts "rolls over"
  end

  def dog_years(num)
  	num * 7
  end

  def lick_face(owner)
  	puts "Licks #{owner}'s face"
  end

end

class Kitten

	def initialize
	puts "New kitten coming...."
	end

	def follow_yarn(yard)
	puts "Runs #{yard} yards"
	end 

	def climb
	furniture = ["table", "chair", "person", "bookcase"]
	puts "climbs up #{furniture.sample}"
	end
end

kittenz_den = []

50.times {kittenz_den << Kitten.new}

kittenz_den.each_with_index do |kitten, i| 
	puts "This is kitten number #{i + 1}"
	kitten.follow_yarn(rand(1..100))
	kitten.climb

end

# puppy = Puppy.new

# p puppy.fetch("ball")

# puppy.speak(9)

# puppy.rollover

# p puppy.dog_years(10)

# puppy.lick_face("Joanna")

