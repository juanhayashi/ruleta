class Game < ApplicationRecord
  has_many :rounds

  def getWeather
    #Add weather API
  end

  def new_round
    round = Round.create(:game_id => Game.first.id)
    round.players = Player.all
    round.players.each do |p|
      #Ver apuesta
      if p.money > 1000
        if Game.first.is_over_32c
          #Ajustar apuesta y ver porcentaje
        else 
          #Apuesta sin ajustar
        end 
      else
        bet = p.money
      end
      
      #Color apostado
      #TODO: Modificar model, random para color
     
      #Definir resultado ronda
      #TODO: Random para color

    end
  end
end
