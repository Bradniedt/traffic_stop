require 'minitest/autorun'
require 'minitest/pride'
require './lib/driver'
require './lib/vehicle'

class VehicleTest < Minitest::Test
  def test_it_exists
    vehicle = Vehicle.new('2001', 'Honda', 'Civic')
    assert_instance_of Vehicle, vehicle
  end

  def test_it_has_a_year
    vehicle = Vehicle.new('2001', 'Honda', 'Civic')
    assert_equal '2001', vehicle.year 
  end
end
