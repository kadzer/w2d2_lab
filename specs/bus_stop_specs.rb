require('minitest/autorun')
require_relative('../bus_stop')
require_relative('../person')

class BusStopTest < MiniTest::Test

  def setup()
    @bus_stop = BusStop.new ("Tesco")
    @person = Person.new("Robert", 36)
  end

  def test_add_person_to_queue()
    @bus_stop.add_to_queue(@person)
    assert_equal(1, @bus_stop.queue_size())
  end


end
