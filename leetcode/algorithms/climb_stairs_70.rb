# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    hash = {0 => 0, 1 => 1, 2=> 2}
    num_of_combinations(n,hash)
end

def num_of_combinations(n,hash)
    return hash[n] if hash[n] != nil

    num_of_combinations_of_n_minus_1 = hash[n-1] || num_of_combinations(n-1, hash)
    num_of_combinations_of_n_minus_2 = hash[n-2] || num_of_combinations(n-2, hash)
    hash[n] = num_of_combinations_of_n_minus_1 + num_of_combinations_of_n_minus_2
    return hash[n]
end
