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

  def test_it_has_a_make
    vehicle = Vehicle.new('2001', 'Honda', 'Civic')
    assert_equal 'Honda', vehicle.make
  end

  def test_it_has_a_year
    vehicle = Vehicle.new('2001', 'Honda', 'Civic')
    assert_equal 'Civic', vehicle.model
  end

  def test_it_has_no_driver_by_default
    vehicle = Vehicle.new('2001', 'Honda', 'Civic')
    assert_nil vehicle.driver
  end

  def test_it_can_have_a_driver
    driver = Driver.new('Bob')
    vehicle = Vehicle.new('2001', 'Honda', 'Civic')
    vehicle.add_driver(driver)
    assert_equal driver, vehicle.driver
  end

  def test_its_speed_status_is_false_by_default
    vehicle = Vehicle.new('2001', 'Honda', 'Civic')
    refute vehicle.speed_status
  end

  def test_if_it_can_check_if_it_is_speeding
    vehicle = Vehicle.new('2001', 'Honda', 'Civic')
    refute vehicle.speeding?
  end

  def test_it_can_speed
    vehicle = Vehicle.new('2001', 'Honda', 'Civic')
    vehicle.speed
    assert vehicle.speeding? 
  end
end
