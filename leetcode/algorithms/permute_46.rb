# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
    # return nil if nums == nil
    return [nums] if nums.length == 1
    left_most_num = nums.shift()
    sub_solution = permute(nums)
    solution = []
    sub_solution.each do |sub_permutation|
        for i in 0..sub_permutation.length
            permutation = sub_permutation.clone
            permutation.insert(i, left_most_num)
            solution.push(permutation)
        end
    end
    return solution
end
