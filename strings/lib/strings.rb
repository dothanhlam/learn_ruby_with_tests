def strings
  'abcdefghijklmnopqrstuvwxyz'
end

def concatenate_strings(a, b)
  raise ArgumentError, 'Both arguments must be strings' unless a.is_a?(String) && b.is_a?(String)

  a + b
end
