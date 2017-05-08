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
def delete_duplicates(head)
    curNode = head
    while curNode != nil
        if curNode.next == nil
           return head
        elsif curNode.val == curNode.next.val
            curNode.next = curNode.next.next
        else
            curNode = curNode.next
        end
    end
    return head
end
