def triangular_number(divisors)
  
  count = 1
  factors = []
  
  until factors.length > divisors
  
    sum = 0
    factors = []
    arr = []
    
    nums = (1..count).to_a
    
    nums.each {|n| sum += n}
    arr = (1..sum).to_a
    arr.each {|num| factors << num if sum % num == 0}
    
    count += 1
    
  end
  
  puts sum
    
end

triangular_number(500)