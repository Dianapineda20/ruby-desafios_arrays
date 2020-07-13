data = File.open('./notas2.data').readlines

def nota_mas_alta(data)
    a = data.split(',')
    data1 = a.map {|e| e.to_i}
    array1 = []

    data1.each do |x|
        array1.push x
    end
    
    array2 = [a[0],array1.max]
    return array2
end

data.each do |e|
    puts nota_mas_alta(e)
end
