class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
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

  # Add class method to calculate gas mileage
  def self.gas_milage(gallons, miles)
    puts "#{miles/gallons} miles per gallon of gas"
  end

  # Custom to_s method
  def to_s
    "This car is a #{year} #{color} #{@model}."
  end
end

MyCar.gas_milage(13, 351)     # => 27 miles per gallon of gas

zoom_zoom = MyCar.new(2021, 'blue', 'Mini Cooper')
puts zoom_zoom      # => This car is a 2021 blue Mini Cooper.
