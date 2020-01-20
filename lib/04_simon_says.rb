def echo(string)
    return string
end

def shout(string)
    return string.upcase
end

def repeat(string, times=2)
    return ("#{string} " * times).delete_suffix(' ')
end

def start_of_word(string, nb=1)
    return string.slice(0, nb)
end

def first_word(string)
    return string.split[0]
end

def titleize(string)
    string = string.split
    array = []
    first = true
    string.each do |i|
        if first         
            array << i.capitalize
            first = false
        elsif i == "the" || i == "and"
            array << i
        else 
            array << i.capitalize
        end
    end
    return array.join(' ')
end