# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)

    i = digits.size - 1
    carry = (digits[i] + 1) / 10
    digits[i] = (digits[i] + 1) % 10
    i = i - 1

    while carry > 0 && i >= 0
        digits[i] = digits[i] + carry
        carry = digits[i] / 10
        digits[i] = digits[i] % 10
        i = i - 1
    end

    digits.unshift(1) if carry == 1
    digits
end

=begin
# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)

    i = digits.size - 1

    while i > -1
        if digits[i] < 9
            digits[i] = digits[i] + 1
            return digits
        end
        digits[i] = 0
        i = i - 1
    end
    digits.unshift(1)
end
=end
