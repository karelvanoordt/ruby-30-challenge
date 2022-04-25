# Given a number, validate if all of the digits are the same.

def is_repetitive(number)
    array = number.to_s.split('').map(&:to_i)  #takes number, converts to string and splits in an array of strings.  
                                                    #then maps through each iteration and converts into integer
    digit = array.first
    count = array.count{ |number| number != digit }
    
    if count == 0
        return true
    else
        return false
    end
end


puts is_repetitive(499)


