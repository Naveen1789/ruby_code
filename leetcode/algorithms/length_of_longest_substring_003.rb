# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)

    # return 1 if s.length == 1

    starting_index_of_longest_substring = 0
    ending_index_of_longest_substring = -1

    hash = {}
    starting_index = 0
    ending_index = -1
    for i in 0...s.length
        ch = s[i]
        if hash.key?(ch)
            if (ending_index - starting_index) > (ending_index_of_longest_substring - starting_index_of_longest_substring)
                starting_index_of_longest_substring = starting_index
                ending_index_of_longest_substring = ending_index
            end
            index_after_last_occurance = hash[ch] + 1
            starting_index = (starting_index > index_after_last_occurance) ? starting_index : index_after_last_occurance
        end
        hash[ch] = i
        ending_index = i
    end

    if (ending_index_of_longest_substring - starting_index_of_longest_substring) < (ending_index - starting_index)
        starting_index_of_longest_substring = starting_index
        ending_index_of_longest_substring = ending_index
    end

    (ending_index_of_longest_substring - starting_index_of_longest_substring)  + 1

end
