# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)

#   return nil if (head == nil || head.next == nil)
#   return head if n <= 0

  first_pointer = head
  second_pointer = head

  while n > 0
    first_pointer = first_pointer.next
    n = n -1
  end

  if first_pointer == nil
      return head.next
  end

  while first_pointer.next != nil
    first_pointer = first_pointer.next
    second_pointer = second_pointer.next
  end

  second_pointer.next = second_pointer.next.next
  head
end


=begin
Input: 1 -> 2 -> 3 -> 4 -> 5
n = 2
Output: 1 -> 2 -> 3 -> 5
=end
