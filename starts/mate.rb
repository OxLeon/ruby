=begin
  ** potencia de numeros
  / modulo
  .abs tomar el valor absoluto de un numero
=end

puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7
puts((5-2).abs)
puts((2-5).abs)

=begin
  Es utilizado para generar numeros aleatorios
  que esten en el rango de 0 al numero que se de como parametro
  si uso rand(100) me dara un numero entre 0 y 99
=end
puts rand
puts rand
puts rand
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(1))
puts(rand(1))
puts(rand(1))
puts(rand(99999999999999999999999999999999999999999999999999999999999))
puts('El pronosticador del tiempo dijo que hay '+rand(101).to_s+'% chances de que llueva,')
puts('pero nunca debes confiar en él.')
=begin
  Tener numeros aleatorios que sean repetidos se utiliza un identificador llamadoo sran
=end

srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))


puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)
