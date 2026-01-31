require 'set'

def arrays
  true
end

def sum_array(array)
  array.sum
end

def subtract_two_arrays(array1, array2)
  sum_array(array1) - sum_array(array2)
end

def unique_value(array)
  Set.new(array).to_a
end

def value_iterator(array)
  new_array = []
  array.each do |value|
    new_array << value + 1
  end
  new_array
end

def value_iterator_with_index(array)
  new_array = []
  array.each_with_index do |value, index|
    new_array << value + index
  end
  new_array
end
