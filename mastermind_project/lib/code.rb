class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }
  attr_reader :pegs

  def self.valid_pegs?(arr)
  
    arr.each {|char| return false if !POSSIBLE_PEGS.has_key?(char.upcase)}
    true
  end

  def self.random(length)
    random_pegs = [] 
    length.times {random_pegs << POSSIBLE_PEGS.keys.sample}
    Code.new(random_pegs)
  end

  def self.from_string(pegs)
    Code.new(pegs.split(""))
  end

  def initialize(arr)
    if !Code.valid_pegs?(arr)
      raise "error"
    else
      @pegs = []
      arr.each {|char|@pegs << char.upcase}
    end
  end
  def [](index)
    @pegs[index]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(guess)
     i = 0
     count = 0 
      while i < self.length 
        if self[i] == guess[i]
          count += 1
        end
        i += 1
      end
      count
  end
  
  def num_near_matches(guess)
    # RGBG # RRYY
    i = 0 
    count = 0
    while i < guess.length
      if self.pegs.include?(guess[i]) && guess[i] != self[i]
        count +=1 
      end
      i += 1
    end
    count
  end

  def ==(guess)
    self.pegs == guess.pegs
  end

  

end      
