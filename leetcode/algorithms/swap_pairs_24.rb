
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def swap_pairs(head)
    return head if head == nil || head.next == nil
    curNode = head
    nextNode = curNode.next
    curNode.next = swap_pairs(nextNode.next)
    nextNode.next = curNode
    return nextNode
end
