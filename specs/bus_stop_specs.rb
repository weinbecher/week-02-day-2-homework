require('minitest/autorun')
require('minitest/rg')
require_relative("../bus.rb")
require_relative("../person.rb")
require_relative("../bus_stop.rb")

class BusStopTest < MiniTest::Test

  def setup
  @bus_stop_1 = BusStop.new("Codeclan")
  @person_1 = Person.new("Daniel", 70)
  end

  def test_add_person_to_queue
  @bus_stop_1.add_person_to_queue(@person_1)
  assert_equal(1, @bus_stop_1.queue.length)
  end

  # Now imagine that our bus is travelling along the route. For now we will imagine that there is only one bus that goes on this route, so every passenger waiting at each stop wants to get on the bus.


  #
  # - Try writing a method that the bus would call, to collect all of the passengers from a stop. This might look like `bus.pick_up_from_stop(stop1)`. This should take all of the passengers waiting in line at the stop, and put them inside of the bus. So the stop will now have nobody in the queue, and the number of people on the bus will increase by however many people the stop had at it.
  #


end
