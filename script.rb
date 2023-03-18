def merge_sort(arr)
    if arr.length < 2
        return arr
    end
    mid = arr.length / 2
    first_half = arr[0...mid]
    second_half = arr[mid...arr.length] 
    sorted_left = merge_sort(first_half)
    sorted_right = merge_sort(second_half)
    return merge(sorted_left,sorted_right)
    
end

def merge(left, right)
    result = []
    i = 0
    j = 0
  
    # Compare the first elements of left and right
    while i < left.length && j < right.length
      if left[i] <= right[j]
        result << left[i]
        i += 1
      else
        result << right[j]
        j += 1
      end
    end
  
    # Append any remaining elements from left or right
    while i < left.length
      result << left[i]
      i += 1
    end
  
    while j < right.length
      result << right[j]
      j += 1
    end
  
    return result
  end
  