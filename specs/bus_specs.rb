require('minitest/autorun')
require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')


class BusTest < MiniTest::Test

  def setup()
    @bus = Bus.new(22, "Ocean Terminal")
    @passenger = Person.new("Robert", 36)
    @bus_stop = BusStop.new("Tesco")

  end

  def test_drive()
    assert_equal("Brum brum", @bus.drive())
  end

  def test_how_many_passengers()
    assert_equal(0, @bus.count_passengers())
  end

  def test_add_passenger_to_the_bus()
    @bus.pick_up(@passenger)
    assert_equal(1, @bus.count_passengers())
  end

  def test_drop_passenger_off_the_bus()
    @bus.pick_up(@passenger)
    @bus.drop_off(@passenger)
    assert_equal(0, @bus.count_passengers())
  end

  def test_empty_bus()
    @bus.pick_up(@passenger)
    @bus.empty_bus()
    assert_equal(0, @bus.count_passengers())
  end

  def test_pick_up_from_stop()
    @bus_stop.add_to_queue(@person)
    @bus.pick_up_from_stop(@bus_stop)
    assert_equal(0, @bus_stop.queue_size())
    assert_equal(1, @bus.count_passengers())
  end
end
