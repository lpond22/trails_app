class CreateTrails < ActiveRecord::Migration
  def change
    create_table :trails do |t|
      t.string :name
      t.integer :length
      t.string :diffculty
      t.string :rating

      t.timestamps null: false
    end
  end
end
