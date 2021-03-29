
module Mammal
  # Module Usecase #1: Namespacing
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end

  # Module Usecase #2: Container for Methods
  def self.some_out_of_place_method(num)
    num ** 2
  end
end

# Call classes in a module by appending class name to module name with two colons (::)
buddy = Mammal::Dog.new
kitty = Mammal::Cat.new
buddy.speak('Arf!')       # => 'Arf!'
kitty.say_name('kitty')   # => 'kitty'

# Call module method
value = Mammal.some_out_of_place_method(4)    # preferred way of calling module method
puts value    # => 16

value = Mammal::some_out_of_place_method(4)   # alt way of calling module method
puts value    # => 16