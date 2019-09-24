def palindrome?(s)
reverse = ""
i = s.length-1
while  i >= 0
    reverse += s[i]
i-= 1
end
return true if reverse == s
false
end

def substrings(string)
i = 0
j = 0
sub_string = []
while i < string.length
while j < string.length
    sub_string << string[i..j]
    j+=1 
end

i +=1
j=i
end
sub_string
end

def palindrome_substrings(string)

sub_string =  substrings(string)
palindrome_string = []
sub_string.each  do |sub|
if palindrome?(sub) && sub.length > 1
palindrome_string << sub
end

end
palindrome_string
end