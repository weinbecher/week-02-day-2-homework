require('minitest/autorun')
require('minitest/rg')
require_relative("../bus.rb")
require_relative("../person.rb")
require_relative("../bus_stop.rb")


class BusTest < MiniTest::Test

  def setup
    @bus_1 = Bus.new(22, "Ocean Terminal")
    @person_1 = Person.new("Daniel", 70)
    @bus_stop_1 = BusStop.new("Codeclan")
    @bus_stop_1.add_person_to_queue(@person_1)
  end


  def test_drive
    assert_equal("Brum brum", @bus_1.drive)
  end


  def test_passengers_sum
    assert_equal(0, @bus_1.passengers_sum)
  end


  def test_add_passenger
    @bus_1.add_passenger(@person_1)
    assert_equal(1, @bus_1.passengers_sum)
  end

  def test_remove_passenger
    @bus_1.add_passenger(@person_1)
    @bus_1.remove_passenger(@person_1)
    assert_equal(0, @bus_1.passengers_sum)
  end

  def test_remove_all_passengers
    @bus_1.add_passenger(@person_1)
    @bus_1.add_passenger(@person_1)
    @bus_1.add_passenger(@person_1)
    @bus_1.remove_all_passengers
    assert_equal(0, @bus_1.passengers_sum)
  end

  def test_pick_up_from_bus_stop
    @bus_1.pick_up_from_bus_stop(@bus_stop_1)
    assert_equal(1, @bus_1.passengers_sum )
    assert_equal(0, @bus_stop_1.queue.length)
  end


end
