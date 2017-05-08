# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    # 0, 1, 2, .. length-2
    for i in 0...nums.size-1
        nums[i+1] = (nums[i] ^ nums[i+1])
    end
    print nums
    return nums[nums.length-1]
end
