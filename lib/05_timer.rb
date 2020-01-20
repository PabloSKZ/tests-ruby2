def time_string(nb)
    hour = nb / 60 / 60
    sec = nb % 60
    min = nb / 60 % 60
    return "#{"%02d" % hour}:#{"%02d" % min}:#{"%02d" % sec}"
end