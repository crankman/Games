class AddCapturaToGames < ActiveRecord::Migration
  def change
    add_column :games, :captura, :string
  end
end
