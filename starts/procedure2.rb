  # Pasando Bloques (no Procedimientos) en los Métodos
# Gran parte del problema es que hay tres pasos que se tienen que realizar
# (definir el método, hacer el proc y llamar al método con el proc),
# parecería que solo debería haber dos (definir el método y pasar el bloque correcto dentro del método,
# sin necesidad de usar un proc) ya que la mayoría de las veces usted no desea utilizar el proc/bloque
# después de pasarlo al método. Bueno, no lo sabes, Ruby tiene todo resuelto por nosotros!
# De hecho, ya ha estabas haciendolo cada vez que utilizabas iteradores.

# bloque de código (código entre do y end)
class Array
  def cadaPar(&fueBloque_ahoraesProc)
    esPar = true  #  Empezamos con "true" porque las matrices comienzan con 0

    self.each do |objeto|
      # pbjeto entrante que es un array
      if esPar
        fueBloque_ahoraesProc.call objeto
      end

      esPar = (not esPar)  #  Cambiar de pares a impares o viceversa
    end
  end

end

['manzana', 'manzana podrida', 'cereza', 'durian'].cadaPar do |fruta|
  puts '¡Yum!  Me encantan los pasteles de '+fruta+', ¿no?'
end

#  Recuerda,, estamos tratando de conseguir los numeros pares
#  de la Matriz.

[1, 2, 3, 4, 5].cadaPar do |bolaImpar|
  puts bolaImpar.to_s+' NO es un número par!'
end

# con el fin de hacer que tu método no ignore el bloque debes apoderarse de él y convertirlo en un proc y
# poner el nombre del proc al final de la lista de parámetros de tu método precedida por el signo &
#
# bloque es mi ciclo do
def profile descripcionDeBloque, &bloque
  inicioHora = Time.now

  bloque.call

  duracion = Time.now - inicioHora

  puts descripcionDeBloque+':  '+duracion.to_s+' segundos'
end

profile '25000 duplicaciones' do
  numero = 1

  25000.times do
    numero = numero + numero
  end

  puts numero.to_s.length.to_s+' digitos'  #  El numero de digitos en este numero ENORME.
end

profile 'contar hasta un millon' do
  numero = 0

  1000000.times do
    numero = numero + 1
  end
end
