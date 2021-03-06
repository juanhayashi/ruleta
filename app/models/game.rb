class Game < ApplicationRecord
  has_many :rounds
  after_initialize :init

  def get_weather
    require 'forecast_io'
    forecast = ForecastIO.forecast(-33.4691, -70.642, params: { units: 'si', exclude: 'currently,minutely,hourly,alerts,flags'}) #Coords Santiago
    flag = false
    
    #Verificar temperatura proximos 7 dias
    for d in forecast.daily.data do
      d.temperatureMax > 32 ? flag = true : nil
    end
    return flag
  end

  def init
    self.is_over_32c = get_weather if self.is_over_32c.nil?
  end

  def refresh_weather
    self.is_over_32c = get_weather
    self.save
  end

  def new_round

    color_ruleta = {
      "Verde" => 2,
      "Negro" => 49,
      "Rojo" => 49
    }

    colores = Pickup.new(color_ruleta)

    round = Round.create(:game_id => self.id)
    players = Player.where("money > ?", 0)

    #Iterar en jugadores
    players.each do |p|
      
      #Cantidad apuesta
      initial_money = p.money
      bet = p.get_bet

      #Color apostado
      color_bet = colores.pick

      #Crear resultado
      Result.create(:bet => bet, :color_bet => color_bet, :player_id => p.id, :round_id => round.id, :initial_money => initial_money)

    end

    #Definir resultado ronda
    round.resultado_ruleta = colores.pick
    round.save

    #Calcula ganancias de cada jugador
    round.results.each do |r|
      r.calculate_gain
    end
  end

end
