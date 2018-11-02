require './lib/driver'
class Vehicle
  attr_reader :year, :make, :model, :speed_status
  attr_accessor :driver
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

end
