class MyCar
  # Accesor methods
  attr_accessor :color
  attr_reader :year

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
  end
  
  # Use self. prefix with setter method
  def spray_paint(c)
    self.color = c
    puts "Your new #{color} paint job looks great!"
  end

  # Methods to track speed detail
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
end

zoom_zoom= MyCar.new(2021, 'blue', 'Mini Cooper')

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
