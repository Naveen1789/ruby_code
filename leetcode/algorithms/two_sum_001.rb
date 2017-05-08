# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    sorted_nums = nums.clone
    sorted_nums.sort!
    left = 0
    right = sorted_nums.length - 1

    while left < right do
        if (sorted_nums[left] + sorted_nums[right] == target)
            if(sorted_nums[left] == sorted_nums[right])
                first_index = nums.index(sorted_nums[left])
                nums.delete_at(nums.index(sorted_nums[left]))
                second_index = nums.index(sorted_nums[right]) + 1
                return [first_index, second_index]
            end
            return [nums.index(sorted_nums[left]),nums.index(sorted_nums[right])]
        elsif (sorted_nums[left] + sorted_nums[right] < target)
            left = left + 1
        else
            right = right - 1
        end
    end

end
