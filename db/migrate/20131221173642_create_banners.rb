class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :title
      t.text :caption

      t.timestamps
    end
  end
end
