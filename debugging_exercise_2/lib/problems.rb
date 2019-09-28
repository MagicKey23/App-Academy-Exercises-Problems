# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require "byebug"
def largest_prime_factor(num)
    accum = 0 
    new_prime = 0 
    (1..num).each do |i|
        if num % i == 0 && prime?(i)
            new_prime = i
        end
         if new_prime > accum
        accum = new_prime
    end
    end
    accum
end

def prime?(num)
(2...num).each do |i|
if num % i == 0
return false
end
end
return true
end
#-----------------------------------


def unique_chars?(str)
count_char = Hash.new(0)
str.each_char do |char|
count_char[char] +=1
end
count_char.each {|k,v| return false if v > 1}
return true
end

#--------------------

def dupe_indices(arr)
position = []
 hash = Hash.new(0)
 dupe_index = Hash.new
 arr.each_with_index do |char,i|
    hash[char] +=1
 end
 hash.each do |k,v|
    if v > 1
   position = dupe_position(k, arr)
    dupe_index[k] = position
    end
 end
dupe_index
end
#----
def dupe_position(k,arr)
dupe = []
arr.each_with_index {|char,i| dupe << i if char == k}
return dupe
end

def ana_array(arr1, arr2)

return false  if arr1.length != arr2.length
arr_indices_count = Hash.new(0) 
combine = arr1 + arr2
combine.each do |i|
arr_indices_count[i] += 1
end
arr_indices_count.each {|k,v| return false if v < 2}

return true
end