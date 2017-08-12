# Closerus
# habilidad de tomar un bloque de código (código entre do y end) y encapsularlo dentro de un objeto
# (llamado proc) y guardarlo en una variable o pasarlo a un método,
# y ejecutar el código del bloque donde te guste (más de una vez, si quieres)
# Entonces esto es como un tipo método excepto que no está dentro de un objeto (este bloque es un objeto),
#  y puedes almacenarlo o pasarlo como cualquier otro objeto.  

#A mi variable toast, creo un nuevo objeto llamado Proc.new

toast = Proc.new do
  puts 'Aplausos'
end

toast.call
toast.call
toast.call

# Puedo generar un nuevo Proc y puedo pasarle una parámetros

teGusta = Proc.new do |algoRico|
  puts '¡Me gusta *realmente* el '+algoRico+'!'
end

teGusta.call 'chocolate'
teGusta.call 'ruby'

# por que usar proc y no metodos
# no puedes pasar métodos a otros métodos (pero puedes pasar procs dentro de métodos),
# y métodos no pueden retornar otros métodos (pero ellos pueden retornar procs).
# Esto es simplemente porque procs son objetos; los métodos no son objetos

# Metodos que reciben procedimientos
#

# defino un metodo que recive un proc llamado unProc
def hacerAlgoImportante unProc
  puts '¡Todo el mundo DETENGANSE!  Tengo algo que hacer...'
  # Hago la llamadda del proc
  unProc.call
  puts 'A todos: Está hecho.  Continuen con lo que estaban haciendo.'
end

decirHola = Proc.new do
  puts 'hola'
end

decirAdios = Proc.new do
  puts 'adios'
end

hacerAlgoImportante decirHola
hacerAlgoImportante decirAdios

# Ejemplo de llamar un proc varias veces :)
# 
def puedeHacerse unProc
  if rand(2) == 0
    unProc.call
  end
end

def hacerDosVeces unProc
  unProc.call
  unProc.call
end

parpadeo = Proc.new do
  puts '<parpadeo>'
end

mirada = Proc.new do
  puts '<mirada>'
end

=begin puedeHacerse parpadeo
puedeHacerse mirada
hacerDosVeces parpadeo
hacerDosVeces mirada 
=end

#  un método depende de un proc pasado a este.
#  Nuestro método tomará algun objeto y un proc, y llamará a este proc sobre este objeto.
#  Si el proc retorna falso, terminamos; en caso contrario llamaremos al proc con el objeto.
#  Continuaremos haciendo esto hasta que el proc retorne falso (esto es mejor, o el programa finalizará con error).
#  El método retornará el último valor no falso retornado por el proc.

def hacerHastaQueSeaFalso primeraentrada, unProc
  entrada  = primeraentrada
  salida = primeraentrada

  while salida
    puts entrada
    puts salida
    entrada  = salida
    salida = unProc.call entrada
  end

  entrada
end

construirMatrizDeCuadrados = Proc.new do |array|
  ultimonumero = array.last
  puts 'el ultimo numero es: ' + ultimonumero
  if ultimonumero <= 0
    false
  else
    array.pop                         #  Quitar el último número...
    array.push ultimonumero*ultimonumero  #  ...y reemplazar este con el último número elevado al cuadrado...
    array.push ultimonumero-1           #  ...seguido por un número menor.
  end
end

siempreFalso = Proc.new do |soloIgnorame|
  false
end

puts hacerHastaQueSeaFalso([5], construirMatrizDeCuadrados).inspect
# El método inspect es muy parecido a to_s , salvo que la cadena que devuelve trata de mostrar
# el código ruby para crear el objeto que pasó. Aquí se nos muestra toda la matriz devuelta
# por nuestra primera llamada a haceHastaQueSeaFalso.
puts hacerHastaQueSeaFalso('Estoy escribiendo esto a las 3:00 am; ¡alguien que lo finalice!', siempreFalso)

# Metodos que retornana procedimientos
# La llamada a proc1 tenía que estar dentro de los paréntesis para proc2 con el fin de que se haga en primer lugar.

def compone proc1, proc2
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

cuadrado = Proc.new do |x|
  x * x
end

doble = Proc.new do |x|
  x + x
end

dobleYCuadrado = compone doble, cuadrado
cuadradoYDoble = compone cuadrado, doble

puts dobleYCuadrado.call(5)
puts cuadradoYDoble.call(5)
