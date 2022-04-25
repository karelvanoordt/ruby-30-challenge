# GIven a number n, the factorial of n is the product of all integers less or equal to the number n

def factorial_v1(number)
    result = number
    while number > 1
        result = result * (number - 1)
        number = number -1
    end
    return result
end

def factorial_v2(number)
    result = number
    (1..(number - 1)).each do |item|
        result = result * item
    end 

    puts "number: #{number}"
    puts "factorial: #{result}" 
end

def factorial_v3(number)
    puts "number: #{number}"
    result = (1..number).reduce(:*)
    puts "factorial: #{result}"
end

def factorial_v4(number)
    return 1 if number == 0
    number.downto(1).reduce(:*)
end

puts factorial_v4(5)