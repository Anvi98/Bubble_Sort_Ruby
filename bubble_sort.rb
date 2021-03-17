# This is my first approach of bubble sort in Ruby
# I have created a boolean variable to check after each iteration the array was modified or not.

def bubble_sort(array)
  is_sorted = false
  until is_sorted
    is_sorted = true
    i = 0
    while i <= array.length - 2 ## I used three dots for the range to not count the last element of the array
      if array[i] > array[i + 1]
        swap(i, i + 1, array)
        is_sorted = false
      end
      i += 1
    end

  end
  array
end

def swap(i, j, array)
  array[i], array[j] = array[j], array[i] # This is my implementation to swap elements
end

numbers = [1, 4, 0, -3, 40]

list = bubble_sort(numbers)
p list
