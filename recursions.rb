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

def deep_dup(array)
  answer = [] 
  array.each do |ele| 
    if !ele.is_a?(Array) 
      answer << ele
    else
      answer << deep_dup(ele)
    end
  end
  answer
end

def rec_fib(n)
  return [] if n == 0 
  return [0] if n == 1 
  return [0,1] if n == 2 
  
  last_fib = rec_fib(n-1)
  last_fib << last_fib[-1] + last_fib[-2]  
end

def ity_fib(n)
  fib_arr = [0, 1]
  
  (n-2).times do 
    fib_arr << fib_arr[-1] + fib_arr[-2]
  end
  fib_arr
end

def bsearch(array, target)
  # midpoint = array.length/2
  # return nil if array.length == 0
  # return midpoint if array[midpoint] == target
  # bttm = array[0...midpoint]
  # top = array[midpoint+1..-1]

  # if midpoint > target 
  #   bsearch(bttm, target)
  # else
  #   bsearch(top,target)
  # end
  

end

