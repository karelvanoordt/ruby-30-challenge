# Get the sequence of fibonacci numbers up to n number 
# Fibonacci sequence: 0 1 1 2 3 5 8 13 21 34 55 ... (sum of last 2 numbers)

def fibonacci_seq_v2(n) # From last challenge
    sequence = []
    (0..n).each do |num|
        sequence << num if num <= 1
        sequence << sequence[-1] + sequence[-2] if sequence.length > 1     
    end

    sequence
end

# This method should return the nth fibonacci number (given nth)

def fibonacci_recursive(n)
    if n <= 1
        return n
    else
        return fibonacci_recursive(n -1) + fibonacci_recursive(n-2)
    end
end

def fibonacci_recursive_v2(n)
    n <= 1 ? n : fibonacci_recursive_v2(n -1) + fibonacci_recursive_v2(n-2)
end


puts fibonacci_recursive_v2(9)
# Expected output: [0 1 1 2 3 5 8 13 21]