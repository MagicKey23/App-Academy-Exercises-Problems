def select_even_nums(arr)
arr.select(&:even?)
end

def reject_puppies(arr)
arr.reject do |dog|
    if dog["age"] < 3
        dog
    end   
end
end

def count_positive_subarrays(arr)
arr.count {|num| num.sum > 1 }
end

def aba_translate(word)
vowels = "aeiou"
array_word = word.split("")
array_word.each_with_index do |char,idx|
if vowels.include?(char)
    array_word[idx] += "b" + char
end
end
array_word.join("")
end

def aba_array(arr)
arr.map do|word| 
if has_vowels?(word)
aba_translate(word)
else
    word
end

end
end

def has_vowels?(word)
vowels = "aeoui"
word.each_char {|char| return true if vowels.include?(char)}
return false
end