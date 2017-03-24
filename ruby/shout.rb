

# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(new_words)
#     new_words + "!!!" + "<B"
#   end

# end

# p Shout.yelling_happily("Hello")

# p Shout.yell_angrily("Hello")


module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(new_words)
    new_words + "!!!" + "<B"
  end

end

class Drunk
	include Shout

end

class Old_lady
	include Shout
end

granny = Old_lady.new
puts granny.yelling_happily("I won the lotto")

wayne = Drunk.new
puts wayne.yell_angrily("Where's pizza?")