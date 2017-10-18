module ModeloQytetet
  
require_relative "Sorpresa"
require_relative "TipoSorpresa"
require_relative "Tablero"

class QytetetRuby
  
  def initialize
    
    @mazo = Array.new
    @tablero = Tablero.new
  end
  
  def inicializar_sorpresas
    
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
  
  def metodo1
    
    @mazo2 = Array.new
    
    @mazo.each do |i|
      
      if(i.valor > 0)
        @mazo2 << i
      end
    end
    
    return @mazo2
  end
  
  def metodo2
    
    @mazo3 = Array.new
    
    @mazo.each do |i|
      
      if(i.tipo == TipoSorpresa::IRACASILLA)
        @mazo3 << i
      end
    end
    
    return @mazo3
  end
  
  def metodo3(sorpresa)
    
    @mazo4 = Array.new
    
    @mazo.each do |i|
      
      if(i.tipo == sorpresa)
        @mazo4 << i
      end
    end
    
    return @mazo4
  end
  
  def main
    
    inicializar_sorpresas
    
    puts @mazo
    puts @tablero
    
  end
end

obj = QytetetRuby.new
obj.main
puts "FIN"
end