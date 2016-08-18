
# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def largest_prime_factor(n)
  starting_index = n/2
  i = starting_index
  not_prime = false
  while ((i > 1) && not_prime == false)
    j = 2
    not_prime_inner = false
    while ((j < i) && not_prime_inner == false)
      if((i%j) === 0)
        not_prime_inner = true
      end
      j+=1
    end
    puts "This interim number is #{j} and not prime inner is #{not_prime_inner}"
    i-=1
  end

  puts "#{i}"
  #   j = 2
  #   # Inner loop to check if number is a divisible by any other number
end


# largest_prime_factor(600851475143)
largest_prime_factor(20)