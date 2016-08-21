
# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def largest_prime_factor(n)
  starting_index = n/2
  i = starting_index
  not_prime = false

  while ((i > 1) && not_prime == false)
    j = 2
    not_prime_inner = false
    while (j < i)
      if((i%j) === 0)
        not_prime_inner = true
    # puts "i is #{i} and j is #{j} and not prime inner is #{not_prime_inner}"
        break
      end
      j+=1
    end
    # puts "Inner loop on #{i} and result j ended on #{j}"

    # If the number we are on is found to be prime then exit outer loop
    if(not_prime_inner === false)
      not_prime = true
      break
    end

    i-=1
  end
  puts "#{i}" 
end

largest_prime_factor(21)
largest_prime_factor(600851475143)
