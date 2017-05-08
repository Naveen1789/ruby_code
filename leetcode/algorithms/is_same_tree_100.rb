# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
    return (pre_order(p) == pre_order(q))
end

def pre_order(p)
    return "nil" if p == nil
    return p.val.to_s + pre_order(p.left) + pre_order(p.right)
end

def in_order(p)
    return "nil" if p == nil
    return in_order(p.left).to_s + p.val.to_s + in_order(p.right)
end

def post_order(p)
    return "nil" if p == nil
    return post_order(p.left).to_s + post_order(p.right) + p.val.to_s
end
