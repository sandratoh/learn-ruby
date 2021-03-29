module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :year

  @@number_of_vehicles = 0

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @@number_of_vehicles += 1
  end

  def self.total_number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles."
  end

  def self.gas_milage(gallons, miles)
    puts "#{miles/gallons} miles per gallon of gas"
  end

  def to_s
    "is a #{year} #{color} #{@model}."
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