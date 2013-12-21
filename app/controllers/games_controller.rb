class GamesController < ApplicationController
  def index
    @banners = Banner.all.limit(3)
    @recomended = Game.where(recommended: true).limit(8)
    @most_visited = Game.all.order("visit")
  end

  def show
    @game = Game.find(params[:id])
    @similar_games = Game.all
    visits = @game.visit.to_i + 1
    @game.update(visit: visits)
  end
end
