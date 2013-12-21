class AddRecommendedToGames < ActiveRecord::Migration
  def change
    add_column :games, :recommended, :bolean, default: false
  end
end
