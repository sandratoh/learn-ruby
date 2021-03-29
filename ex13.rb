# first, second, third = ARGV

# Command line arguments while executing file
# puts "Your first variable is: #{first}"
# puts "Your second variable is: #{second}"
# puts "Your third variable is: #{third}"

# Enter individual argument in every line while script is running
# Use $stdin because of gets.chomp has problems with ARGV
argument = ARGV

puts "Your favourite color is: #{argument}"
puts "Your first variable is: #{first = $stdin.gets.chomp}"
puts "Your second variable is: #{second = $stdin.gets.chomp}"
puts "Your third variable is: #{third = $stdin.gets.chomp}"