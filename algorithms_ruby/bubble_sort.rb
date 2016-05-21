def bubble_sort(array)
    n = array.length
    loop do
      swapped = false

     (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end 
    end

    break if not swapped
   end
 puts array
end
#This is a non-scalable algorithm for the fact that the more that is handed to bubble_sort the slower it becomes. O(n^2)
