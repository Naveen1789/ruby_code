# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} sum
# @return {Boolean}
def has_path_sum(root, sum)
    return false if root == nil
    traverse(root, sum - root.val)
end

def traverse (node, sum_so_far)

    if node.left == nil && node.right == nil
        return sum_so_far == 0 ? true : false
    end
    return traverse(node.left, sum_so_far - node.left.val) if node.right == nil
    return traverse(node.right, sum_so_far - node.right.val) if node.left == nil
    return traverse(node.left, sum_so_far - node.left.val) || traverse(node.right, sum_so_far - node.right.val)

end
