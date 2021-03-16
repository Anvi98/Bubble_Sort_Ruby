# This is my first approach of bubble sort in Ruby
# I have created a boolean variable to check after each iteration the array was modified or not.

def bubble_sort(array)
  is_sorted = false
  until is_sorted
    is_sorted = true
    i = 1
    while i <= array.length - 2 ## I used three dots for the range to not count the last element of the array
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i] # This is my implementation to swap elements
        is_sorted = false
      end
      i += 1
    end
  end
  array
end

numbers = [5, 1, 67, 35, 10, 2, 100, 20, 45]

list = bubble_sort(numbers)
puts list
