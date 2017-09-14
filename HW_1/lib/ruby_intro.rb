# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  s = 0
  arr.each{|x| s += x}
  return s
end

def max_2_sum arr
  # YOUR CODE HERE
  n = arr.length
  if n == 0
    return 0
  elsif n == 1
    return arr[0]
  else
    arr = arr.sort{ |x, y| y <=> x}
    return arr[0] + arr[1]
  end
end

def sum_to_n? arr, n
  (1..arr.length - 2).one?{|i| n == arr[i] + arr[i + 1]}
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s = s.downcase
  return false if s == ""
  return !s.start_with?("a", "e", "i", "o", "u") if s[0].ord > 96
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s == ""
  s.each_char{|c| return false if c != '0' and c != '1'}
  return s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
    attr_accessor :isbn
    attr_accessor :price
    def initialize(isbn, price)
      raise ArgumentError,'Argument Error' if isbn == '' or price <= 0
      @isbn, @price = isbn, price
    end 
    def price_as_string
      return "$#{'%.2f' % self.price}"
    end
end
