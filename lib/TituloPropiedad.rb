module ModeloQytetet

class TituloPropiedad
  
  def initialize(nombre, alquilerBase, hipotecaBase, precioEdificar, factorRevalorizacion)
    
    @nombre = nombre
    @alquilerBase = alquilerBase
    @hipotecaBase = hipotecaBase
    @precioEdificar = precioEdificar
    @factorRevalorizacion = factorRevalorizacion
    
  end
  
  attr_reader :nombre, :alquilerBase, :hipotecaBase, :precioEdificar, :factorRevalorizacion
  
  def to_s
    
    "\nNombre = #{@nombre} \n Alquiler Base = #{@alquilerBase} \n Hipoteca Base = #{@hipotecaBase} \n Precio Edificar = #{@precioEdificar} \n" ;

  end

end

end
