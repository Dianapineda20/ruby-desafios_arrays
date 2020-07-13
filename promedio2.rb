a = [7, 4, 3, 2, 5, 3, 4, 4, 5, 2]

b = [4, 5, 2, 2, 5, 7, 3, 3, 2, 7]

def arrays_comparison(a, b)
    average_a = (a.sum/a.count).to_f.round(2) 
    average_b = (b.sum/b.count).to_f.round(2) 
    if average_a > average_b
        return average_a
    else
        return average_b
    end
end
puts arrays_comparison(a, b)