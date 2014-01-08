class PermittedParams < Struct.new(:params, :user)

  def game
    params.require(:game).permit(*game_atrributes)
  end

  def game_atrributes
    attrs = [:game_id, :genre_id, :languaje_id, :title, :size, :dvd, :description, :video_url, :portada, :captura, :recommended, :visit]
  end

  def genre
    params.require(:genre).permit(*genre_atrributes)
  end

  def genre_atrributes
    attrs = [:genre_id, :name]
  end

  def languaje
    params.require(:languaje).permit(*languaje_atrributes)
  end

  def languaje_atrributes
    attrs = [:languaje_id, :name]
  end
end