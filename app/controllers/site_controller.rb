class SiteController < ApplicationController
  def index
    @banners = Banner.all.limit(3)
    @recomended = Game.all.limit(8)
    @most_visited = Game.all
  end
end
