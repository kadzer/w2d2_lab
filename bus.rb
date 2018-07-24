class Bus

def initialize(route, destination)
    @passengers = []
    @route = route
    @destination = destination
end

  def drive()
    return ("Brum brum")
  end

  def count_passengers()
    return (@passengers.count())
  end

  def pick_up(passenger)
    @passengers.push(passenger)
  end

  def drop_off(passenger)
    @passengers.delete(passenger)
  end

  def empty_bus()
    @passengers.clear
  end

  def pick_up_from_stop(bus_stop)
    pick_up(bus_stop.queue)
    bus_stop.empty_queue
  end
end
