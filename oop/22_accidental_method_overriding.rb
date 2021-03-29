class Parent
  def say_hi
    p "Hi from Parent."
  end
end

puts Parent.superclass    # => Object
                          ### - meaning methods defined in Object class are available in all classes

=begin
# Normal send method behaviour
class Child < Parent
  def say_hi
    p "Hi from Child."
  end
end

child = Child.new
child.say_hi        # => "Hi from Child."

son = Child.new
son.send :say_hi    # => "Hi from Child."
=end

=begin
# Overriding send method
class Child
  def say_hi
    p "Hi from Child."
  end

  def send
    p "send from Child..."
  end
end

lad = Child.new
# lad.send :say_hi
## => ArgumentError: wrong number of arguments (given 1, expected 0) from <file_name>:<line_number>:in `send'
=end

# Normal instance_of? method behaviour
# c = Child.new
# puts c.instance_of? Child     # => true
# puts c.instance_of? Parent    # => false


# Overriding instance_of? method
class Child
  def instance_of?
    p "I am a fake instance"
  end
end

heir = Child.new
puts heir.instance_of? Child
## => ArgumentError: wrong number of arguments (given 1, expected 0) from <file_name>:<line_number>:in `instance_of?'