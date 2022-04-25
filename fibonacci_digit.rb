# Return the last digit of a nth fibonacci number

def find_fibonacci(n)
    if n < 2
      return 1
    else 
     return (find_fibonacci(n - 2) + find_fibonacci(n-1)).remainder(10)
    end  
end
   
puts find_fibonacci(9)