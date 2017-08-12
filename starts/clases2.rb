# Como crear nuestras clases

# Declaro la clase dado
class Dado
  # Defino una funcion llamada roll
  def roll
    1 + rand(6)
  end

end

#  Vamos a crear un par de dados...
dados = [Dado.new, Dado.new]

#  ...y hacerlos rodar.
dados.each do |dado|
  puts dado.roll
end

#Por lo tanto las variables de instancia son variables de un objeto.
#Las variables locales de un método viven hasta que el método ha terminado.
#Las variables de instancia de un objeto, por otro lado, duran tanto como el objeto.
#Para diferenciar las variables de instancia de las variables locales, ellos tienen @ delante de sus nombres.

class Dado

  def rodar
    @numeroMostrado = 1 + rand(6)
  end

  def mostrar
    @numeroMostrado
  end

end

puts '-------------'
dado = Dado.new
dado.rodar
puts dado.mostrar
puts dado.mostrar
dado.rodar
puts dado.mostrar
puts dado.mostrar


# Podemos inicializar una clase para que haga lo que necesitemos 
# 
# 
class Dado

  def initialize
    # Voy a tirar el dado, a pesar de que
    # podria hacer otra cosa si quisieramos
      rodar
  end

  def rodar
    @numeroMostrado = 1 + rand(6)
  end

  def mostrar
    @numeroMostrado
  end

end

puts Dado.new.mostrar
