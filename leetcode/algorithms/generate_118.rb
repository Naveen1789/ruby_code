def generate(num_rows)
  ans = []
  return ans if num_rows == 0
  ans = [[1]]
  for i in 1...num_rows
    # get prev seq
    temp = ans[i-1]
    # insert first element from prev seq
    seq = [temp[0]]
    for j in 1...i
        seq.push(temp[j-1] + temp[j])
    end
    # insert last element from prev seq
    seq.push(temp[temp.size-1])
    # push seq to ans
    ans[i] = seq
  end
  return ans
end
