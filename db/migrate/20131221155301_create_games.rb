class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.integer :genre_id
      t.integer :languaje_id
      t.integer :size
      t.integer :dvd
      t.text :description
      t.string :video_url

      t.timestamps
    end
  end
end
