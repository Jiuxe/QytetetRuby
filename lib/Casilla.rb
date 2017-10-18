module ModeloQytetet
  

class Casilla
  
  def initialize(numeroCasilla, coste, tipo, titulo)
    
    @numeroCasilla = numeroCasilla
    @coste = coste
    @tipo= tipo
    @titulo = titulo
    @hipotecado = false
    @numCasas = 0
    @numHoteles = 0
    
  end
  
  attr_reader :numeroCasilla, :coste, :tipo, :titulo, :hipotecado
  attr_accessor :numCasas, :numHoteles
  
=begin
/-------------------------------------------------------------------------------------------/
=end  
  
  protect
  
  def asignarPropietario(jugador)
    
  end
  
  def calcularValorHipoteca()
    
  end
  
  def cancelarHipoteca()
    
  end
  
  def cobrarAlquiler()
    
  end
  
  def edificarCasa()
    
  end
  
  def edificarHotel()
    
  end
  
  def estaHipotecada()
    
  end
  
  def estaHipotecada()
    
  end
=begin
/-------------------------------------------------------------------------------------------/
=end   
  
  def self.titulos_predeterminados(numeroCasilla, tipo)
    new(numeroCasilla, 0, tipo, 0)
  end
  
  def to_s
    "\nNumero Casilla = #{@numeroCasilla} \nCoste = #{@coste} \nNumero Hoteles = #{@numHoteles} \nNumero Casas = #{@numCasas} \nCasilla = #{@tipo}, \nTitulo = #{@titulo}"
  end
  
end


end
