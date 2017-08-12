#La declaracion de un objeto de cierta clase es necesario utilizar la palabrea .new
#

a = Array.new  + [12345]  #  Array  agregado.
b = String.new + 'hello'  #  String agregado.
c = Time.new

# para mostrarlo en pantalla es necesario relizar una conversion a string
puts 'a = '+a.to_s
puts 'b = '+b.to_s
puts 'c = '+c.to_s

# En la clase Time se puede hacer adición de elemetoss
#
hora  = Time.new   #  El momento que se ejecutó esta código
hora2 = hora + 60  #  Un minuto más tarde.

puts hora
puts hora2

# Obtener el tiempo para un momento especifico
puts Time.mktime(2000, 1, 1)          #  Y2K.
puts Time.mktime(1976, 8, 3, 10, 11)  #  Cuando nació Chris.

#Hash Los hash son similares a los arrays
#Pero en vez de guardar en posiciones con enteros los guarda en textos
colorArray = []  #  igual a Array.new
colorHash  = {}  #  igual a Hash.new

colorArray[0]         = '#FF0000'
colorArray[1]         = '#008000'
colorArray[2]         = '#0000FF'
colorHash['textos ']  = '#FF0000'   # rojo
colorHash['numeros']  = '#008000'   # verde
colorHash['claves ']  = '#0000FF'   # azul

colorArray.each do |color|
  puts color
end
colorHash.each do |tipoCodigo, color|
  puts tipoCodigo + ' :  ' + color
end

# En lo arrays son buenos para mantener las cosas organizadas
# Y con los hashes son mas faciles que recordar

weirdHash = Hash.new
weirdHash[12] = 'monos'
weirdHash[[]] = 'el vacío'
weirdHash[Time.new] = 'ningun momento como el actual'

# Creando una clase

# Dentro de la clase Integer(Ya existe)
class Integer
  # Defino la funcion to_esp la
  def to_esp
    # Self nos referimos al objeto
    if self == 5
      espanol = 'cinco'
    else
      espanol = 'cincuenta y ocho'
    end

    # La ultima variable es la que regresa mi funcion
    espanol
  end
end

#  Mejor probarlo en un par de números...
puts 5.to_esp
puts 58.to_esp
