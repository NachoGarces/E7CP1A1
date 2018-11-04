productos = { bebida: 850,
              chocolate: 1200,
              galletas: 900,
              leche: 750 }

productos.each_key { |producto| puts producto }

productos[:cereal] = 2200

productos[:bebida] = 2000

nuevo_arreglo = productos.to_a
print "#{nuevo_arreglo}\n"

productos.delete(:galletas)
puts productos
