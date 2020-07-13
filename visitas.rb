visits = [1000, 800, 250, 300, 500, 2500]

def average(visits)
    a = []
    visits.each do |e|
        a.push e.to_f
    end
    return (a.sum/a.count).round(2) 
end

puts average(visits)
