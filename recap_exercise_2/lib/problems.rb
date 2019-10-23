# Write a method, least_common_multiple, that takes in two numbers and returns the smallest number that is a mutiple
# of both of the given numbers
def least_common_multiple(num_1, num_2)
(1..num_1*num_2).each {|num|return num if num % num_1 == 0 && num%num_2 == 0}
end


# Write a method, most_frequent_bigram, that takes in a string and returns the two adjacent letters that appear the
# most in the string.
# "am"
def most_frequent_bigram(str)
    count_bigrams = Hash.new(0)
    new_bigrams = []
    str.each_char.with_index do |char,idx|
        if idx < str.length-1 
        bigram = str[idx] + str[idx+1]
        new_bigrams << bigram
        end
    end
    new_bigrams.each do |bigram|
        if str.include?(bigram)
            count_bigrams[bigram] += 1
        end
    end
    sorted = count_bigrams.sort_by {|k,v| -v}
    return sorted[0][0]
end


class Hash
    # Write a method, Hash#inverse, that returns a new hash where the key-value pairs are swapped
    def inverse
        new_hash = Hash.new
        self.each do |k,v|
            value = v 
            new_hash[v] = k 
        end
        new_hash
    end
end


class Array
    # Write a method, Array#pair_sum_count, that takes in a target number returns the number of pairs of elements that sum to the given target
    def pair_sum_count(num)
        pair = []
        count = 0
        self.each do |n|
            comp = num-n
            if pair.include?(comp)
            count +=1
            end
            pair << n
        end
     count
    end

    # Write a method, Array#bubble_sort, that takes in an optional proc argument.
    # When given a proc, the method should sort the array according to the proc.
    # When no proc is given, the method should sort the array in increasing order.
    #
    # Sorting algorithms like bubble_sort, commonly accept a block. That block accepts
    # two parameters, which represents the two elements in the array being compared.
    # If the block returns 1, it means that the second element passed to the block
    # should go before the first (i.e. switch the elements). If the block returns -1,
    # it means the first element passed to the block should go before the second
    # (i.e. do not switch them). If the block returns 0 it implies that
    # it does not matter which element goes first (i.e. do nothing).
    #
    # This should remind you of the spaceship operator! Convenient :)
    def bubble_sort(&prc)
        prc ||= Proc.new {|a,b| a <=> b}
        i = 0  
        sorted = true 
        while sorted
            sorted = false
            while i < self.length-1
            if prc.call(self[i], self[i+1]) == 1
                self[i], self[i+1] = self[i+1], self[i]
                sorted = true
            end
            i+=1
            end
            i=0
        end
        self
    end
end

