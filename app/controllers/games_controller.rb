class GamesController < ApplicationController
  def index
  	@rounds = Round.where(:game_id => Game.first.id)
  	@results = Result.all
  end
end
