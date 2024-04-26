def bubble_sort(array)
    # Get the length of the array
    n = array.length
  
    # Perform n-1 passes through the array
    (n - 1).times do
        # Initialize a variable to track whether any swaps were made in this pass
        swapped = false
  
        # Iterate through the array from the first element to the second-to-last element
        (0..n - 2).each do |i|
            # Compare each pair of adjacent elements
            if array[i] > array[i + 1]
                # If the current element is greater than the next element, swap them
                array[i], array[i + 1] = array[i + 1], array[i]
                # Set the swapped flag to true
                swapped = true
            end
        end
  
        # If no swaps were made in this pass, the array is already sorted, so we can exit early
        break unless swapped
    end
  
    # Return the sorted array
    array
end
  
# Test the bubble_sort method
puts bubble_sort([4, 3, 78, 2, 0, 2]).inspect
#=> [0, 2, 2, 3, 4, 78]
