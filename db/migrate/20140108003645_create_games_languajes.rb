class CreateGamesLanguajes < ActiveRecord::Migration
  def change
  	create_table :games_languajes, :id => false do |t|
  	  t.references :game
  	  t.references :languaje
  	end
  	add_index :games_languajes, :game_id
  	add_index :games_languajes, :languaje_id
  end
end
