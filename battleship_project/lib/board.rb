class Board
    attr_reader :size 

  def initialize(n)
    @grid = Array.new(n) {Array.new(n, :N)}
    @size = n * n
  end
  
  def self.print_grid(grid)
   grid.each {|row| puts row.join(" ")}
  end

  def [](arr)
    if arr.length < 2
        raise "Indices should be in form [row,column]"
    end
    @grid[arr[0]][arr[1]]
  end

  def []=(pos, val)
    if pos.length < 2
        raise "Indices should be in form [row, column]"
    end
    @grid[pos[0]][pos[1]] = val
  end
   def num_ships 
    count = 0
    @grid.each {|row| count+=row.count(:S)}
    count
   end

   def attack(pos)
     if self[pos] == :S
      self[pos] = :H
      p "you sunk my battleship!"
      true
     else
       self[pos] = :X
       false
     end

   end
    def place_random_ships
      total_ships = @size * 0.25
      while num_ships < total_ships 
        rand_column = rand(0...@grid.length)
        rand_row = rand(0...@grid.length)
        pos = [rand_row,rand_column]
        self[pos] = :S
      end
    end
    def hidden_ships_grid
      @grid.map do |row|
        row.map do |column|
          if column == :S
            :N
          else
            column
          end
        end
      end
    end

    def cheat
      Board.print_grid(@grid)
    end

    def print
      Board.print_grid(hidden_ships_grid)
    end

end
