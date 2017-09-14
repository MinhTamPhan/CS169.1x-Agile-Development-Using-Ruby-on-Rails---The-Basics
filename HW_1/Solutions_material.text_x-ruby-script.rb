module Matrix

  def self.max_submatrix_arr(matrix)
    raise ArgumentError if !(matrix.first.is_a?(Array) && matrix.first.first.is_a?(Integer))

    columns = matrix.first.size
    rows = matrix.size
    cache = Array.new(columns, 0)
    max_area = 0

    for y in (0...rows) do
      for x in (0...columns) do
        if matrix[y][x] == 0
          cache[x] = 0
        else
          cache[x] += 1
        end
      end

      area = max_histogram_arr(cache)
      max_area = area if area > max_area
    end

    max_area
  end

  def self.max_histogram_arr(arr)
    raise ArgumentError if !arr.first.is_a?(Integer)

    stack = []
    area = 0
    max_area = 0
    i = 0

    while i < arr.size do
      if stack.size == 0 || arr[i] >= arr[stack.last]
        stack << i
        i += 1
      else
        top = stack.pop

        if stack.size == 0
          area = arr[top] * i
        else
          area = arr[top] * (i - stack.last - 1)
        end

        max_area = area if area > max_area
      end
    end

    while stack.size > 0 do
      top = stack.pop

      if stack.size == 0
        area = arr[top] * i
      else
        area = arr[top] * (i - stack.last - 1)
      end

      max_area = area if area > max_area
    end

    max_area
  end

  def self.max_submatrix_hash(matrix)
    raise ArgumentError if !matrix.is_a?(Hash) || !matrix.keys.first.is_a?(Integer) || !matrix[0][0].is_a?(Integer)

    columns = matrix[0].size
    rows = matrix.keys.size
    cache = Hash.new { 0 }
    max_area = 0

    for y in (0...rows) do
      for x in (0...columns) do
        if matrix[y][x] == 0
          cache[x] = 0
        else
          cache[x] += 1
        end
      end

      area = max_histogram_hash(cache)
      max_area = area if area > max_area
    end

    max_area
  end

  def self.max_histogram_hash(hash)
    raise ArgumentError if !hash.is_a?(Hash) || !hash.keys.first.is_a?(Integer)

    stack = []
    area = 0
    max_area = 0
    i = 0

    while i < hash.keys.size do
      if stack.size == 0 || hash[i] >= hash[stack.last]
        stack << i
        i += 1
      else
        top = stack.pop

        if stack.size == 0
          area = hash[top] * i
        else
          area = hash[top] * (i - stack.last - 1)
        end

        max_area = area if area > max_area
      end
    end

    while stack.size > 0 do
      top = stack.pop

      if stack.size == 0
        area = hash[top] * i
      else
        area = hash[top] * (i - stack.last - 1)
      end

      max_area = area if area > max_area
    end

    max_area
  end

end
