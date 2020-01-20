def translate(string)
    words = string.downcase.split
    pig_words = []
    words.each do |i|
        if i[0].downcase =~ /[aeiou]/
            pig_words << i + "ay"
        elsif i[1].downcase =~ /[aeiou]/
            if i.slice(0,2) == "qu"
                pig_words << i.delete_prefix(i.slice(0,2)) + i.slice(0,2) + "ay"
            else
                pig_words << i.delete_prefix(i.chr) + i.chr + "ay"
            end
        elsif i[2].downcase =~ /[aeiou]/
            if i.slice(1,2) == "qu"
                pig_words << i.delete_prefix(i.slice(0,3)) + i.slice(0,3) + "ay"
            else
                pig_words << i.delete_prefix(i.slice(0,2)) + i.slice(0,2) + "ay"
            end
        elsif i[3].downcase =~ /[aeiou]/
            pig_words << i.delete_prefix(i.slice(0,3)) + i.slice(0,3) + "ay"
        end
    end
    return pig_words.join(' ')
end

