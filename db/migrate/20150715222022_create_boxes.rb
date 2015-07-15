class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.string :name
      t.string :image
      t.string :description
      t.string :ingredients
      t.money :price
      t.integer :drink_count

      t.timestamps null: false
    end
  end
end
