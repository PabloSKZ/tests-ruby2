def who_is_bigger(a, b, c)
    if a == nil || b == nil || c == nil
        return "nil detected"
    elsif a > b && a > c
        return "a is bigger"
    elsif b > a && b > c
        return "b is bigger"
    elsif c > a && c > b
        return "c is bigger"
    else
        return "Two numbers are equal, try again"
    end
end

def reverse_upcase_noLTA(string)
    return string.upcase.reverse.tr('LTA', '')
end

def array_42(array)
    return array.include?(42) 
end

def magic_array(array)
    array.flatten.sort.map { |i| i*2 }.reject { |j| j % 3 == 0}.uniq
end