puts 1 > 2
puts 5 < 2
puts 5 <= 5

puts 1 == 1

=begin
  Se puede comparar textos estos son ordenados lexico
  mostrando la primer palabra que aparece en el diccionario.
  Las letras mayúsculas vienen antes que las letras minúsculas
=end

puts 'alo' > 'lalo'

#  Ramificaciones ver que al final puede ser if ...  end o if ... else ... end

puts 'Hola, ¿cual es tu nombre?'
name = gets.chomp
puts 'Hola, ' + name + '.'
if name == 'Chris'
  puts '¡Que nombre tan hermoso!'
end

puts 'Soy un adivino. Dime tu nombre:'
name = gets.chomp
if name == 'Chris'
  puts 'Veo grandes cosas en tu futuro.'
else
  puts 'Tu futuro es... ¡Oh! ¡Mira la hora!'
  puts 'Realmente debo irme, ¡lo siento!'
end

comando = ''

while comando != 'adios'
  puts comando
  comando = gets.chomp
end

puts '¡Vuelve pronto!'


# Operadores logicos
#
# soyChris        = true
soyMorado       = false
meGustaLaComida = true
comoRocas       = false

puts (soyChris and meGustaLaComida)
puts (meGustaLaComida and comoRocas)
puts (soyMorado and meGustaLaComida)
puts (soyMorado and comoRocas)
puts
puts (soyChris or meGustaLaComida)
puts (meGustaLaComida or comoRocas)
puts (soyMorado or meGustaLaComida)
puts (soyMorado or comoRocas)
puts
puts (not soyMorado)
puts (not soyChris)
