class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age  = a * DOG_YEARS
  end

  # Custom to_s method to override default
  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end
end

sparky = GoodDog.new("Sparky", 4)

puts sparky     # => Before custom to_s method: #<GoodDog:0x000000000186e218>
                # => After custom to_s method:  This dog's name is Sparky and it is 28 in dog years.

# What is happening?
#   => 'puts' method automatically calls to_s on its argument (the 'sparky' object)

#   => to_s by default returns
#   => 1. the name of the object's class, and 
#   => 2. an encoding of the object id

#   => to_s is also automatically called in string interpolation

p sparky      # => #<GoodDog:0x0000000002622058 @name="Sparky", @age=28>
              # => calls inspect method
              # => output same as 'puts sparky.inspect'