class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string  :title
      t.float   :size
      t.integer :dvd
      t.text    :description
      t.string  :video_url

      t.timestamps
    end
  end
end
