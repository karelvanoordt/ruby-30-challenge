# Validate which numbers in the array are prime numbers


array1 = [1,2,3,4,5,6,7,8,9,10]

### RIGHT WAY, BUT NOT RUBY CONVENTION

def count_how_many_primes(array)

    prime_count = 0

    for i in array      #for each iteration
        next if i == 1      #go to next iteration if i is 1

        is_prime = true     #set is_prime value true

        number = i - 1      #number variable to use (prime numbers are divisible by itself and 1)
        while number > 1
            if i % number == 0      #if remainder is 0, then number is not prime, 'break' finishes the while loop
                is_prime = false
                break
            else
                number = number - 1     #if remainder is dif than 0, then its prime, and goes to next iteration of the same number
            end
        end

        if is_prime == true         # if the number is prime, set to true and the count for total increases
            prime_count = prime_count + 1
        end
    end

    return prime_count

end
