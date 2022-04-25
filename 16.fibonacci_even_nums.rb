# Given an n number. Calculate the sum of even fibonacci numbers (until nth count)

def fibonacci_even_sum(n)
    number = 0 # current fibonacci number
    sequence = [] # store the values, specially the last 2
    sum = 0 # total sum
    (0..n).each do |i|
        number = i if i <= 1
        number = sequence[-1] + sequence[-2] if i > 1 # This will calculate the current number summing the last w
        sequence << number # stores current into sequence

        sum += number if number % 2 == 0 # adds even number to sequence
    end
    sum
end


puts fibonacci_even_sum(8)