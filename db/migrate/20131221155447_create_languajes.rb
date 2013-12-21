class CreateLanguajes < ActiveRecord::Migration
  def change
    create_table :languajes do |t|
      t.string :name

      t.timestamps
    end
  end
end
