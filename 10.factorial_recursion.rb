# GIven a number n, the factorial of n is the product of all integers less or equal to the number n

def factorial(number)
    result = number
    while number > 1
        result = result * (number - 1)
        number = number -1
    end
    return result
end

def factorial_recursion(number)
    number == 0 ? 1 : number * factorial_recursion(number - 1)
end

puts factorial_recursion(5)