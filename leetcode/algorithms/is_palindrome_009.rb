# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    x_temp = x
    num_of_digits = 0
    while x_temp > 0
        num_of_digits = num_of_digits + 1
        x_temp = x_temp / 10
    end

    x_rev = 0
    x_temp = x
    while x_temp > 0
        num_of_digits = num_of_digits - 1
        last_digit =  x_temp % 10
        x_rev = x_rev + ( last_digit * (10 ** num_of_digits))
        x_temp = x_temp / 10
    end

    x == x_rev

=begin
  x.to_s == x.to_s.reverse
=end

=begin
    return false if ((x < 0) || (x != 0 && x % 10 == 0))
    x_rev = 0

    while x > x_rev
        x_rev = (x_rev * 10) + (x % 10)
        x = x / 10
    end

    (x == x_rev) || (x == x_rev/10)
=end

=begin
    x_rev = 0

    x_clone = x
    while x_clone > 0
        x_rev = (x_rev * 10) + (x_clone % 10)
        x_clone = x_clone / 10
    end

    x == x_rev
=end

end
