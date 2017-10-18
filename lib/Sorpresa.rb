module ModeloQytetet
  

class Sorpresa
  
  def initialize(texto, valor, tipo)
    
    @texto = texto
    @valor = valor
    @tipo = tipo
    
  end
  
  attr_reader :texto, :valor, :tipo
  
  def to_s()
    "Texto:#{@texto} \n Valor: #{@valor} \n Tipo: #{@tipo}"
  end
  
end

end