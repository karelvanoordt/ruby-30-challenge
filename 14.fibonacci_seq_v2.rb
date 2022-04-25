# Get the sequence of fibonacci numbers up to n number 
# Fibonacci sequence: 0 1 1 2 3 5 8 13 21 34 55 ... (sum of last 2 numbers)

def fibonacci_seq(n)
    n1 = 0
    n2 = 1
    sequence = []
    while n > 2
        n3 = n1 + n2
        sequence << n3  # receives n3 in sequence
        n1 = n2
        n2 = n3   
        n = n - 1
    end
    sequence
end

def fibonacci_seq_v2(n)
    sequence = []
    (0..n).each do |num|
        sequence << num if num <= 1
        sequence << sequence[-1] + sequence[-2] if sequence.length > 1     
    end

    sequence
end


puts fibonacci_seq_v2(9)
# Expected output: [0 1 1 2 3 5 8 13 21]