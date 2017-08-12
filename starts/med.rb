=begin
    Obtener la representación en texto de un objeto
    se utiliza .to_s
=end
var1 = 2
var2 = '5'

puts var1.to_s + var2

=begin
De la misma manera, to_i devuelve la versión numérica entera de un objeto y
to_f devuelve la versión de punto flotante, o sea la que lleva decimales.
=end

var1 = 2
var2 = '5'

puts var1.to_s + var2
puts var1 + var2.to_i

puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts '5 es mi número favorito.'.to_i
puts '¿Quién pregunta acerca de 5 o lo que sea?'.to_i
puts 'Tu mamá hizo.'.to_f
puts 'fibroso'.to_s
puts 3.to_i

=begin
  Bueno, ahí está el secreto de nuestro amigo puts. Antes de que puts trate de imprimir un objeto,
   usa to_s para obtener la versión en texto de ese objeto.
   De hecho, la s en puts significa string (que en español significa texto);
   puts realmente significa put string (que en español significa imprimir texto).

   gets, get string (recibir texto). Y así como puts siempre devuelve texto, gets sólo funciona con texto.
=end

puts gets
