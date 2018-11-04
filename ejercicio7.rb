inventario = {  'notebook': 4,
                'Pc Escritorio': 6,
                'Router': 10,
                'impresora': 6 }

def menu
  puts '|------------------------------------------------|'
  puts '|                    MENU                        |'
  puts '|------------------------------------------------|'
  puts '|1. Agregar Item                                 |'
  puts '|2. Eliminar Item                                |'
  puts '|3. Modificar Item                               |'
  puts '|4. Ver Stock Total                              |'
  puts '|5. Ver producto con mayor stock                 |'
  puts '|6. Consultar si el Item existe en el inventario |'
  puts '|7. Salir                                        |'
  puts '|------------------------------------------------|'
  puts '| Ingrese el numero de lo que desea realizar     |'
  puts '|------------------------------------------------|'
end

def validador(num)
  puts "\n****INGRESE UNA OPCION VALIDA ENTRE 1 Y 7****" if num < 1 || num > 7
end

def espera
  puts "\nPrecione enter para volver al programa"
  gets.chomp
end

def agregador(invent)
  puts 'Ingrese el nombre del nuevo producto'
  agregado = gets.chomp.to_sym
  puts 'Ingrese su stock'
  stock = gets.chomp.to_i
  invent[agregado] = stock
  puts invent
end

def eliminador(usuario, invent)
  if invent.key?(usuario.to_sym)
    invent.delete(usuario.to_sym)
    puts "PRODUCTO ELIMINADO\n\n"
  else
    puts 'PRODUCTO NO VALIDO'
  end
  puts invent
end

def modificador(usuario, invent)
  if invent.key?(usuario.to_sym)
    puts "\nEscriba el nuevo nombre para #{usuario}"
    nuevo = gets.chomp.to_sym
    puts 'El nuevo stock es: '
    stock = gets.chomp.to_i
    invent.delete(usuario.to_sym)
    invent[nuevo] = stock
    puts "PRODUCTO MODIFICADO\n\n"
  else
    puts 'PRODUCTO NO VALIDO'
  end
  puts invent
end

def stock(invent)
  invent.each { |k, v| puts "#{k}: #{v}" }
end

def mayor(invent)
  arr = invent.values
  invent.each { |k, v| puts "'#{k}' con '#{v}' de stock" if v == arr.max }
end

def verificador(usuario, invent)
  if invent.key?(usuario)
    puts "\nSi existe el producto '#{usuario}'"
  else
    puts "El producto '#{usuario}' no existe"
  end
end

op_usuario = 0
while op_usuario != 7
  menu
  op_usuario = gets.chomp.to_i
  validador(op_usuario)
  case op_usuario
  when 1
    agregador(inventario)
    espera
  when 2
    puts 'Eliminar item'
    puts inventario
    puts "\nIngrese el producto que desea eliminar"
    eliminado = gets.chomp
    eliminador(eliminado, inventario)
    espera
  when 3
    puts 'Modificar item'
    puts inventario
    puts "\nIngrese el producto que desea modificar"
    modificado = gets.chomp
    modificador(modificado, inventario)
    espera
  when 4
    puts 'Stock total de los productos:'
    stock(inventario)
    espera
  when 5
    print 'Producto con mayor Stock es: '
    mayor(inventario)
    espera
  when 6
    puts 'Escriba el nombre del producto que desea buscar'
    verificar = gets.chomp.to_sym
    verificador(verificar, inventario)
    espera
  when 7
    puts "\n****FIN DEL PROGRAMA****"
  end
end
