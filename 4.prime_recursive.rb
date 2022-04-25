## This challenge uses recursion for previous algorithm

array1 = [1,2,3,4,5,6,7,8,9,10]


def count_how_many_primes(array)

    array.count do |item|  ## replace for loop with count method, to return the number of times the condition is met
        is_prime_number_recursion(item, item - 1)
    end

end

def is_prime_number_recursion(item, number)
    return false if item == 1 ## starter condition
    return true if number == 1 ## this makes function continue running
    return is_prime_number_recursion(item, number-1) if item % number != 0   ## call function again if condition is met
end

puts count_how_many_primes(array1)