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
  result = false
  (0..arr.length - 2).one?{|i| n == arr[i] + arr[i + 1]}
  return result
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
