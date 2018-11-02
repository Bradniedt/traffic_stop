require './lib/driver'
class Vehicle
  attr_reader :year, :make, :model
  attr_accessor :driver, :speed_status
  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @driver = nil
    @speed_status = false
  end

  def add_driver(driver)
    @driver = driver
  end

  def speeding?
    @speed_status
  end

  def speed
    @speed_status = true 
  end
end
