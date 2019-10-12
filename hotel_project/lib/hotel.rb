require_relative "room"

class Hotel
  def initialize(name, capacities)
    @name = name
    @rooms = {}
    capacities.each do |room_name, cap|
        @rooms[room_name] = Room.new(cap)
    end
  end

  def name
    (@name.split(" ").map {|word|word.capitalize}).join(" ")
  end

  def rooms
    @rooms
  end
  def room_exists?(room)
    if rooms.has_key?(room)
       true
    else
      false
    end
  end
  def check_in(person, room)
    if !self.room_exists?(room)
      p "sorry, room does not exist"
    else
      if @rooms[room].add_occupant(person)
      p "checking in successful"
      else
        p "sorry, room is full"
    end
      
    end

  end

def has_vacancy?
  @rooms.each_value do |room|
    if room.available_space != 0 
      return true
    else 
      return false
    end
  end
end

def list_rooms
@rooms.each do |name, room|
print "#{name}.*#{room.available_space}\n"
end

end

end
