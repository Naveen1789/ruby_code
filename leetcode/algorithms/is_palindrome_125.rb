# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    s = s.downcase
    s.gsub(/[^a-z0-9]/, '') == s.reverse.gsub(/[^a-z0-9]/, '')

end
