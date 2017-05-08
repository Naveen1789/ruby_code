# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)

    return 0 if nums == nil || nums.size == 0

    size = nums.size
    left = 0
    rightMost = size - 1

    while left <= rightMost
        if nums[left] == val
            while rightMost >= 0 && nums[rightMost] == val
                rightMost = rightMost - 1
            end
            return left if rightMost <= left
            nums[left] = nums[rightMost]
            rightMost = rightMost - 1
        else
            # do nothing
        end
        left = left +1
    end

    left
end
