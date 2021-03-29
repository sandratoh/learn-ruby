class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h ,w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w)
    self.name   = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self
    # self inside an instance method:
    #   => self will reference the instance (object) that called the method
  end

  puts self
  # irb REPL: input 'GoodDog, output: 'GoodDog'

  # self outside an instance method:
  #     => self will reference the class and can be used in class methods
  #     => 'def self.a_method' is equivalent to 'def GoodDog.a_method'
end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
p sparky.what_is_self
# => #<GoodDog:0x0000000000ac87a8 @name="Sparky", @height="12 inches", @weight="10 lbs">

# Example: using self with class method
class MyAwesomeClass
  def self.this_is_a_class_method
  end
end