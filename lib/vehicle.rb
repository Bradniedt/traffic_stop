require './lib/driver'
class Vehicle
  attr_reader :year, :make, :model
  attr_accessor :driver
  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @driver = nil
  end

  def add_driver(driver)
    @driver = driver
  end 
end
