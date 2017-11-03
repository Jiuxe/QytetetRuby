module ModeloQytetet
  

class Casilla
  
  def initialize(numeroCasilla, coste, tipo, titulo)
    
    @numeroCasilla = numeroCasilla
    @coste = coste
    @tipo = tipo
    @titulo = titulo
    @hipotecado = false
    @numCasas = 0
    @numHoteles = 0
    
  end
  
  attr_reader :numeroCasilla, :coste, :tipo, :hipotecado
  attr_accessor :numCasas, :numHotele
  
=begin
/-------------------------------------------------------------------------------------------/
=end  
  
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
  
  def hipotecar()
    
  end
  
  def precioTotalComprar()
    
  end
  
  def propietarioEncarcelado()
    
  end
  
  def sePuedeEdificarCasa()
    
  end
  
  def sePuedeEdificarHotel()
    
  end
  
  def soyEdificable()
    
  end
  
  def tengoPropietario()
    
  end
  
  def venderTitulo()
    
  end
  
  def setTituloPropiedad(titulo)
    @titulo = titulo
  end
  
  def asignarTituloPropiedad()
    
  end
  
  private :asignarTituloPropiedad, :setTituloPropiedad
  
=begin
/-------------------------------------------------------------------------------------------/
=end   
  
  def self.titulos_predeterminados(numeroCasilla, tipo)
    new(numeroCasilla, 0, tipo, 0)
  end
  
  def to_s
    @texto
      if @tipo == TipoCasilla::CALLE
        @texto= "Casilla{ numeroCasilla=  #{@numeroCasilla}, tipo= #{@tipo}, coste=  #{@coste} , numHoteles= #{@numHoteles}, numCasas= #{@numCasas},
           #{@titulo} }\n"
      else
        @texto= "Casilla{ numeroCasilla=  #{@numeroCasilla}, tipo=  #{@tipo} }\n"
      end
    return @texto
  end
  
end


end
