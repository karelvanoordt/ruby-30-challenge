# Create a function that takes an array of numbers between 1 and 10 (excluding one number)
# and returns the missing number.

# The array of numbers will be unsorted
# Only one number is missing

# full_series = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# Compare given array with full_series

def find_missing(array)
    (1..10).to_a - array # ruby can substract one array from another, resulting in the missing number
end


array1 = [9, 2, 4, 8, 3, 10, 5, 1, 6]
# Expected output: 7

puts find_missing(array1)