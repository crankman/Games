class GamesController < ApplicationController
  def index
    @banners = Banner.all.limit(3)
    @recomended = Game.all.limit(8)
    @most_visited = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end
end
