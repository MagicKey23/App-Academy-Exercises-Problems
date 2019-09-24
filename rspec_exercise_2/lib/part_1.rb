def partition(arr, n)
first = []
second = [] 
two_d = [first,second]
arr.each do |ele|
if ele  < n
    first << ele
else
    second<< ele 
end
end
two_d
end

def merge(hash1, hash2)
combine_hash = {}
hash1.each do |k,v|
combine_hash[k] = v 
end
hash2.each do |k,v|
combine_hash[k] = v 
end
combine_hash
end    

def  censor(sentence, arr)


parts = sentence.split(" ")
new_word = []
parts.each do |part|
if arr.include?(part.downcase)
    new_word << helper_censor(part)
else 
    new_word << part
end
end
new_word.join(" ")
end

#helper 
def helper_censor(word)
    vowels = "aeoui"
    word.each_char.with_index do |char,i|
        if vowels.include?(char.downcase)
            word[i] = "*"
        end
    end
word
end

def power_of_two?(n)
    if n == 1 
        return true
    end
    n_power =  1
(1...n).each do |factor|
n_power *= 2
if n_power == n
    return true  
end

end
false
end