array1 = [1,2,3,4,5,6,7,8,9,10]

#### BETTER WAY, BUT STILL NOT RUBY CONVENTION

def b_count_how_many_primes(array)

    array.count do |i|  ## replace for loop with count method, to return the number of times the condition is met
        is_prime(i)
    end

end

def is_prime(i) ## enclosed the first while loop in a reusable function
    return false if i == 1

    number = i - 1
    
    while number > 1
        if i % number == 0     
            return false
            break
        else
            number = number - 1    
        end
    end

    return true

end


#### BEST RUBY


def c_count_how_many_primes(array)

    array.count do |i|  ## replace for loop with count method, to return the number of times the condition is met
        c_is_prime(i)
    end

end

def c_is_prime(i) ## enclosed the first while loop in a reusable function
    return false if i == 1

    (2..(i-1)).each do |number|  ## used the x..y (loop from x to y, where i can be a condition)
        if i % number == 0
            return false
        end
    end
    return true

end



#### BEST RUBY, SIMPLIFIED 

require 'prime' ## require prime library

def d_count_how_many_primes(array)  # Replaced is_prime method with Prime.prime method (needs require)
    array.count do |i|
        Prime.prime?(i)
    end
end

puts d_count_how_many_primes(array1)