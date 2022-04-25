# Return the count of numbers under n in an array.

array = [17, 6, 3, 7, 9, 1]

##### RIGHT WAY, BUT NOT RUBY CONVENTION

def how_many_under(num, array)
    count = 0
    for i in array
        if i > num
            count = count + 1
        end
    end
    puts count
end


##### RUBY BEST PRACTICE WAY

## .count method is a ruby default that returns the number of times a condition is met on an array.

def r_how_many_under(num, array)
    array.count do |i|             
        i > num
    end
end

print r_how_many_under(5, array)
