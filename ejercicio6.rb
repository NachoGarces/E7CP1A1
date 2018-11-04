restaurant = { "Ramen": 3000,
                    "Dal Makhani": 4000,
                    "Coffee": 2000 }

def mas_caro(hash)
  arr = hash.values
  puts arr.max
end

def mas_barato(hash)
  arr = hash.values
  puts arr.min
end

def promedio(hash)
  arr = hash.values
  puts arr.inject(:+) / arr.length
end

def nombres(hash)
  hash.keys
end

def valores(hash)
  hash.values
end

def iva(hash)
  arr_keys = hash.keys
  arr_values = hash.values
  arr_iva = arr_values.map { |ele| ele * 1.19 }
  puts arr_keys.zip(arr_iva).to_h
end

def descuento(hash)
  hash.each do |key, value|
    hash[key] = value * 0.8 if key.to_s.include?(' ')
  end
  puts hash
end

mas_caro(restaurant)
mas_barato(restaurant)
promedio(restaurant)
puts nombres(restaurant).to_s
puts valores(restaurant).to_s
iva(restaurant)
descuento(restaurant)
