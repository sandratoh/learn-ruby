# WHILE LOOPS

i = 0
numbers = []

while i < 6
  puts "At the top i is #{i}"
  numbers.push(i)

  i += 1
  puts "Numbers now: ", numbers
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

# remember you can write this 2 other ways?
numbers.each {|num| puts num }

# convert while-loop to a function, replace 6 in the test (i < 6) with variable
def while_loop_function(start)
  i = start
  numbers = []
  loop_limit = 6
  increment = 1

  while i < loop_limit
    puts "At the top i is #{i}"
    numbers.push(i)
  
    i += increment
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
  end
  
  puts "The numbers: "

  numbers.each {|num| puts num }
end
  
  while_loop_function(0)