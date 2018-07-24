class BusStop

  def initialize(name)
    @queue = []
    @name = name
  end

  def queue_size()
    return @queue.size()
  end

  def add_to_queue(person)
    @queue.push(person)
  end

  def queue
    @queue.clone
  end

  def empty_queue
    @queue.clear
  end
end
