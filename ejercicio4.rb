personas = ['Carolina', 'Alejandro', 'Maria Jesús', 'Valentín']
edades = [32, 28, 41, 19]

arreglo = personas.zip(edades)
puts arreglo.to_s
hash = arreglo.to_h
puts hash

def promedio(hash2)
  sum = hash2.inject(0) { |suma, (_, value)| suma + value }
  sum / hash2.length
end
puts promedio(hash)
