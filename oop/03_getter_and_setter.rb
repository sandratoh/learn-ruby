class GoodDog
  def initialize(name)
    @name = name
  end                     

  def name                      # getter method, renamed from "get_name"
    @name
  end

  def name=(n)                  # setter method, renamed from "set_name=(name)"
    @name = n
  end

  def speak
    "#{@name} says Arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name
sparky.name = "Spartacus"
puts sparky.name