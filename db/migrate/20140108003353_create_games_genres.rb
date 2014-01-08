class CreateGamesGenres < ActiveRecord::Migration
  def change
    create_table :games_genres, :id => false do |t|
      t.references :game
      t.references :genre
    end
    add_index :games_genres, :game_id
    add_index :games_genres, :genre_id
  end
end
