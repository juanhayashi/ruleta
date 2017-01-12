class Result < ApplicationRecord
  belongs_to :player
  belongs_to :round

  def calculate_gain
    #Resultado apuesta
    #TODO: Si color apostado es igual al resultado
      #TODO: Si color es negro o rojo, ganancia es 2x apuesta
      #Si es verde, 15x apuesta
    
    if self.color_bet == self.round.resultado_ruleta #Ganador
      if self.color_bet == "Verde"
        self.gain = self.bet * 15
      else
        self.gain = self.bet * 2
      end
      self.player.gain_money(gain)
    else #Perdedor
      self.gain = 0
    end
    puts self.id
    puts self.player.name
    self.save
  end

end
