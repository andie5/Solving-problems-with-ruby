# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

def sum_even_fibonacci
  prev = 1
  current = 1
  sum = 0
  sum_even = 0
  while sum < 4000000 
    sum = prev + current
    prev = current
    current = sum
    if((sum%2) === 0)
      sum_even +=  current
    end
  end
  puts "#{sum_even}"
end

sum_even_fibonacci