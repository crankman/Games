class GamesController < ApplicationController

  def index
    @banners = Banner.all.limit(3)
    @recomended = Game.where(recommended: true).limit(8)
    @most_visited = Game.all.order("visit")
  end

  def create
    @game = Game.new resource_params
    if @game.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def show
    @game = Game.find(params[:id])
    @similar_games = Game.all
    visits = @game.visit.to_i + 1
    @game.update(visit: visits)
  end

protected

  def resource_params
    return [] if request.get?
    permitted_params.game
  end
end
