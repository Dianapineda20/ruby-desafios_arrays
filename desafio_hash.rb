ventas = {
    Octubre: 65000,
    Noviembre: 68000,
    Diciembre: 72000
    }

   def filtrar(ventas)
    filtrar= {}
    ventas.each do |k,v|
        if v < 70000
            filtrar[k] = v
        end
    end
    filtrar      
end

puts filtrar(ventas)

