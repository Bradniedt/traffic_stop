class Vehicle
  attr_reader :year 
  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
  end
end
