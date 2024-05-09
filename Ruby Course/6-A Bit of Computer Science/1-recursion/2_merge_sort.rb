def merge_sort(array)
    return array if array.length <= 1
  
    mid = array.length / 2
    left_half = merge_sort(array[0...mid])
    right_half = merge_sort(array[mid..])
  
    merge(left_half, right_half)
end
  
def merge(left_half, right_half)
    sorted_array = []
  
    until left_half.empty? || right_half.empty?
      if left_half.first <= right_half.first
        sorted_array << left_half.shift
      else
        sorted_array << right_half.shift
      end
    end
  
    sorted_array + left_half + right_half
end
  