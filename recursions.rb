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

def exp_1(b, n)
  return 1 if n == 0

  b * exp_1(b, n-1)
end

def exp_2(b, n)
  return 1 if n == 0
  return b if n == 1

  even_ex = exp_2(b, n/2) 
  odd_ex = exp_2(b, (n-1) / 2 )
  if n.even?
    return even_ex * even_ex
  else
    b * odd_ex * odd_ex
  end
end

