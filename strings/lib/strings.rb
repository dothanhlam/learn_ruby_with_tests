def strings
    "abcdefghijklmnopqrstuvwxyz"
end

def concate_strings a, b
    if a.is_a?(String) && b.is_a?(String)
        a + b
    else
        raise ArgumentError, "Both arguments must be strings"
    end
end