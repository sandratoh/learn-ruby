module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def swim
    "I'm swimming."
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

class GoodDog < Animal
  include Swimmable
  include Climbable
end

puts "---GoodDog method lookup---"
puts GoodDog.ancestors

=begin
# Output:
---GoodDog method lookup---
GoodDog
Climbable
Swimmable
Animal
Walkable
Object
Kernel
BasicObject
=end

puts ''

puts "---Animal method lookup---"
puts Animal.ancestors

=begin
# Output:
---Animal method lookup---
Animal
Walkable
Object
Kernel
BasicObject
=end

puts '';

fido = Animal.new
puts fido.speak       # => I'm an animal, and I speak!
puts fido.walk        # => I'm walking
puts fido.swim        # => NoMethodError: undefined method `swim' for #<Animal:0x00000000009e66c8>

# Summary
#   => Order of modules - last module included will be consulted first
#   => Modules included in the superclass will also be on the method lookup path