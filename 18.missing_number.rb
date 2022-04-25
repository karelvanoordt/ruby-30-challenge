# Create a function that takes an array of numbers between 1 and 10 (excluding one number)
# and returns the missing number.

# The array of numbers will be unsorted
# Only one number is missing


array1 = [9, 2, 4, 8, 3, 10, 5, 1, 6]
# Expected output: 7

# full_series = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# Compare given array with full_series

def find_missing(array)
    [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each do |item|
        found = false
        array.each do |number|
            if item == number
                found = true 
                break
            end
        end
        if found == false
            return item
        end    
    end
end


puts find_missing(array1)

