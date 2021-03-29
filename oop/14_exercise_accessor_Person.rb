class Person
  # attr_reader :name     # => Doesn't work because this only creates a getter method
  
  # attr_writer :name     # => This creates a setter and pass the code below, but won't allow getter access
  attr_accessor :name     # => This creates both getter and setter

  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"