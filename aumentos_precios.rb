precios = [500, 1000, 1500, 2000, 2500, 3000, 3500]
multiplicador = 2

def augment(precios, multiplicador)
    incremento_precios = []
    precios.each do |e|
        incremento_precios.push(e * multiplicador)
    end
    print incremento_precios
end

augment(precios, multiplicador)
puts