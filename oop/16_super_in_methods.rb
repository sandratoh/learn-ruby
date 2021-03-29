class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  
  # Override method but invoke and extend method from superclass
  def speak
    super + " from GoodDog class"
  end
end

sparky = GoodDog.new
puts sparky.speak        # => "Hello! from GoodDog class"