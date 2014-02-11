module Vehicle

  attr_accessor :type, :make, :wheels, :transmission

  def initialize make, transmission
    self.make = make
    self.transmission = transmission
    self.type = self.class.to_s
  end

  def info
    puts self.make + ' ' + self.type + ' with ' + self.wheels.to_s + ' wheels and ' + self.transmission.to_s + '-speed transmission'
  end

  def drive
    puts 'Driving...'
  end

end

class Car

  include Vehicle

  def initialize make, transmission
    super
    self.wheels = 4
  end

end

class MotorCycle

  include Vehicle

  def initialize make, transmission
    super
    self.wheels = 2
  end

end

vehicle1 = Car.new('Honda', 6)
vehicle1.info

vehicle2 = MotorCycle.new('Harley-Davidson', 5)
vehicle2.info
