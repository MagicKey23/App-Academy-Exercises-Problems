def my_map(arr, &proc)
new_arr = []
arr.each {|num| new_arr << proc.call(num)}
new_arr
end

def my_select(arr, &prc)
new_arr = []
arr.each do |num|
if prc.call(num)
new_arr << num
end

end
new_arr
end

def my_count(arr, &prc)
count = 0 
arr.each do |value|
if value == prc.call(value) || prc.call(value)
    count +=1
end
end
count
end


def my_any?(arr, &prc)
    arr.each do |value|
        if(prc.call(value))
            return true
        end

    end
    false
end

def my_all?(arr, &prc)
arr.each do |value|
if !(prc.call(value))
return false
end
end
true
end

def my_none?(arr, &prc)
    
    arr.each do |value|
        if(prc.call(value))
            return false
        end

    end
    true

end