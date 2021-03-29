class GoodDog
  # Ruby's built-in way to create getter/setter methods taking in symbols as arguments
  attr_accessor :name

  # attr_reader = getter method only
  # attr_writer = setter method only

  def initialize(name)
    @name = name
  end                     

  def speak
    # Calling the instance method (from getter) instead of the instance variable (@)
    "#{name} says Arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name
sparky.name = "Spartacus"
puts sparky.name