def reverser(str, &prc)
prc.call(str.reverse)
end
def word_changer(str, &prc)
new_word = [] 
str.split(" ").each {|word| new_word << prc.call(word)}
new_word.join(" ")

end

def greater_proc_value(m, prc1, prc2)
if prc1.call(m) > prc2.call(m)
    return prc1.call(m)
else
    return prc2.call(m)
end

end

def and_selector(arr, prc1, prc2)
    new_arr = []
arr.each do |value|
if prc1.call(value) && prc2.call(value)
new_arr << value
end
end
new_arr
end

def alternating_mapper(arr, prc1, prc2)
    arr.map.with_index do |value,idx|
        if idx.even?
            prc1.call(value)
        else
            prc2.call(value)
        end

    end

end