# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    arr = s.split(" ").compact
    return arr.size < 1 ? 0 : arr[arr.size - 1].length
end
