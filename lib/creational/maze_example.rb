class MapSite
  def enter
    false
  end
end

class Room < MapSite
  NORTH = 0
  EAST = 1
  SOUTH = 2
  WEST = 3
  def initialize(room_number)
    @room_number = room_number
    @sides = [0,0,0,0]
  end
  def get_side(direction)
    #...
  end
  def set_side(direction)
    #...
  end
  def enter
    #...
  end
end

def Wall < MapSite
end

def Door < MapSite
  def initialize(room1, room2)
    @room1 = room1
    @room2 = room2
    @open = true
  end
  def enter
    @open
  end
  def other_side_from(room)
    #...
  end
end

class Maze
  def add_room(room)
    #...
  end
end

class MazeGame
  def self.create_maze
    maze = Maze.new
    r1 = Room.new(1)
    r2 = Room.new(2)
    door = Door.new(r1, r2)
    maze.add_room(r1)
    maze.add_room(r2)
  
    r1.set_side(:north, Wall.new)
    r1.set_side(:east, door)
    r1.set_side(:south, Wall.new)
    r1.set_side(:west, Wall.new)
  
    r2.set_side(:north, Wall.new)
    r2.set_side(:east, Wall.new)
    r2.set_side(:south, Wall.new)
    r2.set_side(:west, door)
  
    maze
  end
end

