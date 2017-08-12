=begin
puts 'Hola, ¿cuál es tu nombre?'
name = gets
puts '¿Tu nombre es ' + name + '?  ¡Es un nombre adorable!'
puts 'Encantado de conocerte, ' + name + '.  :)'
=end

=begin
  chomp. Ésto elimina cualquier Enter al final del texto
=end

puts 'Hola, ¿cuál es tu nombre?'
name = gets.chomp
puts '¿Tu nombre es ' + name + '?  ¡Es un nombre adorable!'
puts 'Encantado de conocerte, ' + name + '.  :)'

puts 'Escribe tu nombre: '
name = gets.chomp
puts 'Escribe tu apellido paterno:'
apellidoP = gets.chomp
puts 'Escribe tu apellido materno: '
apellidoM = gets.chomp
puts 'Hola ' + name.to_s + ' ' + apellidoP.to_s + ' ' + apellidoM.to_s
