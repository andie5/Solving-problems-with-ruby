
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome_product
  product = 0
  max_prod = 0

  # Doing a range the other way roung 999..100 problems with running so switched to start from 100
  # Starting from 100 because this is the first 3 digit number
  (100..999).each do |i|
    (100..999).each do |j|
      product = i * j
      # puts "product #{product}"
      product_str = product.to_s
      # puts "prod #{product_str}"
      reversed_str = product_str.reverse
      # puts "rever #{reversed_str}"

      if((product > max_prod) && (product_str == reversed_str))
        # Store the maximum number so far due to stack overflow comment
        # The loop will check the numbers in the following way: 999*999, then 999*998, then 999*997 until it reaches about 999*583 which is a palindrome. While it doesn't check 997*995 or something closer to the top which generates a larger number - so need to do some multiplications twice and keep track of the maximum poduct so far
        max_prod = product
      end
    end
  ends
  return puts "#{max_prod}"
end

largest_palindrome_product