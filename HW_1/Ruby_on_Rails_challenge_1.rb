def initArray
    rd = Random.new
    n, m = rd.rand(5..20), rd.rand(5..20)
    arr = Array.new(n){ Array.new(m){0} }
    (0...n).each {|i| (0...m).each{|j| arr[i][j] = rd.rand(2)}}
    return arr, n, m
end

def sub_matrix( array, n, m)
    maxtrix_sum = Array.new(n){Array.new(m){0} }
    maxtrix_sum[0] = array[0]

    (1...n).each{|i| maxtrix_sum[i][0] = array[i][0]}
    
    (1...n).each {|i| (1...m).each{
        |j| maxtrix_sum[i][j] = array[i][j] == 1 ? \
        [maxtrix_sum[i - 1][j - 1], maxtrix_sum[i - 1][j], maxtrix_sum[i][j - 1]].min() + 1 : 0
        }
    }

    max_entry = maxtrix_sum[0][0]
    max_i = 0
    max_j = 0
    (0...n).each {|i| (0...m).each{ |j|
            if max_entry < maxtrix_sum[i][j]
                max_entry = maxtrix_sum[i][j]
                max_i = i
                max_j = j
            end
        }
    }
   return max_i, max_j , max_entry
end

array, n, m = initArray
sub_matrix(array, n, m)