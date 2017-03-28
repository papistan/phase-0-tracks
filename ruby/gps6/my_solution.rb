
# Virus Predictor

# I worked on this challenge [by myself, with: Carlos].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
## require - pulls from rubygems.org libraries versus reguire_relative that 
# seeks out from selected file within the same directory. 
#
require_relative 'state_data'




class VirusPredictor

# setting up data for each object that is instantiated. 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# returns strings with data from both methods
  def virus_effects
    number_of_deaths = predicted_deaths
    speed = speed_of_spread

    print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
  
  end

  private
# calculate and return number of deaths from outbreak for a given state conditional on population density
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
       (@population * 0.4).floor
    elsif @population_density >= 150
      (@population * 0.3).floor
    elsif @population_density >= 100
      (@population * 0.2).floor
    elsif @population_density >= 50
      (@population * 0.1).floor
    else
     (@population * 0.05).floor
    end
  end

 # returns and prints calculated speed of spread in months based on population density conditionally
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |key, value| 
  state = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])
  state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
  # => allow strings as keys vs key: where you could not have a string as a key. So that's why => was used so that states could be printed within the output string

# What does require_relative do? How is it different from require?
  # require - pulls from rubygems.org libraries versus reguire_relative that seeks out from selected file within the same directory. 

# What are some ways to iterate through a hash?
  # I can't think of or find online another method other than .each 

# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # they seemed very repetitive, so like they should be reduced. 

# What concept did you most solidify in this challenge?
  # probably the arguments. Since we were able to remove them, I was able to think more clearly about their relationship with instance variables and access



















