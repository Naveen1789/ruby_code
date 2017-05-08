# @param {Integer} x
# @return {Integer}
def reverse(x)

    sign = (x < 0) ? -1 : 1

    x = x.abs
    x_clone = x
    x_rev = 0
    while x_clone > 0
        x_rev = (x_rev * 10) + (x_clone % 10)
        x_clone = x_clone / 10
    end

    x_rev = x_rev * sign
    two_pow_31 = (2 ** 31)

    ((x_rev) < (two_pow_31 - 1) && (x_rev > (two_pow_31 * -1))) ? (x_rev) : 0
end
