module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class GoodDog
  # Mix modules into class w/ 'include'
  include Speak
end

class HumanBeing
  include Speak
end

# Instantiation w/ .new: create an instance of a class and store in a variable
sparky = GoodDog.new      # Instantiation
sparky.speak("Arf!")      # => Arf!
bob = HumanBeing.new        # Instantiation
bob.speak("Hello!")       # => Hello!

# Method Lookup Chain w/ .ancestors
puts "---GoodDog ancestors---"
puts GoodDog.ancestors
puts ''
puts "---HumanBeing ancestors---"
puts HumanBeing.ancestors