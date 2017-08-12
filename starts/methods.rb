=begin
Si objetos (como textos, enteros y flotantes) son los sujetos en el lenguaje Ruby,
entonces los métodos son como verbos. Y, justo como en el español, tú no puedes
tener un verbo sin un sustantivo para hacer algo. Por ejemplo, tic-tac no es algo que sólo ocurre;
un reloj (o algo) tiene que hacer esto. En español podemos decir: "El reloj hace tic-tac".
 En Ruby podemos decir clock.tick (asumiendo por supuesto que clock es un objeto Ruby).
 Los programadores pueden decir que estamos "llamando el método tick de clock" o llamamos al "tick de clock".
 http://rubysur.org/aprende.a.programar/capitulos/metodos.html
=end


puts 'hola '.+ 'mundo'
puts (10.* 9).+ 9

=begin
  Realizar una inverison del objeto de tipo texto "reverse"
=end
var1 = 'Eduardo'
puts 'variable normal ' + var1
puts var1.reverse
puts var1.length
=begin
  En este caso marcaria error ya que no es posible obtener un entero de string para esto tengo que convertilo
  puts '¿Cuál es tu nombre completo?'
  name = gets.chomp
  puts '¿Sabes que hay ' + name.length + ' caracteres en tu nombre, ' + name + '?'
=end

puts '¿Cuál es tu nombre completo?'
name = gets.chomp
puts '¿Sabías que hay ' + name.length.to_s + ' caracteres en tu nombre, ' + name + '?'
=begin
  upcase cambian cada minúscula por mayúscula.
  swapcase cambia en cada letra en el string("Hola".swapcase #=> "hOLA"), y finalmente,
  capitalize es como downcase, excepto que esto cambia solo el primer carácter a mayúsculas (si es una letra).
=end

letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters

lineWidth = 50
puts(                'Old Mother Hubbard'.center(lineWidth))
puts(               'Sat in her cupboard'.center(lineWidth))
puts(         'Eating her curds an whey,'.center(lineWidth))
puts(          'When along came a spider'.center(lineWidth))
puts(         'Which sat down beside her'.center(lineWidth))
puts('And scared her poor shoe dog away.'.center(lineWidth))
=begin
  Alinear texto
=end

lineWidth = 40
str = '--> text <--'
puts str.ljust  lineWidth
puts str.center lineWidth
puts str.rjust  lineWidth
puts str.ljust(lineWidth/2) + str.rjust(lineWidth/2)
