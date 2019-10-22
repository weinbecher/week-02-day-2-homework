class Bus

def initialize(number, destination)
  @number = number
  @destination = destination
  @passengers =[]
end

def drive
  return "Brum brum"
end


def passengers_sum
   return @passengers.count
end


def add_passenger(person)
  @passengers.push(person)
end


def remove_passenger(person)
  @passengers.delete(person)
end


def remove_all_passengers
    @passengers.clear
end

def pick_up_from_bus_stop(bus_stop)
  for person in bus_stop.queue
  @passengers.push(person)
  bus_stop.queue.delete(person)
  end
end


end
