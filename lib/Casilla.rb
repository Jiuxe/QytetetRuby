module ModeloQytetet
  

class Casilla
  
  def initialize(numeroCasilla, coste, casilla, titulo)
    
    @numeroCasilla = numeroCasilla
    @coste = coste
    @casilla = casilla
    @titulo = titulo
    @hipotecado = false
    @numCasas = 0
    @numHoteles = 0
    
  end
  
  attr_reader :numeroCasilla, :coste, :casilla, :titulo, :hipotecado
  attr_accessor :numCasas, :numHoteles
  
  def self.titulos_predeterminados(numeroCasilla, casilla)
    new(numeroCasilla, 0, casilla, 0)
  end
  
  def to_s
    "\nNumero Casilla = #{@numeroCasilla} \nCoste = #{@coste} \nNumero Hoteles = #{@numHoteles} \nNumero Casas = #{@numCasas} \nCasilla = #{@casilla}, \nTitulo = #{@titulo}"
  end
  
end


end
