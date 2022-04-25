# Given an n number. Calculate the sum of even fibonacci numbers (until nth count)

def fibonacci_even_sum(n)
    number = 0
    sequence = []
    sum = 0
    (0..n).each do |i|
        number = i if i <= 1
        number = sequence[-1] + sequence[-2] if i > 1
        sequence << number

        sum += number if number % 2 == 0
    end
    sum
end


puts fibonacci_even_sum(8)