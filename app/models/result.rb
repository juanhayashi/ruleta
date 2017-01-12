class Result < ApplicationRecord
  belongs_to :player
  belongs_to :round

  def calculate_gain
    #Resultado apuesta
    #TODO: Si color apostado es igual al resultado
      #TODO: Si color es negro o rojo, ganancia es 2x apuesta
      #Si es verde, 15x apuesta
  end

end
