require 'minitest/autorun'
require 'minitest/pride'
require './lib/driver'

class DriverTest < Minitest::Test
  def test_it_exists
    driver = Driver.new("Bob")
    assert_instance_of Driver, driver 
  end
end
