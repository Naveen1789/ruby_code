# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
    return 0 if root == nil
    traverse(root,1)

end

def traverse(node, num_of_nodes_from_root_to_cur_node)
    return num_of_nodes_from_root_to_cur_node if node.left == nil && node.right == nil
    return traverse(node.left, num_of_nodes_from_root_to_cur_node+1) if node.right == nil
    return traverse(node.right, num_of_nodes_from_root_to_cur_node+1) if node.left == nil

     left = traverse(node.left, num_of_nodes_from_root_to_cur_node+1)
     right = traverse(node.right, num_of_nodes_from_root_to_cur_node+1)

     return left < right ? right : left
end
