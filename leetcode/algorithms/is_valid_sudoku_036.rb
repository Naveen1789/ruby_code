# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)

    hash = {}
    for row in 0...board.size
        for col in 0..row.size
          curElem = board[row][col]
          if curElem != '.'
              rKey = 'r' + row.to_s
              cKey = 'c' + col.to_s
              boxKey = (row/3).to_s + (col/3).to_s
            hash[rKey] = hash[rKey] ? (hash[rKey] << curElem) : [curElem]
            hash[cKey] = hash[cKey] ? (hash[cKey] << curElem) : [curElem]
            hash[boxKey] = hash[boxKey] ? hash[boxKey] << curElem : [curElem]
          end
        end
    end

    hash.each {|key, value| return false if hash[key].uniq.length != hash[key].length }

    return true
end

=begin
A number can occur only once in a row
A number can occur only once in a col
A number can occur only once inside a box
row1 - row9
col1 - col9
box1 - box9
0-2, 3-5, 6-8
0-2, 3-5, 6-8
calc box ->
row/3 = 0 , 1, 2
col/3 = 0, 1, 2
=end
