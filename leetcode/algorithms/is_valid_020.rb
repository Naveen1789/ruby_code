# @param {String} s
# @return {Boolean}
def is_valid(s)
    arr = []
    left_par = ['(', '[', '{']
    head = -1
    for i in 0...s.length
        if left_par.include? s[i]
            head = head + 1
            arr[head] = s[i]
        else
            return false if arr.empty?
            return false if s[i] == ')' && arr[head] != '('
            return false if s[i] == ']' && arr[head] != '['
            return false if s[i] == '}' && arr[head] != '{'
            arr.pop
            head = head - 1
        end
    end

    arr.empty?
end
