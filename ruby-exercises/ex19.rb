def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket. \n"
end

# Pass number as function arguments
puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

# Pass variables as function arguments
puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50

cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# Pass mathemaical expressions as function arguments
puts "We can even do math inside too:"
  cheese_and_crackers(10 + 20, 5 + 6)

# Combine math expressions and variables and pass as function arguments
puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)