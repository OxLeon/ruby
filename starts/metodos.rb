#Declarar una function

def decirMu
  puts 'muuuuuu...'
end

decirMu
decirMu
puts 'coin-coin'
decirMu
decirMu


def decirMu numeroDeMus
  puts 'muuuuuuu...'*numeroDeMus
end

decirMu 3
puts 'oink-oink'
# decirMu    Esto debería dar un error porque falta el parámetro.

# Ejemplo para funciones

def duplicaEsto num
  numeroVeces2 = num*2
  puts num.to_s+' el doble es '+numeroVeces2.to_s # Si no convierto las variables a string no sabe que hacer
end

duplicaEsto 44

# Las variables que estan en ámbito de una función no son accesibles desde fuera
def pequenaMascota var
  var = nil
  puts '¡HAHA!  ¡He malogrado tu variable!'
end

var = '¡Tu ni siquiera puedes tocar mi variable!'
pequenaMascota var
puts var
