module ModeloQytetet
 
  require_relative "Casilla"
  require_relative "TipoCasilla"
  require_relative "TituloPropiedad"
  
class Tablero

  def initialize
    
    @casillas = Array.new
    inicializar

  end
  
  def inicializar
    
    @casillas << Casilla.titulos_predeterminados(0, TipoCasilla::SALIDA)
    @casillas << Casilla.new(1, 150, TipoCasilla::CALLE, TituloPropiedad.new( "Dept. Arquitectura de Computadores", 50, 150, 250, 10))
    @casillas << Casilla.new(2, 150, TipoCasilla::CALLE, TituloPropiedad.new( "Dept. Ciencia de la Computacion e Inteligencia Artificial", 50, 150, 250,10))
    @casillas << Casilla.titulos_predeterminados(3, TipoCasilla::SORPRESA)
    @casillas << Casilla.new(4, 220, TipoCasilla::CALLE, TituloPropiedad.new( "Dept. Arquitectura de Computadores", 55, 220, 300, 10))
    @casillas << Casilla.titulos_predeterminados(5, TipoCasilla::SORPRESA)
    @casillas << Casilla.new(6, 250, TipoCasilla::CALLE, TituloPropiedad.new( "Dept. Teoria de la senial, telematica y comunicaciones", 60, 250, 300, 10))
    @casillas << Casilla.new(7, 300, TipoCasilla::CALLE, TituloPropiedad.new( "Dept. Algebra", 65, 300, 300, 10))
    @casillas << Casilla.new(8, 320, TipoCasilla::CALLE, TituloPropiedad.new( "Dept. Analisis Matematico", 65, 320, 300, 10))
    @casillas << Casilla.titulos_predeterminados(9, TipoCasilla::IMPUESTO)
    @carcel = Casilla.titulos_predeterminados(10, TipoCasilla::CARCEL)
    @casillas << carcel
    @casillas << Casilla.new(11, 400, TipoCasilla::CALLE, TituloPropiedad.new( "Dept. Economia", 70, 400, 350, 20))
    @casillas << Casilla.titulos_predeterminados(12, TipoCasilla::PARKING)
    @casillas << Casilla.new(13, 450, TipoCasilla::CALLE, TituloPropiedad.new( "Dept. Electronica y tecnologia de computadores", 70, 450, 350, 20))
    @casillas << Casilla.new(14, 500, TipoCasilla::CALLE, TituloPropiedad.new( "Dept. Arquitectura de Computadores", 80, 500, 400, 20))
    @casillas << Casilla.titulos_predeterminados(15, TipoCasilla::SORPRESA)
    @casillas << Casilla.new(16, 520, TipoCasilla::CALLE, TituloPropiedad.new( "Dept. Estadistica e investigacion operativa", 80, 520, 400, 20))
    @casillas << Casilla.new(17, 550, TipoCasilla::CALLE, TituloPropiedad.new( "Dept. Fisica aplicada", 80, 550, 400, 20))
    @casillas << Casilla.titulos_predeterminados(18, TipoCasilla::JUEZ)
    @casillas << Casilla.new(19, 550, TipoCasilla::CALLE, TituloPropiedad.new( "ValdiBingo", 100, 600, 500, 20))
    
  end

  attr_reader :carcel
  
=begin
/------------------------------------------------------------------------------------------------------------------------------/
=end

=begin
  Devuelve la casilla que está en la
  posición dada en el argumento. Es precondición que numeroCasilla sea mayor que 0 y
  menor que el número máximo de casillas, por lo que no es necesario comprobarlo dentro
  del método.
=end
  
  def obtenerCasillaNumero(numeroCasilla)
    return @casilla.at(numeroCasilla)
  end
  
=begin
  Devuelve la casilla que está desplazamiento posiciones después de la posición de la casilla dada en el
  argumento. Ten en cuenta que el tablero es circular, de manera que si se sobrepasa la
  última casilla, se debe continuar por la primera.
=end  
  
  def obtenerNuevaCasilla(casilla, desplazamiento)
    
    desplazamiento += casilla.numeroCasilla
    
    return @casilla.at(desplazamiento)
  end
  
=begin
  Devuelve true si numeroCasilla se
  corresponde con el número de casilla de la cárcel
  y false en caso contrario.
=end

  def esCasillaCarcel(numeroCasilla)
    
    return numeroCasilla == @carcel.casilla
    
  end
  
=begin
/------------------------------------------------------------------------------------------------------------------------------/
=end

  
  def to_s
    texto = "Tablero = "
    @casillas.each do |i|
      texto+=i.to_s
    end
    return texto
  end
end

end