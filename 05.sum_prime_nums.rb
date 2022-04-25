# Given an array of numbers, return the sum of prime numbers
require 'prime'

def sum_prime_numbers(array)
    sum=0

    for i in array
        sum += i if is_prime(i)
    end

    return sum
end

def is_prime(i) ## enclosed the first while loop in a reusable function
    return false if i == 1
    number = i - 1
    while number > 1
        if i % number == 0     
            return false
            break
        else
            number = number - 1    
        end
    end
    return true
end

array1 = [1,2,3,4,5,6,7,8,9,10]

#### BEAUTIFUL RUBY SOLUTION

print array1.select { |item| is_prime(item) } # this selects the items in the array that are prime (or that meet specific condition)


print array1.select { |item| is_prime(item) }.reduce(:+) # This does the same and reduces all items using the plus method. Ergo, it sums it all