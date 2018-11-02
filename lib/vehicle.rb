class Vehicle
  attr_reader :year, :make, :model, :driver
  def initialize(year, make, model, driver = nil)
    @year = year
    @make = make
    @model = model
    @driver = driver
  end
end
