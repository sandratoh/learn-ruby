class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

# Using super with no argument
class GoodDog < Animal
  def initialize(color)
    # super automatically forwards arg to method in superclass
    super
    @color = color
  end
end

bruno = GoodDog.new('brown')    # => #<GoodDog:0x00000000019196e0 @name="brown", @color="brown">

# Using super with specific argument
class BadDog < Animal
  def initialize(age, name)
    super(name)
    @age = age
  end
end

BadDog.new(2, "bear")     # => #<BadDog:0x000000000219c538 @name="bear", @age=2> 

# Using super with parentheses - super()
#     => calls the method in supreclass with no argument at all
#     => use this if you have a method in superclass that takes no argument
#     => throws ArgumentError exception if forget to use parentheses
class BigAnimal
  def initialize
  end
end

# Calling super()
class Bear < BigAnimal
  def initialize(color)
    super()
    @color = color
  end
end

bear = Bear.new('black')    # => #<Bear:0x00000000019cc240 @color="black"> 