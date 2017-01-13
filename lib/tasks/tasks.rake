namespace :tasks do
  desc "Agrega 10000 a los jugadores al final del dia"
  task money: :environment do
    players = Player.all
    players.each do |p|
      p.add_money
    end
  end

  desc "Cambia el estado del clima de ser necesario"
  task weather: :environment do
    game = Game.first
    game.refresh_weather
  end

  desc "Inicia una nueva ronda"
  task round: :environment do
    Game.first.new_round
  end

end
