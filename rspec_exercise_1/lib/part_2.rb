def hipsterfy(word)
    vowels = "aeiou"
    i = word.length-1
    while 0 < i
        if vowels.include?(word[i])
            word[i] = ""
            return word
        end    
    i-=1
    end
    word
end

def vowel_counts(s)
vowels = "aeoiu"
hash = Hash.new(0)    
s.downcase.each_char do |char|
    if vowels.include?(char)
    hash[char] += 1 
    end
end
hash
end

def caesar_cipher(word, num)
alphabet  = "abcdefghijklmnopqrstuvwxyz"
word.each_char.with_index do |char, i|
if alphabet.include?(char)
position = alphabet.index(char)
new_position = position + num
word[i] = alphabet[new_position % 26]
end

end    
word
end    


