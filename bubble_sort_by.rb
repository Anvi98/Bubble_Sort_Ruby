# This is my first approach of bubble sort in Ruby
# I have created a boolean variable to check after each iteration the array was modified or not.

def bubble_sort_by(array)
  is_sorted = false
  until is_sorted
    is_sorted = true
    i = 0
    while i <= array.length - 2 ## I used three dots for the range to not count the last element of the array
      val = yield(array[i], array[i + 1])
      if val.positive?
        array[i], array[i + 1] = array[i + 1], array[i] # This is my implementation to swap elements
        is_sorted = false
      end
      i += 1
    end
  end
  p array
end

bubble_sort_by(%w(hi hello hey JHGFDERTYJKHGFD a)) do |left, right|
  left.length - right.length
end
