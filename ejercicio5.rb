meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

arrays = meses.zip(ventas)
puts arrays.to_s

hash = arrays.to_h
puts hash

hash2 = {}
hash.each do |key, value|
  hash2[value] = key
end
puts hash2

def mayor_venta(nuevo)
  aux = 0
  nuevo.each_value do |value|
    aux = value if aux < value
  end
  puts aux
end

mayor_venta(hash)
