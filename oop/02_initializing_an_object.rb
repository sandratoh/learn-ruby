class GoodDog
  def initialize(name)          # 'initialize' method = a constructor that gets triggered with every new object creation
    @name = name                # @ symbol identifies 'instance variables'
  end                           #     =>  a variable that exists as long as the object instance exists
                                #     =>  keep tracks of info about the state of an object
  def speak
    "#{@name} says Arf!"        # using instance variables in methods
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak

fido = GoodDog.new("Fido")
puts fido.speak
