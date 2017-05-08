# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)

    return l1 if l2 == nil
    return l2 if l1 == nil

    # scenario where both l1 and l2 are null will be handled in the above lines

    carry_over = (l1.val + l2.val) / 10
    l3 = ListNode.new((l1.val + l2.val) % 10)
    l1 = l1.next
    l2 = l2.next

    last_node = l3

    while l1 != nil && l2 != nil
        sum = carry_over + l1.val + l2.val
        new_node = ListNode.new(sum % 10)
        carry_over = sum / 10
        last_node.next = new_node
        last_node = new_node
        l1 = l1.next
        l2 = l2.next
    end


    while l1 != nil
        sum = (carry_over + l1.val)
        new_node = ListNode.new( sum % 10)
        carry_over = sum / 10
        last_node.next = new_node
        last_node = new_node
        l1 = l1.next
    end


    while l2 != nil
        sum = (carry_over + l2.val)
        new_node = ListNode.new( sum % 10)
        carry_over = sum / 10
        last_node.next = new_node
        last_node = new_node
        l2 = l2.next
    end


    if carry_over != 0
        new_node = ListNode.new(carry_over)
        last_node.next = new_node
        last_node = new_node
    end

    l3
end
