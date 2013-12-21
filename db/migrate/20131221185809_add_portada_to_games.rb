class AddPortadaToGames < ActiveRecord::Migration
  def change
    add_column :games, :portada, :string
  end
end
