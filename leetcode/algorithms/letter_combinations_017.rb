# @param {String} digits
# @return {String[]}
def letter_combinations(digits)

  return [] if digits == ''

  mapping = ['0', '1', 'abc', 'def', 'ghi', 'jkl', 'mno', 'pqrs', 'tuv', 'wxyz']

    str = ''
    solution = []
    find_combination(digits, str, solution, mapping)

    solution
end

def find_combination (digits, str, solution, mapping)

  if digits.length == 0
    solution.push(str)
    return
  end
  digit = digits[0].to_i
  new_digits = digits[1,digits.length-1]

  arr = mapping[digit].chars
  arr.each do |char|
    str = str + char
    find_combination(new_digits, str, solution, mapping)
    str = str[0,str.length-1]
  end

end

=begin
# @param {String} digits
# @return {String[]}
def letter_combinations(digits)

    return [] if digits == ''

  mapping = ['0', '1', 'abc', 'def', 'ghi', 'jkl', 'mno', 'pqrs', 'tuv', 'wxyz']

  solution = [""]

  for i in 0...digits.length
    digit = digits[i].to_i

    while solution[0].length == i
        combination = solution.shift
        mapping[digit].chars.each do |char|
            solution.push(combination + char)
        end
    end
  end

  solution

end
=end
