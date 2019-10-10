# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
   def span
    return nil if self.empty?
    #check integer
    self.each do |num|
            if !(num.instance_of?(Integer))
                raise "arguments must be integer"
            end
    end
    sorted = self.sort
    return sorted[-1] - sorted[0]
end

def average

 return nil if self.empty?

    #check integer
    self.each do |num|
            if !(num.instance_of?(Integer))
                raise "arguments must be integer"
                return nil
            end
    end

 return self.sum / (self.length * 1.0)

end

def median
    #check integer
    return nil if self.empty?
    self.each do |num|
            if !(num.instance_of?(Integer)) 
                raise "arguments must be integer"
            end
    end
    self.sort!
    if self.length % 2 == 0
         middle = self.length / 2
        return (self[middle] + self[middle-1])/2.0
    else
        return self[(self.length/2).floor]
    end 

end
def counts
    hash = Hash.new(0)
    self.each {|k|hash[k] += 1}
    hash
end

def my_count(value)
count =0
self.each {|i| count += 1 if value==i}
count
end

def my_index(value)
self.each_with_index {|v,i| return i if v == value }
return  nil
end

def my_uniq
unique  = []
self.each do |v|
if !(unique.include?(v))
    unique << v 
end
end
unique
end

def my_transpose
transposed = []
row = 0
while row < self.length 
column = 0 
new_arr = []   
while column < self[row].length
new_arr << self[column][row]
column +=1 
end
transposed << new_arr
row += 1    
end
transposed
end

end
