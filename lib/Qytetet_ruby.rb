module ModeloQytetet
  
require_relative "Sorpresa"
require_relative "TipoSorpresa"
require_relative "Tablero"
require_relative "Jugador"
require "singleton"

class QytetetRuby
  
  include Singleton
  
  def initialize
    
    @mazo = Array.new
    @tablero
    @MAXJUGADORES = Array.new
    @@MAX_JUGADORES = 4
    @MAX_CARTAS = 10
    @MAX_CASILLAS = 20
    @PRECIO_LIBERTAD = -200
    @SALDO_SALIDA = 1000
    @cartaActual
    @jugadorActual
  end

  attr_reader :cartaActual, :jugadorActual
  
=begin
/---------------------------------------------------------------------------------------------------------/
=end
  
  def aplicarSorpresa
    
  end
  
  def cancelarHipoteca(casilla)
    
  end
  
  def comprarTituloPropiedad()
    
  end
  
  def edificarCasa(casilla)
    
  end
  
  def edificarHotel(casilla)
    
  end

  def hipotecarPropiedad(casilla)
    
  end
  
  def inicializarJuego(nombres)
    
  end
  
  def intentarSalirCarcel(metodo)
    
  end
  
  def jugar()
    
  end
  
  def obtenerRanking()
    
  end
  
  def propiedadesHipotecadasJugador(hipotecadas)
    
  end
  
  def siguienteJugador()
    
  end
  
  def venderPropiedad(casilla)
    
  end
      
  def encarcelarJugador()
    
  end
  
  def inicializarJugadores(nombres)
    
    nombres.each do |i|
      
      @MAXJUGADORES << Jugador.new(i)
    
    end
    
  end
  
  def inicializarTablero()
    
    @tablero = Tablero.new
  end
  
  def salidaJugadores()
    
  end

  private :encarcelarJugador, :inicializarJugadores, :inicializarTablero, :salidaJugadores
  
=begin
/---------------------------------------------------------------------------------------------------------/
=end  
  def inicializarCartasSorpresa
    
    @mazo << Sorpresa.new("Faltas a un Examen Final por quedarte dormido. Debes ir a la carcel", @tablero.carcel.numeroCasilla, TipoSorpresa::IRACASILLA )
    @mazo << Sorpresa.new("Consigues un justificante falso argumentando que has tenido Lagunosis. Sales carcel", 0, TipoSorpresa::SALIRCARCEL)
    @mazo << Sorpresa.new("Encuentras unos apuntes debajo de tu mesa y los vendes por Amazon, Consigues 500", 500, TipoSorpresa::PAGARCOBRAR)
    @mazo << Sorpresa.new("Saliendo de la universidad a las 21:30 te atracan, Paga 500", -500, TipoSorpresa::PAGARCOBRAR)
    @mazo << Sorpresa.new("Estabas en Clase y de repente. BINGO", 19, TipoSorpresa::IRACASILLA)
    @mazo << Sorpresa.new("Terminas el codigo que tanto te ha costado pero se te olvida guardarlo. Vuelve a empezar", 0, TipoSorpresa::IRACASILLA)
    @mazo << Sorpresa.new("Tienes un 4,9 en PDOO. Es hora de ir a suplicar al Departamento", 11 , TipoSorpresa::IRACASILLA)
    @mazo << Sorpresa.new("Se necesita dinero para construir el tercer edificio de la ETSIIT. Paga 100 por cada Casa", -100, TipoSorpresa::PORCASAHOTEL)
    @mazo << Sorpresa.new("Llevas 8 anios en la carrera y aun tienes asignaturas de primero. Pagas 200 a cada Jugador", -200, TipoSorpresa::PORJUGADOR)
    @mazo << Sorpresa.new("Acoges a estudiantes de Erasmus en tu casa. Cobra 100 por cada hotel", 100, TipoSorpresa::PORCASAHOTEL)
    @mazo << Sorpresa.new("Encontra de tu voluntad te eligen delegado de la Clase. Cobra 100 a cada Jugador", 100, TipoSorpresa::PORJUGADOR)
    
  end 
  
  def main
    
    
    inicializarTablero
    inicializarCartasSorpresa
    
    nombres = ["1","2","3","4"]
    
    inicializarJugadores(nombres)
    
  end
end

obj = QytetetRuby.instance
obj.main

puts "FIN"
end