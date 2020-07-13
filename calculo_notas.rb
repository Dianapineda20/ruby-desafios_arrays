data = File.open('./notas.data').readlines

def higher_grade(data)
    a = data.split(',')
    a.map! {|e| e.to_i}
    return a.max
end

data.each do |a|
  puts higher_grade(a)
end
