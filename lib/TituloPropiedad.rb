module ModeloQytetet

class TituloPropiedad
  
  def initialize(nombre, alquilerBase, hipotecaBase, precioEdificar, factorRevalorizacion)
    
    @nombre = nombre
    @alquilerBase = alquilerBase
    @hipotecaBase = hipotecaBase
    @precioEdificar = precioEdificar
    @factorRevalorizacion = factorRevalorizacion
    @hipotecada = false
    @casilla
    @propietario
    
  end
  
  attr_reader :nombre, :alquilerBase, :hipotecaBase, :precioEdificar, :factorRevalorizacion
  attr_accessor :hipotecada
  attr_writer :casilla, :propietario  
  
=begin
/-----------------------------------------------------------------------------------------------------/
=end  
  
  def cobrarAlquiler(coste)
    
  end
  
  def tengoPropietario()
    
  end
  
  def propietaroEncarcelado()
    
  end
  
=begin
/------------------------------------------------------------------------------------------------------/
=end  
  
  def to_s
    
    "\nNombre = #{@nombre} \n Alquiler Base = #{@alquilerBase} \n Hipoteca Base = #{@hipotecaBase} \n Precio Edificar = #{@precioEdificar} \n" ;

  end

end

end
