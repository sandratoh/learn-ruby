module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :model, :year

  @@number_of_vehicles = 0
  
  def self.total_number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles."
  end

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def spray_paint(c)
    self.color = c
    puts "Your new #{color} paint job looks great!"
  end

  def current_speed
    puts "You are currently going at #{@current_speed} km/h."
  end

  def speed_up(number)
    @current_speed  += number
    puts "You push the gas and accelearte #{number} km/h."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} km/h."
  end

  def shut_down
    @current_speed = 0
    puts "Lock your car, and remember your valuables!"
  end

  def self.gas_milage(gallons, miles)
    puts "#{miles/gallons} miles per gallon of gas"
  end

  def to_s
    "is a #{self.year} #{self.color} #{self.model}."
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "This car " + super
  end
end

class MyTruck < Vehicle
  include Towable
  
  NUMBER_OF_DOORS = 2

  def to_s
    "This truck " + super
  end
end

# Test codes
zoom_zoom = MyCar.new(2021, 'blue', 'Mini Cooper')
puts zoom_zoom
# => This car is a 2021 blue Mini Cooper.

truck_truck = MyTruck.new(2018, 'grey','Nissan Titan')
puts truck_truck
# => This truck is a 2018 grey Nissan Titan.

puts Vehicle.total_number_of_vehicles
# => This program has created 2 vehicles.

puts truck_truck.can_tow?(125)
# => true

# Test for method lookup
puts '---MyCar method lookup---'
puts MyCar.ancestors

puts ''

puts '---MyTruck method lookup---'
puts MyTruck.ancestors

puts ''

puts '---Vehicle method lookup---'
puts Vehicle.ancestors

# Tests for previous methods
MyCar.gas_milage(13, 351)

puts zoom_zoom.current_speed
puts zoom_zoom.speed_up(50)
puts zoom_zoom.brake(30)
puts zoom_zoom.current_speed
puts zoom_zoom.brake(20)
puts zoom_zoom.current_speed
puts zoom_zoom.shut_down

puts zoom_zoom.color
zoom_zoom.color = 'yellow'
puts zoom_zoom.color

puts zoom_zoom.year

zoom_zoom.spray_paint('grey')