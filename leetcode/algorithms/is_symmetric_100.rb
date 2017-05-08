# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(root)
    return true if root == nil
    compare(root.left, root.right)
end

def compare(l, r)
    if l == nil && r == nil
        puts 'both l & r are nil'
        return true
    elsif l == nil || r == nil
        puts 'l is nil' if l == nil
        puts 'r is nil' if r == nil
        return false
    elsif l.val != r.val
        puts "#{l.val} and #{r.val} are not equal"
        return false
    else
        puts "#{l.val} and #{r.val} are equal"
        return (compare(l.left, r.left) && compare(l.right, r.right))
    end

end
