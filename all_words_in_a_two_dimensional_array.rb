# display all possible words in a 2D array!
require 'set'

example_two_dim_array1 = [['b','o'],['a','t']];
example_two_dim_array2 = [['a','r','e'],['s','b','o'],['c','a','t']];
class Wordament
  def find_all_words (two_dim_array)
    set_of_all_words = Set.new

    (0...two_dim_array.size).each do |row|
      (0...two_dim_array[row].size).each do |col|
        puts "row = #{row}, col = #{col}, char = #{two_dim_array[row][col]}"
        puts "Find all words begining with #{two_dim_array[row][col]}"
        recursive_func(two_dim_array, row, col, '', set_of_all_words)
      end
    end

    puts "Number of words = #{set_of_all_words.size}"
    puts set_of_all_words
  end

  def is_available(two_dim_array, row, col)

  end

  def recursive_func (two_dim_array, row, col, current_word, set_of_all_words)
    char = two_dim_array[row][col]
    return if char == '*'
    new_word = current_word + char

    # upper left
    if ((row - 1) >= 0) && ((col - 1) >= 0)
      two_dim_array[row][col] = '*'
      set_of_all_words.add(new_word) if new_word.length >= 3
      recursive_func(two_dim_array,row-1,col-1,new_word,set_of_all_words)
      two_dim_array[row][col] = char
    end
    # up
    if ((row - 1) >= 0)
      two_dim_array[row][col] = '*'
      set_of_all_words.add(new_word) if new_word.length >= 3
      recursive_func(two_dim_array,row-1,col,new_word,set_of_all_words)
      two_dim_array[row][col] = char
    end
    # upper right
    if ((row - 1) >= 0) && ((col + 1) < two_dim_array[row-1].size)
      two_dim_array[row][col] = '*'
      set_of_all_words.add(new_word) if new_word.length >= 3
      recursive_func(two_dim_array,row-1,col+1,new_word,set_of_all_words)
      two_dim_array[row][col] = char
    end
    # left
    if ((col - 1) >= 0)
      two_dim_array[row][col] = '*'
      set_of_all_words.add(new_word) if new_word.length >= 3
      recursive_func(two_dim_array,row,col-1,new_word,set_of_all_words)
      two_dim_array[row][col] = char
    end
    # right
    if ((col + 1) < two_dim_array[row].size)
      two_dim_array[row][col] = '*'
      set_of_all_words.add(new_word) if new_word.length >= 3
      recursive_func(two_dim_array,row,col+1,new_word,set_of_all_words)
      two_dim_array[row][col] = char
    end
    # lower left
    if ((row + 1) < two_dim_array.size) && (col - 1) >= 0
      two_dim_array[row][col] = '*'
      set_of_all_words.add(new_word) if new_word.length >= 3
      recursive_func(two_dim_array,row+1,col-1,new_word,set_of_all_words)
      two_dim_array[row][col] = char
    end
    # down
    if ((row + 1) < two_dim_array.size)
      two_dim_array[row][col] = '*'
      set_of_all_words.add(new_word) if new_word.length >= 3
      recursive_func(two_dim_array,row+1,col,new_word,set_of_all_words)
      two_dim_array[row][col] = char
    end
    # lower right
    if ((row + 1) < two_dim_array.size) && (col + 1) < two_dim_array[row+1].size
      two_dim_array[row][col] = '*'
      set_of_all_words.add(new_word) if new_word.length >= 3
      recursive_func(two_dim_array,row+1,col+1,new_word,set_of_all_words)
      two_dim_array[row][col] = char
    end
  end

  def find_all_possible_words_in_a_two_dimensional_array two_dim_array
    find_all_words(two_dim_array)
  end
end

Wordament.new.find_all_possible_words_in_a_two_dimensional_array example_two_dim_array1
