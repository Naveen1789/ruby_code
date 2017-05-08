# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
    ans = [1]
    curRow = 0

    while curRow < row_index
        newAns = Array.new
        newAns.push(ans[0])
        for i in 0...(ans.size - 1)
           newAns.push(ans[i] + ans[i+1])
        end
        newAns.push(ans[ans.size-1])
        ans = newAns
        curRow = curRow + 1
    end
    ans
end
