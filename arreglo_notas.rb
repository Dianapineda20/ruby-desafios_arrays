
grades = [5, 7, 1, 3, 5, 8, 9, 'N.A', 'N.A', 3]

def average(grades)
    new_grades = []
    grades.each do |e|
        if e == 'N.A'
            new_grades.push 2.to_f
        else 
            new_grades.push e.to_f
        end
    end
    print (new_grades.sum / new_grades.count)
end

average(grades)
puts