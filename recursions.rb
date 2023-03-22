def range(min, max)
  return [max-1] if min == max -1  
  [min] + range(min+1, max)
end

def rec_sum(arr)
  return 0 if arr.empty?
  arr[0] + rec_sum(arr[1..-1])
end

def ity_sum(arr)
  sum = 0 
  arr.each {|num| sum += num}
  sum
end

def exponent
  
end