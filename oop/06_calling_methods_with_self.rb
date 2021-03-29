class GoodDog
  attr_accessor :name, :height, :weight
  
  def initialize(n, h ,w)
    @name = n
    @height = h
    @weight = w
  end                     
  
  def speak
    "#{name} says Arf!"
  end

  # This doesn't work:
  #   => replaced instance variable with methods (removed @), but...
  #   => created new local variable instead of calling setter methods
  # def change_info(n, h, w)
  #   name = n
  #   height = h
  #   weight = w
  # end

  # This will work:
  #   => 'self' keyword lets Ruby know we're calling a method
  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  # Optional: adopt syntax for getter method to keep codes consistent
  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  # Can use self. prefix with any instance method, not restricted to accesor
  def some_method
    self.info
  end
end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
puts sparky.info
# => Sparky weighs 10 lbs and is 12 inches tall.

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info
# => Spartacus weighs 45 lbs and is 24 inches tall.

puts ''
puts sparky.some_method
# => Spartacus weighs 45 lbs and is 24 inches tall.