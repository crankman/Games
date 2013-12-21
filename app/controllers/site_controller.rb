class SiteController < ApplicationController
  def index
    @recomended = Game.all.limit(8)
    @most_visited = Game.all
  end
end
