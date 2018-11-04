h = { x: 1, y: 2 }
j = {}
h[:z] = 3
puts h
h[:x] = 5
puts h
h.delete(:y)
print "#{h}\n"
puts 'Yeaaaah' if h.include?(:z)
h.each do |clave, valor|
  j[valor] = clave
end
print "#{j}\n"
