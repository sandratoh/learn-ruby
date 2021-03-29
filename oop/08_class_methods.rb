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

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  # Class method definition
  def self.what_am_i
    "I'm a GoodDog Class!"
  end
end

puts GoodDog.what_am_i    # => I'm a GoodDog Class!

# Class methods
#  => Don't need to deal with states
#  => Can call method without having to instantiate any objects
