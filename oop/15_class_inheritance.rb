class Animal
  def speak
    "Hello!"
  end
end

# Use < symbol to signal inheritance
class GoodDog < Animal
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  # Override superclass method
  def speak
    "#{self.name} says Arf!"
  end
end

class Cat < Animal
end

sparky = GoodDog.new('Sparky')
paws = Cat.new
puts sparky.speak       # => Sparky says Arf!
puts paws.speak         # => Hello!