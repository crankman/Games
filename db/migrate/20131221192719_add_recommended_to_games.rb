class AddRecommendedToGames < ActiveRecord::Migration
  def change
    add_column :games, :recommended, :boolean, default: false
  end
end
