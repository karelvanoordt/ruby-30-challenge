# GIven a number n, the factorial of n is the product of all integers less or equal to the number n

def factorial(number)

    result = number

    while number > 1
        result = result * (number - 1)
        number = number -1
    end

    return result
end

puts factorial(5)