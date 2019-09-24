def average (n1,n2)
    (n1+n2)/2.0
end

def average_array(arr)
    arr.reduce(:+)/arr.length.to_f
end

def repeat(str,n)
    str*n

end    

def yell(str)
    str.upcase + "!"

end

def alternating_case(str)
parts = str.split(" ")
i = 0 
while i < parts.length-1
    parts[i].upcase!
    parts[i+1].downcase!
    i += 2
end   
parts.join(" ")
end