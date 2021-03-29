=begin
The way that Method Access Control is implemented in Ruby is through the use of the 
## public, 
## private, and 
## protected access modifiers
=end

class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a
  end

  def public_disclosure
    "#{self.name} in human years is #{human_years}"
    # can't use self.human_years because it's private (same as sparky.human_years)
    # there must use human_years instead
  end

  private

  def human_years
    age * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
puts sparky.public_disclosure    # => Sparky in human years is 28
# sparky.human_years             # => gives NoMethodError because private method

class Animal
  def a_public_method
    "Will this work? " + self.a_protected_method
  end
  
  protected
  # protected methods:
  #     => accessible inside the class (like public)
  #     => inaccessible outside the class (like private)

  def a_protected_method
    "Yes, I'm protected!"
  end
end

fido = Animal.new
puts fido.a_public_method
# => Will this work? Yes, I'm protected!


fido.a_protected_method
# => NoMethodError: protected method `a_protected_method' called for #<Animal:0x0000000001752258>
