class AddVisitToGames < ActiveRecord::Migration
  def change
    add_column :games, :visit, :integer
  end
end
