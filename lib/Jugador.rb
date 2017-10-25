  module ModeloQytetet

  class Jugador
    
    def initialize(nombre)
      
      @encarcelado = false
      @nombre = nombre
      @saldo = 7500
      @propiedades = Array.new
      @casillaActual 
      @cartaLibertad
      
    end
    
    attr_accessor :cartaActual, :encarcelado
    attr_writer :cartaLiberta
    
=begin
/---------------------------------------------------------------------------------------------/
=end
        
    def tengoPropiedades()
      
    end
    
    def actualizarPosicion(casilla)
      
    end
    
    def comprarTitulo()
      
    end
    
    def devolverCartaLibertad()
      
    end
    
    def irACarcel(casilla)
      
    end
    
    def modificarSaldo(cantidad)
      
    end
    
    def obtenerCapital()
      
    end
    
    def obtenerPropiedadesHipotecadas(hipotecada)
      
    end
    
    def pagarCobrarPorCasaYHotel(cantidad)
      
    end
    
    def pagarLibertad(cantidad)
      
    end
    
    def puedoEdificarCasa(casilla)
      
    end
    
    def puedoEdificarHotel(casilla)
      
    end
    
    def puedoHipotecar(casilla)
      
    end
    
    def puedoPagarHipoteca(casilla)
      
    end
    
    def tengoCartaLibertad()
      
    end
    
    def venderPropiedad(casilla)
      
    end 
    
    def cuantasCasasHotelesTengo()
      
    end
    
    def eliminarDeMisPropiedades(casilla)
      
    end
    
    def esDeMipropiedad(casilla)
      
    end
    
    def tengoSaldo(cantidad)
      
    end
    
    private :cuantasCasasHotelesTengo, :eliminarDeMisPropiedades, :esDeMipropiedad, :tengoSaldo
    
=begin
/----------------------------------------------------------------------------------------------/
=end    
    
  end
end
