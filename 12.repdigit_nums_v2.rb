# Given a number, validate if all of the digits are the same.

def is_repetitive(number) # From last challenge
    array = number.to_s.split('').map(&:to_i)  #takes number, converts to string and splits in an array of strings.  
                                                    #then maps through each iteration and converts into integer
    count = array.count{ |number| number != array.first } == 0
end

def is_repetitive_v2(number)
    number.to_s.squeeze.length == 1
end

def is_repetitive_v3(number)
    number.to_s.chars.uniq.length == 1
end


puts is_repetitive_v3(666666)


