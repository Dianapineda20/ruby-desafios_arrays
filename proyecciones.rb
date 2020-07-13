
data_orig = open('ventas_base.db').read.split(',')
data_10= []
data_orig.each do |d|
    data_10.push d.to_f
end
def proyecciones (data,incremento, desde, hasta)
    range = data[desde..hasta]
    total = range.inject(0){|sum,x| sum + x*incremento}
    return total
end
output = File.open('resultados.data','w')
output.write(proyecciones(data_10,1.1,0,5))
output.write("\n")
output.write(proyecciones(data_10,1.2,6,11))
output.close