class Game < ApplicationRecord
  has_many :rounds

  def getWeather
    #Add weather API
  end

  def new_round

    color_ruleta = {
      "verde" => 2,
      "negro" => 49,
      "rojo" => 49
    }

    colores = Pickup.new(color_ruleta)

    round = Round.create(:game_id => self.id)
    players = Player.where("money > ?", 0)

    #Iterar en jugadores
    players.each do |p|
      
      #Ver cantidad apuesta
      bet = p.get_bet
      puts bet
      #Color apostado
      color_bet = colores.pick
      puts color_bet
      #Crear resultado
      Result.create(:bet => bet, :color_bet => color_bet, :player_id => p.id, :round_id => round.id)

    end

    #Definir resultado ronda
    round.resultado_ruleta = colores.pick
    round.save

    round.results.each do |r|
      r.calculate_gain
    end

  end
end
