class Result < ApplicationRecord
  belongs_to :player
  belongs_to :round

  #Calcula las ganancias del jugador en esa ronda
  def calculate_gain    
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
    self.update :gain => self.gain
  end

end
