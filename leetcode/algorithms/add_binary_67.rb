# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)

    a_len = a.length - 1
    b_len = b.length - 1
    carry = 0
    ans = ""
    while a_len >= 0 && b_len >= 0
        temp = a[a_len].to_i + b[b_len].to_i + carry
        if temp == 3
            ans = '1' + ans
            carry = 1
        elsif temp == 2
            ans = '0' + ans
            carry = 1
        elsif temp == 1
            ans = '1' + ans
            carry = 0
        else
            ans = '0' + ans
            carry = 0
        end
        a_len = a_len - 1
        b_len = b_len - 1
    end

    while a_len >= 0
        temp = a[a_len].to_i + carry
        if temp == 2
            ans = '0' + ans
            carry = 1
        elsif temp == 1
            return a_len == 0 ? ('1' + ans) : (a[0..a_len-1] + '1' + ans)
        else
            return a[0..a_len] + ans
        end
        a_len = a_len - 1
    end

    while b_len >= 0
        temp = b[b_len].to_i + carry
        if temp == 2
            ans = '0' + ans
            carry = 1
        elsif temp == 1
            return b_len == 0 ? ('1' + ans) : (b[0..b_len-1] + '1' + ans)
        else
            return b[0..b_len] + ans
        end
        b_len = b_len - 1
    end

    if carry == 1
        ans = '1' + ans
    end

    return ans

end
=begin
1+1 = 10
0+1 = 1
1+0 = 1
0+0 = 0
=end
