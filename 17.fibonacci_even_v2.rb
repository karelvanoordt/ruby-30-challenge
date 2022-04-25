# Given an n number. Calculate the sum of even fibonacci numbers (until nth count)

def fibonacci_even_sum(n) # From last challenge
    number = 0
    sequence = []
    sum = 0
    (0..n).each do |i|
        sequence << i if i <= 1
        sequence << sequence[-1] + sequence[-2] if i > 1

    end
    sequence
end

def sum(array)
    array.select { |number| number % 2 == 0 }.reduce(:+)
end


puts sum(fibonacci_even_sum(8))