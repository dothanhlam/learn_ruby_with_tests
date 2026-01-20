require 'set'

def arrays
  true
end

def sum_array(array)
  0
end

def subtract_two_arrays(array1, array2)
  0
end

def unique_value(array)
    Set.new(array).to_a
end 

def value_iterator(array)
    new_array = []
    array.each do |value|
        new_array << value + 1
    end
    return new_array
end 

def value_iterator_with_index(array)
    new_array = []
    array.each_with_index do |value, index|
        new_array << value + index
    end
    return new_array
end 
